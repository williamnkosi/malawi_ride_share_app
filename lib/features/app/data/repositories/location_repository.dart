import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:logging/logging.dart';

class LocationRepository {
  final logger = Logger('LocationRepository');

  /// Get current location
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

  /// Get location stream for continuous tracking
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

  /// Calculate distance between two positions
  double calculateDistance(Position from, Position to) {
    return Geolocator.distanceBetween(
      from.latitude,
      from.longitude,
      to.latitude,
      to.longitude,
    );
  }

  /// Calculate bearing between two positions
  double calculateBearing(Position from, Position to) {
    return Geolocator.bearingBetween(
      from.latitude,
      from.longitude,
      to.latitude,
      to.longitude,
    );
  }

  /// Get location accuracy description
  String getLocationAccuracyDescription(Position position) {
    final accuracy = position.accuracy;
    if (accuracy <= 5) return 'Excellent';
    if (accuracy <= 10) return 'Good';
    if (accuracy <= 20) return 'Fair';
    return 'Poor';
  }
}
