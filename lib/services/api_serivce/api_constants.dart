// lib/core/constants/api_constants.dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  // Base URL from environment
  static String get baseUrl {
    final baseUrlEnv = dotenv.env['BASE_URL'];
    if (baseUrlEnv == null || baseUrlEnv.isEmpty) {
      throw Exception(
        'BASE_URL environment variable is not set. Please configure BASE_URL in your .env file.',
      );
    }
    return baseUrlEnv;
  }

  // Google Maps API Key
  static String get googleMapsApiKey => dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';

  // Timeouts from environment
  static Duration get apiTimeout =>
      Duration(seconds: int.parse(dotenv.env['API_TIMEOUT_SECONDS'] ?? '30'));

  static const String tripRequest = "/trip/request";

  static const String createUser = "/users";

  static const String registerDevice = "/notifications/register-device";
}
