// lib/services/api_service/api_service_interface.dart
abstract class ApiServiceInterface {
  Future<void> initialize();
  Future<Map<String, dynamic>> post(String endpoint,
      {Map<String, dynamic>? body});
  Future<Map<String, dynamic>> get(String endpoint);
  Future<Map<String, dynamic>> put(String endpoint,
      {Map<String, dynamic>? body});
  Future<Map<String, dynamic>> delete(String endpoint);
  void dispose();
}
