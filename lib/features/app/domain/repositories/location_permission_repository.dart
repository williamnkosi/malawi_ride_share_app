import 'package:geolocator/geolocator.dart';

abstract class LocationPermissionRepository {
  /// Check if location services (GPS) are enabled on the device
  Future<bool> isLocationServiceEnabled();

  /// Get the current permission status without requesting
  Future<LocationPermission> getLocationPermissionStatus();

  /// Check if location is fully available (services enabled AND permission granted)
  Future<bool> isLocationPermissionGranted();

  /// Request location permission from the user
  Future<bool> requestLocationPermission();

  /// Open location settings to allow user to enable location services
  Future<void> openLocationSettings();
}
