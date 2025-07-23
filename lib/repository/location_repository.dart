import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:logging/logging.dart';

class LocationRepository {
  final Location _location = Location();
  final logger = Logger('LocationRepository');

  /// Check if location permission is granted
  Future<bool> isLocationPermissionGranted() async {
    try {
      logger.info('🗺️ Checking location permission status...');

      // Check using location package
      bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        logger.warning('📍 Location service is not enabled');
        return false;
      }

      PermissionStatus permissionGranted = await _location.hasPermission();
      logger.info('📱 Location permission status: $permissionGranted');

      return permissionGranted == PermissionStatus.granted;
    } catch (e) {
      logger.severe('❌ Error checking location permission: $e');
      return false;
    }
  }

  /// Request location permission
  Future<bool> requestLocationPermission() async {
    try {
      logger.info('🔐 Requesting location permission...');

      // First check if service is enabled
      bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        logger.info('📍 Requesting location service...');
        serviceEnabled = await _location.requestService();
        if (!serviceEnabled) {
          logger.warning('❌ Location service denied by user');
          return false;
        }
      }

      // Request permission
      PermissionStatus permissionGranted = await _location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        logger.info('🔐 Requesting location permission from user...');
        permissionGranted = await _location.requestPermission();
      }

      final isGranted = permissionGranted == PermissionStatus.granted;
      logger.info('✅ Location permission granted: $isGranted');

      return isGranted;
    } catch (e) {
      logger.severe('❌ Error requesting location permission: $e');
      return false;
    }
  }

  /// Get current location
  Future<LocationData?> getCurrentLocation() async {
    try {
      logger.info('📍 Getting current location...');

      final isPermissionGranted = await isLocationPermissionGranted();
      if (!isPermissionGranted) {
        logger.warning('❌ Location permission not granted');
        return null;
      }

      final locationData = await _location.getLocation();
      logger.info(
          '✅ Current location: ${locationData.latitude}, ${locationData.longitude}');

      return locationData;
    } catch (e) {
      logger.severe('❌ Error getting current location: $e');
      return null;
    }
  }

  /// Open app settings for manual permission grant
  Future<bool> openLocationSettings() async {
    try {
      logger.info('⚙️ Opening location settings...');
      final opened = await permission_handler.Permission.location
          .request()
          .then((status) async {
        if (status.isPermanentlyDenied) {
          return await permission_handler.openAppSettings();
        }
        return status.isGranted;
      });

      return opened;
    } catch (e) {
      logger.severe('❌ Error opening location settings: $e');
      return false;
    }
  }

  /// Enable location service
  Future<bool> enableLocationService() async {
    try {
      logger.info('🔧 Enabling location service...');
      return await _location.requestService();
    } catch (e) {
      logger.severe('❌ Error enabling location service: $e');
      return false;
    }
  }

  /// Listen to location changes
  Stream<LocationData> onLocationChanged() {
    logger.info('👂 Starting location change listener...');
    return _location.onLocationChanged;
  }

  /// Check if location service is enabled
  Future<bool> isLocationServiceEnabled() async {
    try {
      return await _location.serviceEnabled();
    } catch (e) {
      logger.severe('❌ Error checking location service: $e');
      return false;
    }
  }
}
