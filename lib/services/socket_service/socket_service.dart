// lib/services/socket_service.dart
import 'dart:async';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service_interface.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketService implements SocketServiceInterface {
  io.Socket? _socket;
  final Logger _logger = Logger('SocketService');

  final Map<String, StreamController<dynamic>> _eventControllers = {};

  @override
  bool get isConnected => _socket?.connected ?? false;

  @override
  Future<void> initialize() async {
    try {
      if (_socket != null) {
        _logger.info('Socket already initialized');
        return;
      }

      final baseUrl =
          'http://${dotenv.env['IP_ADDRESS']}:${dotenv.env['PORT'] ?? '3000'}';

      _socket = io.io(baseUrl, <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
        'timeout':
            int.parse(dotenv.env['SOCKET_TIMEOUT_SECONDS'] ?? '10') * 1000,
        'forceNew': true,
      });

      _setupEventListeners();

      _logger.info('Socket service initialized with URL: $baseUrl');
    } catch (e) {
      _logger.severe('Failed to initialize socket: $e');
      rethrow;
    }
  }

  // Connect to socket
  @override
  Future<void> connect() async {
    try {
      if (_socket == null) {
        await initialize();
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
