import 'package:malawi_ride_share_app/features/shared/google_maps/data/models/route_model.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';

abstract class GoogleMapsRemoteDataSource {
  Future<RouteModel> getRoute({
    required double originLat,
    required double originLng,
    required double destinationLat,
    required double destinationLng,
  });
}

class GoogleMapsRemoteDataSourceImpl implements GoogleMapsRemoteDataSource {
  final ApiService apiService;
  static const String _baseUrl = 'https://maps.googleapis.com/maps/api';

  GoogleMapsRemoteDataSourceImpl({required this.apiService});

  @override
  Future<RouteModel> getRoute({
    required double originLat,
    required double originLng,
    required double destinationLat,
    required double destinationLng,
  }) async {
    final response = await apiService.get(
      '$_baseUrl/directions/json',
      queryParameters: {
        'origin': '$originLat,$originLng',
        'destination': '$destinationLat,$destinationLng',
        'mode': 'driving',
        'key': ApiConstants.googleMapsApiKey,
      },
    );

    if (response['status'] != 'OK') {
      throw Exception(
        'Google Maps API error: ${response['status']} - ${response['error_message'] ?? 'Unknown error'}',
      );
    }

    return RouteModel.fromJson(response);
  }
}
