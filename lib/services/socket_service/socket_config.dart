import 'package:flutter_dotenv/flutter_dotenv.dart';

export 'socket_namespaces.dart';
export 'events/location_events.dart';

/// Socket.IO connection configuration
class SocketConfig {
  // Base WebSocket URL from environment
  static String get socketUrl {
    final socketUrlEnv = dotenv.env['SOCKET_URL'];
    if (socketUrlEnv == null || socketUrlEnv.isEmpty) {
      throw Exception(
        'SOCKET_URL environment variable is not set. Please configure SOCKET_URL in your .env file.',
      );
    }
    return socketUrlEnv;
  }

  // Connection timeout from environment
  static Duration get connectionTimeout => Duration(
    seconds: int.parse(dotenv.env['SOCKET_TIMEOUT_SECONDS'] ?? '10'),
  );

  // Reconnection settings
  static Duration get reconnectDelay =>
      Duration(seconds: int.parse(dotenv.env['SOCKET_RECONNECT_DELAY'] ?? '5'));

  static int get maxReconnectAttempts =>
      int.parse(dotenv.env['SOCKET_MAX_RECONNECT_ATTEMPTS'] ?? '5');

  static String getNamespaceUrl(String namespace) {
    return '$socketUrl$namespace';
  }
}
