import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:logging/logging.dart';

class LocationRepository {
  final logger = Logger('LocationRepository');

  /// Check if location permission is granted
  Future<bool> isLocationPermissionGranted() async {
    try {
      logger.info('🗺️ Checking location permission status...');

      // Check if location service is enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        logger.warning('📍 Location service is not enabled');
        return false;
      }

      // Check location permission
      LocationPermission permission = await Geolocator.checkPermission();
      logger.info('📱 Location permission status: $permission');

      return permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse;
    } catch (e) {
      logger.severe('❌ Error checking location permission: $e');
      return false;
    }
  }

  /// Request location permission
  Future<bool> requestLocationPermission() async {
    try {
      logger.info('🔐 Requesting location permission...');

      // Check if location service is enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        logger.warning('❌ Location service is not enabled');
        return false;
      }

      // Check current permission
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        logger.info('🔐 Requesting location permission from user...');
        permission = await Geolocator.requestPermission();
      }

      final isGranted = permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse;

      logger.info('✅ Location permission granted: $isGranted');
      return isGranted;
    } catch (e) {
      logger.severe('❌ Error requesting location permission: $e');
      return false;
    }
  }

  /// Get current location
  Future<Position?> getCurrentLocation() async {
    try {
      logger.info('📍 Getting current location...');

      final isPermissionGranted = await isLocationPermissionGranted();
      if (!isPermissionGranted) {
        logger.warning('❌ Location permission not granted');
        return null;
      }

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

  /// Open app settings for manual permission grant
  Future<bool> openLocationSettings() async {
    try {
      logger.info('⚙️ Opening location settings...');

      // First try to request permission normally
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.deniedForever) {
        // If permanently denied, open app settings
        return await permission_handler.openAppSettings();
      } else {
        // Try to request permission
        permission = await Geolocator.requestPermission();
        return permission == LocationPermission.always ||
            permission == LocationPermission.whileInUse;
      }
    } catch (e) {
      logger.severe('❌ Error opening location settings: $e');
      return false;
    }
  }

  /// Check if location service is enabled
  Future<bool> isLocationServiceEnabled() async {
    try {
      return await Geolocator.isLocationServiceEnabled();
    } catch (e) {
      logger.severe('❌ Error checking location service: $e');
      return false;
    }
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
