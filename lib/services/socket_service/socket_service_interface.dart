import 'dart:async';

abstract class SocketServiceInterface {
  // Connection management
  bool get isConnected;
  Future<void> initialize();
  Future<void> connect();
  void disconnect();
  void dispose();

  // Event handling
  void emit(String event, dynamic data);
  Stream<T> on<T>(String event);

  // Connection status
  Stream<bool> get connectionStatus;
}
