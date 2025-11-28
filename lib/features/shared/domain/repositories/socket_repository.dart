import 'dart:async';

abstract class SocketRepository {
// Connection lifecycle
  Future<void> connect();
  void disconnect();
  bool get isConnected;

  // Core communication - namespace-aware
  void emit(String event, [dynamic data, String? namespace]);
  Future<T?> request<T>(String event, [dynamic data, String? namespace]);
  Stream<T> listen<T>(String event, [String? namespace]);

  // Connection monitoring
  Stream<bool> get connectionStatus;

  // Cleanup
  void dispose();
}
