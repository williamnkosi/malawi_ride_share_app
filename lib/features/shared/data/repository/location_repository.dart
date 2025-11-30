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
        desiredAccuracy: LocationAccuracy.bestForNavigation,
        timeLimit: const Duration(
          seconds: 60,
        ), // Increased timeout for simulator
      );

      logger.info(
        '✅ Current location: ${position.latitude}, ${position.longitude}',
      );
      return position;
    } catch (e) {
      logger.severe('❌ Error getting current location: $e');
      return null;
    }
  }

  @override
  Stream<Position> getLocationStream({
    required LocationAccuracy locationAccuracy,
  }) {
    logger.info('👂 Starting location stream...');

    return Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: locationAccuracy,
        distanceFilter: 0, // Update on every change (good for testing)
        timeLimit: const Duration(seconds: 60),
      ),
    ).handleError((error) {
      logger.severe('❌ Location stream error: $error');
    });
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
