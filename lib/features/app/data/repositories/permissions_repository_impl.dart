import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/permissions_repository.dart';

class PermissionsRepositoryImpl implements PermissionsRepositoryInterface {
  final logger = Logger('PermissionsRepositoryImpl');
  @override
  Future<bool> isCameraPermissionGranted() {
    // TODO: implement isCameraPermissionGranted
    throw UnimplementedError();
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
  Future<bool> isNotificationPermissionGranted() {
    // TODO: implement isNotificationPermissionGranted
    throw UnimplementedError();
  }

  @override
  Future<bool> isStoragePermissionGranted() {
    // TODO: implement isStoragePermissionGranted
    throw UnimplementedError();
  }

  @override
  Future<bool> openAppSettings() {
    // TODO: implement openAppSettings
    throw UnimplementedError();
  }

  @override
  Future<bool> requestCameraPermission() {
    // TODO: implement requestCameraPermission
    throw UnimplementedError();
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

  @override
  Future<bool> requestNotificationPermission() {
    // TODO: implement requestNotificationPermission
    throw UnimplementedError();
  }

  @override
  Future<bool> requestStoragePermission() {
    // TODO: implement requestStoragePermission
    throw UnimplementedError();
  }
}
