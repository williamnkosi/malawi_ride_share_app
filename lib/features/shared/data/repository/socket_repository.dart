// lib/features/shared/data/repository/socket_repository.dart
import 'dart:async';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/core/models/socket_auth.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_config.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketRepositoryImpl implements SocketRepository {
  final Logger _logger = Logger('SocketRepositoryImpl');
  final Map<String, io.Socket> _namespaceSockets = {};

  final StreamController<bool> _connectionStatusController =
      StreamController<bool>.broadcast();

  SocketRepositoryImpl();

  @override
  Stream<bool> get connectionStatus => _connectionStatusController.stream;

  @override
  bool get isConnected =>
      _namespaceSockets.values.any((socket) => socket.connected);

  @override
  Future<bool> connect({
    required List<SocketNamespace> namespaces,
    required SocketAuth auth,
  }) async {
    try {
      _logger.info('Connecting to namespaces: $namespaces');

      for (var namespace in namespaces) {
        await _connectToNamespace(namespace.path, auth);
      }

      _logger.info('✅ Connected to ${namespaces.length} namespace(s)');
      _connectionStatusController.add(true);
      return true;
    } catch (e) {
      _logger.severe('Failed to connect to namespaces: $e');
      rethrow;
    }
  }

  Future<void> _connectToNamespace(String namespace, SocketAuth auth) async {
    if (_namespaceSockets.containsKey(namespace)) {
      _logger.info('Already connected to namespace: $namespace');
      return;
    }

    try {
      final socketUrl = SocketConfig.socketUrl;
      final namespaceUrl = '$socketUrl$namespace';

      _logger.info('Connecting to namespace: $namespace');

      final socket = io.io(
        namespaceUrl,
        io.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .setTimeout(SocketConfig.connectionTimeout.inMilliseconds)
            .setAuth({
              'token': auth.token,
              'userType': auth.userType.name.toLowerCase(),
            })
            .build(),
      );

      // Setup listeners
      socket.onConnect((_) {
        _logger.info('✅ Connected to namespace: $namespace');
      });

      socket.onDisconnect((reason) {
        _logger.warning('❌ Disconnected from namespace $namespace: $reason');
        if (_namespaceSockets.values.every((s) => !s.connected)) {
          _connectionStatusController.add(false);
        }
      });

      socket.onConnectError((error) {
        _logger.severe('🚫 Connection error on namespace $namespace: $error');
      });

      socket.connect();
      await _waitForConnection(socket, namespace);

      _namespaceSockets[namespace] = socket;
    } catch (e) {
      _logger.severe('Failed to connect to namespace $namespace: $e');
      rethrow;
    }
  }

  Future<void> _waitForConnection(
    io.Socket socket,
    String namespace, {
    Duration timeout = const Duration(seconds: 10),
  }) async {
    final completer = Completer<void>();
    late Timer timeoutTimer;

    void onConnect(_) {
      if (!completer.isCompleted) {
        completer.complete();
      }
    }

    void onConnectError(error) {
      if (!completer.isCompleted) {
        completer.completeError(Exception('Connection failed: $error'));
      }
    }

    socket.onConnect(onConnect);
    socket.onConnectError(onConnectError);

    timeoutTimer = Timer(timeout, () {
      if (!completer.isCompleted) {
        completer.completeError(
          TimeoutException('Connection timeout for $namespace', timeout),
        );
      }
    });

    try {
      await completer.future;
    } finally {
      timeoutTimer.cancel();
      socket.off('connect', onConnect);
      socket.off('connect_error', onConnectError);
    }
  }

  @override
  void disconnect() {
    try {
      for (var entry in _namespaceSockets.entries) {
        if (entry.value.connected) {
          entry.value.disconnect();
          _logger.info('Disconnected from namespace: ${entry.key}');
        }
      }
      _connectionStatusController.add(false);
    } catch (e) {
      _logger.severe('Error disconnecting sockets: $e');
    }
  }

  @override
  void dispose() {
    try {
      disconnect();
      if (!_connectionStatusController.isClosed) {
        _connectionStatusController.close();
      }
      for (var socket in _namespaceSockets.values) {
        socket.dispose();
      }
      _namespaceSockets.clear();
      _logger.info('SocketRepository disposed');
    } catch (e) {
      _logger.severe('Error disposing SocketRepository: $e');
    }
  }

  @override
  void emit(String event, String namespace, [dynamic data]) {
    try {
      final socket = _namespaceSockets[namespace];
      if (socket?.connected != true) {
        _logger.warning(
          'Socket not connected to $namespace, cannot emit: $event',
        );
        throw Exception('Socket not connected to namespace: $namespace');
      }
      socket!.emit(event, data);
      _logger.fine('📤 Emitted: $event to $namespace');
    } catch (e) {
      _logger.severe('Failed to emit $event to $namespace: $e');
      rethrow;
    }
  }

  @override
  Stream<T> listen<T>(String event, String namespace) {
    final controller = StreamController<T>.broadcast();
    final socket = _namespaceSockets[namespace];

    if (socket == null) {
      _logger.severe('No socket connection for namespace: $namespace');
      throw Exception('Not connected to namespace: $namespace');
    }

    socket.on(event, (data) {
      controller.add(data as T);
    });

    _logger.fine('📡 Listening to: $event on $namespace');
    return controller.stream;
  }

  @override
  Future<T?> request<T>(String event, String namespace, [dynamic data]) async {
    try {
      final socket = _namespaceSockets[namespace];
      if (socket?.connected != true) {
        throw Exception('Socket not connected to namespace: $namespace');
      }

      final completer = Completer<T?>();
      final timeout = Timer(const Duration(seconds: 10), () {
        if (!completer.isCompleted) {
          completer.completeError(TimeoutException('Request timeout'));
        }
      });

      socket!.emitWithAck(
        event,
        data,
        ack: (response) {
          if (!completer.isCompleted) {
            timeout.cancel();
            completer.complete(response as T?);
          }
        },
      );

      return await completer.future;
    } catch (e) {
      _logger.severe('Request failed for $event on $namespace: $e');
      rethrow;
    }
  }
}
