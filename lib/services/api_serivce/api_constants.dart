// lib/core/constants/api_constants.dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  // Base URL from environment
  static String get baseUrl {
    final ip = dotenv.env['IP_ADDRESS'];
    final port = dotenv.env['PORT'];
    print('DEBUG: IP_ADDRESS=$ip, PORT=$port');
    return 'http://${ip ?? 'localhost'}:${port ?? '3000'}';
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
