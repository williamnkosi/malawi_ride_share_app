// lib/services/socket_service.dart
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service_interface.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

abstract class SocketService implements SocketServiceInterface {
  io.Socket? socket;
  final Logger _logger = Logger('SocketService');
  final String? namespace;

  final Map<String, StreamController<dynamic>> _eventControllers = {};

  SocketService({this.namespace});

  @override
  bool get isConnected => socket?.connected ?? false;

  @override
  Future<void> initialize() async {
    try {
      if (socket != null) {
        _logger.info('Socket already initialized');
        return;
      }

      final socketUrl = SocketConstants.socketUrl;
      final fullUrl = namespace != null ? '$socketUrl$namespace' : socketUrl;

      _logger.info('=== SOCKET INITIALIZATION DEBUG ===');

      _logger.info('Generated base URL: $socketUrl');
      _logger.info('Namespace: ${namespace ?? 'default (/)'}');
      _logger.info('Full URL: $fullUrl');
      _logger.info('IP from env: ${dotenv.env['ip_address']}');
      _logger.info('Port from env: ${dotenv.env['SOCKET_PORT']}');
      _logger.info('Timeout from env: ${dotenv.env['SOCKET_TIMEOUT_SECONDS']}');
      _logger.info('=====================================');

      socket = io.io(
          fullUrl,
          io.OptionBuilder()
              .setTransports(['websocket'])
              .disableAutoConnect() // Changed from autoConnect: false
              .setTimeout(
                  int.parse(dotenv.env['SOCKET_TIMEOUT_SECONDS'] ?? '10') *
                      1000)
              .enableForceNew()
              .build());

      _setupEventListeners();

      _logger.info(
          'Socket service initialized for namespace: ${namespace ?? 'default'} at: $fullUrl');
    } catch (e) {
      _logger.severe('Failed to initialize socket: $e');
      rethrow;
    }
  }

  // Connect to socket
  @override
  Future<void> connect() async {
    try {
      if (socket == null) {
        await initialize();
      }

      if (!isConnected) {
        socket!.connect();
        _logger.info('Connecting to socket...');
      } else {
        _logger.info('Socket already connected');
      }
    } catch (e) {
      _logger.severe('Failed to connect socket: $e');
      rethrow;
    }
  }

  Future<void> connectWithAuth() async {
    try {
      if (socket == null) {
        await initialize();
      }

      // Get Firebase token with error handling
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        throw Exception('No authenticated user found');
      }

      // Force token refresh to ensure it's valid
      final idToken = await currentUser.getIdToken(true);
      final firebaseId = currentUser.uid;

      _logger.info('✅ Firebase token obtained and refreshed');
      _logger.info('✅ Firebase id obtained: $firebaseId');
      if (idToken != null) {
        _logger.info('🔍 Token length: ${idToken.length} characters');
      }

      // Set auth data with all required fields
      socket!.auth = {
        'token': idToken,
        'firebaseId': firebaseId,
        'userType': 'driver'
      };

      // Connect only if not already connected
      if (!isConnected) {
        _logger.info(
            '🔌 Connecting socket with auth data: ${socket!.auth.keys.toList()}');
        socket!.connect();

        // Wait for connection
        await _waitForConnection();
        _logger.info('✅ Socket connected successfully');
      } else {
        _logger.info('Socket already connected');
      }
    } catch (e) {
      _logger.severe('Failed to connect socket with auth: $e');
      rethrow;
    }
  }

  Future<void> _waitForConnection(
      {Duration timeout = const Duration(seconds: 10)}) async {
    final completer = Completer<void>();
    Timer? timeoutTimer;

    // Listen for connection
    void onConnect(_) {
      if (!completer.isCompleted) {
        _logger.info('✅ Socket connection established');
        completer.complete();
      }
    }

    // Listen for connection error
    void onConnectError(error) {
      if (!completer.isCompleted) {
        _logger.severe('❌ Socket connection error: $error');
        completer.completeError(Exception('Connection failed: $error'));
      }
    }

    // Set up listeners
    socket!.onConnect(onConnect);
    socket!.onConnectError(onConnectError);

    // Set up timeout
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
      socket!.off('connect', onConnect);
      socket!.off('connect_error', onConnectError);
    }
  }

  // Disconnect from socket
  @override
  void disconnect() {
    try {
      if (socket != null && isConnected) {
        socket!.disconnect();
        _logger.info('Socket disconnected');
      }
    } catch (e) {
      _logger.severe('Failed to disconnect socket: $e');
    }
  }

  // Emit event
  @override
  void emit(String event, dynamic data) {
    try {
      if (socket != null && isConnected) {
        socket!.emit(event, data);
        _logger.fine('Emitted event: $event with data: $data');
      } else {
        _logger.warning('Socket not connected, cannot emit event: $event');
        throw Exception('Socket not connected');
      }
    } catch (e) {
      _logger.severe('Failed to emit event $event: $e');
      rethrow;
    }
  }

  // Emit event with acknowledgment and timeout
  @override
  Future<dynamic> emitWithAck(String event, dynamic data,
      {Duration? timeout}) async {
    try {
      if (socket != null && isConnected) {
        final completer = Completer<dynamic>();
        final timeoutDuration = timeout ?? const Duration(seconds: 10);

        // Emit with acknowledgment callback
        socket!.emitWithAck(event, data, ack: (response) {
          if (!completer.isCompleted) {
            _logger.fine('✅ Event $event acknowledged: $response');
            completer.complete(response);
          }
        });

        // Set up timeout
        final timeoutTimer = Timer(timeoutDuration, () {
          if (!completer.isCompleted) {
            _logger.warning(
                '⏰ Event $event acknowledgment timeout after ${timeoutDuration.inSeconds}s');
            completer.completeError(TimeoutException(
                'Emit acknowledgment timeout for event: $event',
                timeoutDuration));
          }
        });

        try {
          final response = await completer.future;
          timeoutTimer.cancel(); // Cancel timeout if we got response
          return response;
        } catch (e) {
          timeoutTimer.cancel(); // Cancel timeout on any error
          rethrow;
        }
      } else {
        _logger.warning('Socket not connected, cannot emit event: $event');
        throw Exception('Socket not connected');
      }
    } catch (e) {
      _logger.severe('Failed to emit event $event with ack: $e');
      rethrow;
    }
  }

  // Emit event safely with success tracking
  @override
  Future<bool> emitSafe(String event, dynamic data) async {
    try {
      if (socket != null && isConnected) {
        socket!.emit(event, data);
        _logger.fine('📤 Safely emitted event: $event');
        return true;
      } else {
        _logger.warning('Socket not connected, cannot emit event: $event');
        return false;
      }
    } catch (e) {
      _logger.severe('Failed to safely emit event $event: $e');
      return false;
    }
  }

  // Listen to specific event
  @override
  Stream<T> on<T>(String event) {
    if (!_eventControllers.containsKey(event)) {
      _eventControllers[event] = StreamController<T>.broadcast();
      _logger.fine('Created stream controller for event: $event');
    }

    return _eventControllers[event]!.stream.cast<T>();
  }

  // Setup default event listeners
  void _setupEventListeners() {
    if (socket == null) return;

    socket!.onConnect((_) {
      _logger.info('✅ Socket connected successfully');
      _logger.info('🔗 Socket ID: ${socket!.id}');
      _logger.info('🔗 Socket auth: ${socket!.auth}');
    });

    socket!.onDisconnect((reason) {
      _logger.severe('❌ Socket disconnected. Reason: $reason');
      _logger.severe('🔗 Socket ID was: ${socket!.id}');

      // Log specific disconnect reasons
      if (reason == 'io server disconnect') {
        _logger.severe('🚨 Server forcibly disconnected this client');
        _logger
            .severe('💡 Check: Auth token, server logs, namespace permissions');
      } else if (reason == 'io client disconnect') {
        _logger.info('📱 Client initiated disconnect');
      } else if (reason == 'ping timeout') {
        _logger.warning('⏰ Connection lost due to ping timeout');
      } else if (reason == 'transport close') {
        _logger.warning('🔌 Transport connection closed');
      }
    });

    socket!.onError((error) {
      _logger.severe('💥 Socket error: $error');
    });

    socket!.onConnectError((error) {
      _logger.severe('🚫 Socket connection error: $error');
    });

    socket!.onReconnect((attemptNumber) {
      _logger.info('🔄 Socket reconnected after $attemptNumber attempts');
    });

    socket!.onReconnectError((error) {
      _logger.severe('🔄❌ Socket reconnection error: $error');
    });

    // Setup custom event listeners
    setupCustomEventListeners();
  }

  // Setup app-specific event listeners

  // Broadcast event to stream controllers
  void broadcastEvent(String event, dynamic data) {
    if (_eventControllers.containsKey(event)) {
      _eventControllers[event]!.add(data);
    }
  }

  // Get connection status stream
  @override
  Stream<bool> get connectionStatus {
    final controller = StreamController<bool>.broadcast();

    socket?.onConnect((_) => controller.add(true));
    socket?.onDisconnect((_) => controller.add(false));

    return controller.stream;
  }

  // Cleanup
  @override
  void dispose() {
    try {
      disconnect();

      // Close all stream controllers
      for (final controller in _eventControllers.values) {
        if (!controller.isClosed) {
          controller.close();
        }
      }
      _eventControllers.clear();

      socket?.dispose();
      socket = null;

      _logger.info('Socket service disposed');
    } catch (e) {
      _logger.severe('Error disposing socket service: $e');
    }
  }

  void setupCustomEventListeners();
}
