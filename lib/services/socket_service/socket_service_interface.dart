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
  Future<bool> emitSafe(String event, dynamic data);
  Future<dynamic> emitWithAck(String event, dynamic data, {Duration? timeout});
  Stream<T> on<T>(String event);

  // Connection status
  Stream<bool> get connectionStatus;
}
