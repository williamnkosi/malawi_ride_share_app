import 'package:geolocator/geolocator.dart';

abstract class LocationRepository {
  Future<Position?> getCurrentLocation();
  Stream<Position> getLocationStream({
    required LocationAccuracy locationAccuracy,
  });
  double calculateDistance(Position from, Position to);
}
