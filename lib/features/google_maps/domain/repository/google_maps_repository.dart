import 'package:malawi_ride_share_app/features/google_maps/domain/entities/route_entity.dart';

abstract class GoogleMapsRepository {
  /// Get route directions from origin to destination
  ///
  /// [originLat], [originLng] - Starting point coordinates
  /// [destinationLat], [destinationLng] - Ending point coordinates
  Future<RouteEntity> getRoute({
    required double originLat,
    required double originLng,
    required double destinationLat,
    required double destinationLng,
  });
}
