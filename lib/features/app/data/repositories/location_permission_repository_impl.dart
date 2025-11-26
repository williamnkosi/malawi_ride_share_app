import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_interface.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class LocationPermissionRepositoryImpl implements LocationPermissionInterface {
  final logger = Logger('LocationPermissionRepositoryImpl');

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
