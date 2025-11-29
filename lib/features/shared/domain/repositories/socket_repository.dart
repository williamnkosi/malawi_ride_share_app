import 'dart:async';

import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';

abstract class SocketRepository {
  // Connection lifecycle - specify namespaces upfront
  Future<bool> connect({required List<SocketNamespace> namespaces});
  void disconnect();
  bool get isConnected;

  // Core communication - namespace required
  void emit(String event, String namespace, [dynamic data]);
  Future<T?> request<T>(String event, String namespace, [dynamic data]);
  Stream<T> listen<T>(String event, String namespace);

  // Connection monitoring
  Stream<bool> get connectionStatus;

  // Cleanup
  void dispose();
}
