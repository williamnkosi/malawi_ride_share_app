// lib/services/socket_service.dart
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service_interface.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketService implements SocketServiceInterface {
  io.Socket? _socket;
  final Logger _logger = Logger('SocketService');

  final Map<String, StreamController<dynamic>> _eventControllers = {};

  @override
  bool get isConnected => _socket?.connected ?? false;

  @override
  Future<void> initialize({String? namespace}) async {
    try {
      if (_socket != null) {
        _logger.info('Socket already initialized');
        return;
      }

      final targetNamespace =
          namespace ?? SocketConstants.locationTrackingNamespace;
      final nameSpaceUrl = SocketConstants.getNamespaceUrl(targetNamespace);
      _logger.info('Initializing socket with base URL: $nameSpaceUrl');
      _socket = io.io(
          nameSpaceUrl,
          io.OptionBuilder()
              .setTransports(['websocket'])
              .disableAutoConnect() // Changed from autoConnect: false
              .setTimeout(
                  int.parse(dotenv.env['SOCKET_TIMEOUT_SECONDS'] ?? '10') *
                      1000)
              .enableForceNew()
              .build());

      _setupEventListeners();

      _socket!.connect();
      _logger
          .info('Socket service initialized and connected to: $nameSpaceUrl');
    } catch (e) {
      _logger.severe('Failed to initialize socket: $e');
      rethrow;
    }
  }

  // Connect to socket
  @override
  Future<void> connect({String? namespace}) async {
    try {
      if (_socket == null) {
        await initialize(namespace: namespace);
      }

      if (!isConnected) {
        _socket!.connect();
        _logger.info('Connecting to socket...');
      } else {
        _logger.info('Socket already connected');
      }
    } catch (e) {
      _logger.severe('Failed to connect socket: $e');
      rethrow;
    }
  }

  Future<void> connectWithAuth({
    required String firebaseId,
    LocationDto? location,
    String? namespace,
  }) async {
    try {
      if (_socket == null) {
        await initialize(namespace: namespace);
      }

      // Set auth data before connecting
      _socket!.auth = {
        'token': await FirebaseAuth.instance.currentUser?.getIdToken(),
        'initialPosition': location?.toJson(),
        'status': 'online'
      };

      if (!isConnected) {
        this._logger.info('Connecting socket with auth: ${_socket!.auth}');
        _socket!.connect();
        _logger.info('Connecting to socket with firebaseId: $firebaseId');

        // Wait for connection to be established
        await _waitForConnection();
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
    _socket!.onConnect(onConnect);
    _socket!.onConnectError(onConnectError);

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
      _socket!.off('connect', onConnect);
      _socket!.off('connect_error', onConnectError);
    }
  }

  // Disconnect from socket
  @override
  void disconnect() {
    try {
      if (_socket != null && isConnected) {
        _socket!.disconnect();
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
      if (_socket != null && isConnected) {
        _socket!.emit(event, data);
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
      if (_socket != null && isConnected) {
        final completer = Completer<dynamic>();
        final timeoutDuration = timeout ?? const Duration(seconds: 10);

        // Emit with acknowledgment callback
        _socket!.emitWithAck(event, data, ack: (response) {
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
  Future<bool> emitSafe(String event, dynamic data) async {
    try {
      if (_socket != null && isConnected) {
        _socket!.emit(event, data);
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
    if (_socket == null) return;

    _socket!.onConnect((_) {
      _logger.info('✅ Socket connected successfully');
    });

    _socket!.onDisconnect((reason) {
      _logger.info('❌ Socket disconnected. Reason: $reason');
    });

    _socket!.onError((error) {
      _logger.severe('💥 Socket error: $error');
    });

    _socket!.onConnectError((error) {
      _logger.severe('🚫 Socket connection error: $error');
    });

    _socket!.onReconnect((attemptNumber) {
      _logger.info('🔄 Socket reconnected after $attemptNumber attempts');
    });

    _socket!.onReconnectError((error) {
      _logger.severe('🔄❌ Socket reconnection error: $error');
    });

    // Setup custom event listeners
    _setupCustomEventListeners();
  }

  // Setup app-specific event listeners
  void _setupCustomEventListeners() {
    if (_socket == null) return;

    // Trip request events
    _socket!.on('trip_request', (data) {
      _logger.info('Received trip request: $data');
      _broadcastEvent('trip_request', data);
    });

    _socket!.on('trip_accepted', (data) {
      _logger.info('Trip accepted: $data');
      _broadcastEvent('trip_accepted', data);
    });

    _socket!.on('trip_cancelled', (data) {
      _logger.info('Trip cancelled: $data');
      _broadcastEvent('trip_cancelled', data);
    });

    _socket!.on('trip_rejected', (data) {
      _logger.info('Trip rejected: $data');
      _broadcastEvent('trip_rejected', data);
    });

    _socket!.on('driver_location', (data) {
      _logger.fine('Driver location update: $data');
      _broadcastEvent('driver_location', data);
    });

    _socket!.on('rider_location', (data) {
      _logger.fine('Rider location update: $data');
      _broadcastEvent('rider_location', data);
    });
  }

  // Broadcast event to stream controllers
  void _broadcastEvent(String event, dynamic data) {
    if (_eventControllers.containsKey(event)) {
      _eventControllers[event]!.add(data);
    }
  }

  // Get connection status stream
  @override
  Stream<bool> get connectionStatus {
    final controller = StreamController<bool>.broadcast();

    _socket?.onConnect((_) => controller.add(true));
    _socket?.onDisconnect((_) => controller.add(false));

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

      _socket?.dispose();
      _socket = null;

      _logger.info('Socket service disposed');
    } catch (e) {
      _logger.severe('Error disposing socket service: $e');
    }
  }
}
