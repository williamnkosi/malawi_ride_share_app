import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_repository.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class LocationPermissionRepositoryImpl implements LocationPermissionRepository {
  final logger = Logger('LocationPermissionRepositoryImpl');

  @override
  Future<bool> isLocationServiceEnabled() async {
    try {
      logger.info('📡 Checking if location service is enabled...');
      final isEnabled = await Geolocator.isLocationServiceEnabled();
      logger.info('📡 Location service enabled: $isEnabled');
      return isEnabled;
    } catch (e) {
      logger.severe('❌ Error checking location service: $e');
      return false;
    }
  }

  @override
  Future<LocationPermission> getLocationPermissionStatus() async {
    try {
      logger.info('🔍 Getting location permission status...');
      final permission = await Geolocator.checkPermission();
      logger.info('📱 Location permission status: $permission');
      return permission;
    } catch (e) {
      logger.severe('❌ Error getting permission status: $e');
      return LocationPermission.denied;
    }
  }

  @override
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

  @override
  Future<void> openLocationSettings() async {
    try {
      logger.info('⚙️ Opening location settings...');

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.deniedForever) {
        // Open app settings for permanent denial
        await permission_handler.openAppSettings();
      } else {
        // Open system location settings
        await Geolocator.openLocationSettings();
      }
    } catch (e) {
      logger.severe('❌ Error opening location settings: $e');
      rethrow;
    }
  }

  @override
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
}
