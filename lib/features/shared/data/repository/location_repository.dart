import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final logger = Logger('LocationRepository');

  @override
  Future<Position?> getCurrentLocation() async {
    try {
      logger.info('📍 Getting current location...');

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      logger.info(
          '✅ Current location: ${position.latitude}, ${position.longitude}');
      return position;
    } catch (e) {
      logger.severe('❌ Error getting current location: $e');
      return null;
    }
  }

  @override
  Stream<Position> getLocationStream() {
    logger.info('👂 Starting location stream...');

    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10, // Update when moved 10 meters
        timeLimit: Duration(seconds: 30), // Timeout after 30 seconds
      ),
    );
  }

  @override
  double calculateDistance(Position from, Position to) {
    return Geolocator.distanceBetween(
      from.latitude,
      from.longitude,
      to.latitude,
      to.longitude,
    );
  }
}
