import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';

abstract class LocationRepository {
  Future<LocationEntity> getCurrentLocation();
  Stream<LocationEntity> getLocationStream({
    required LocationAccuracy locationAccuracy,
  });
  double calculateDistance(Position from, Position to);
}
