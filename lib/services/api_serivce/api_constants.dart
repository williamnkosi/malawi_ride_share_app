// lib/core/constants/api_constants.dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  // Base URL from environment
  static String get baseUrl =>
      'http://${dotenv.env['ip_address']}:${dotenv.env['PORT'] ?? '3000'}';

  // Google Maps API Key
  static String get googleMapsApiKey => dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';

  // Timeouts from environment
  static Duration get apiTimeout => Duration(
        seconds: int.parse(dotenv.env['API_TIMEOUT_SECONDS'] ?? '30'),
      );

  static const String tripRequest = "/trip/request";

  static const String createUser = "/users";

  static const String registerDevice = "/notifications/devices";
}
