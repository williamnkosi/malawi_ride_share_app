import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:malawi_ride_share_app/features/google_maps/data/models/route_model.dart';

abstract class GoogleMapsRemoteDataSource {
  Future<RouteModel> getRoute({
    required double originLat,
    required double originLng,
    required double destinationLat,
    required double destinationLng,
  });
}

class GoogleMapsRemoteDataSourceImpl implements GoogleMapsRemoteDataSource {
  final Dio dio;
  final String _apiKey = dotenv.env['google_maps_apikey'] ?? '';
  static const String _baseUrl = 'https://maps.googleapis.com/maps/api';

  GoogleMapsRemoteDataSourceImpl({required this.dio});

  @override
  Future<RouteModel> getRoute({
    required double originLat,
    required double originLng,
    required double destinationLat,
    required double destinationLng,
  }) async {
    final response = await dio.get(
      '$_baseUrl/directions/json',
      queryParameters: {
        'origin': '$originLat,$originLng',
        'destination': '$destinationLat,$destinationLng',
        'mode': 'driving',
        'key': _apiKey,
      },
    );

    if (response.data['status'] != 'OK') {
      throw Exception(
        'Google Maps API error: ${response.data['status']} - ${response.data['error_message'] ?? 'Unknown error'}',
      );
    }

    return RouteModel.fromJson(response.data);
  }
}
