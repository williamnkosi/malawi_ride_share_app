// lib/features/shared/data/repository/socket_repository.dart
import 'dart:async';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketRepositoryImpl implements SocketRepository {
  final Logger _logger = Logger('SocketRepositoryImpl');
  io.Socket? _socket;

  final StreamController<bool> _connectionStatusController =
      StreamController<bool>.broadcast();

  SocketRepositoryImpl();

  @override
  Stream<bool> get connectionStatus => _connectionStatusController.stream;

  @override
  bool get isConnected => _socket?.connected ?? false;

  @override
  Future<bool> connect() async {
    try {
      if (_socket?.connected == true) {
        _logger.info('Socket already connected');
        return false;
      }

      final socketUrl = SocketConstants.socketUrl;
      _logger.info('Connecting to: $socketUrl');

      _socket = io.io(
        socketUrl,
        io.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .setTimeout(SocketConstants.connectionTimeout.inMilliseconds)
            .build(),
      );

      _setupEventListeners();
      _socket!.connect();

      await _waitForConnection();
      _logger.info('✅ Socket connected successfully');
      return true;
    } catch (e) {
      _logger.severe('Failed to connect socket: $e');
      rethrow;
    }
  }

  void _setupEventListeners() {
    _socket?.onConnect((_) {
      _logger.info('✅ Socket connected');
      _connectionStatusController.add(true);
    });

    _socket?.onDisconnect((reason) {
      _logger.warning('❌ Socket disconnected: $reason');
      _connectionStatusController.add(false);
    });

    _socket?.onConnectError((error) {
      _logger.severe('🚫 Connection error: $error');
    });
  }

  Future<void> _waitForConnection(
      {Duration timeout = const Duration(seconds: 10)}) async {
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

    _socket!.onConnect(onConnect);
    _socket!.onConnectError(onConnectError);

    timeoutTimer = Timer(timeout, () {
      if (!completer.isCompleted) {
        completer
            .completeError(TimeoutException('Connection timeout', timeout));
      }
    });

    try {
      await completer.future;
    } finally {
      timeoutTimer.cancel();
      _socket!.off('connect', onConnect);
      _socket!.off('connect_error', onConnectError);
    }
  }

  @override
  void disconnect() {
    try {
      if (_socket?.connected == true) {
        _socket!.disconnect();
        _logger.info('Socket disconnected');
      }
      _connectionStatusController.add(false);
    } catch (e) {
      _logger.severe('Error disconnecting socket: $e');
    }
  }

  @override
  void dispose() {
    try {
      disconnect();
      if (!_connectionStatusController.isClosed) {
        _connectionStatusController.close();
      }
      _socket?.dispose();
      _socket = null;
      _logger.info('SocketRepository disposed');
    } catch (e) {
      _logger.severe('Error disposing SocketRepository: $e');
    }
  }

  @override
  void emit(String event, [dynamic data, String? namespace]) {
    try {
      if (_socket?.connected != true) {
        _logger.warning('Socket not connected, cannot emit: $event');
        throw Exception('Socket not connected');
      }
      _socket!.emit(event, data);
      _logger.fine('📤 Emitted: $event');
    } catch (e) {
      _logger.severe('Failed to emit $event: $e');
      rethrow;
    }
  }

  @override
  Stream<T> listen<T>(String event, [String? namespace]) {
    final controller = StreamController<T>.broadcast();
    _socket?.on(event, (data) {
      controller.add(data as T);
    });
    return controller.stream;
  }

  @override
  Future<T?> request<T>(String event, [dynamic data, String? namespace]) async {
    try {
      if (_socket?.connected != true) {
        throw Exception('Socket not connected');
      }

      final completer = Completer<T?>();
      final timeout = Timer(const Duration(seconds: 10), () {
        if (!completer.isCompleted) {
          completer.completeError(TimeoutException('Request timeout'));
        }
      });

      _socket!.emitWithAck(event, data, ack: (response) {
        if (!completer.isCompleted) {
          timeout.cancel();
          completer.complete(response as T?);
        }
      });

      return await completer.future;
    } catch (e) {
      _logger.severe('Request failed for $event: $e');
      rethrow;
    }
  }
}
