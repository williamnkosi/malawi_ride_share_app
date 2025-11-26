abstract class LocationPermissionInterface {
  /// Check if location is fully available (services enabled AND permission granted)
  Future<bool> isLocationAvailable();

  /// Request location permission from the user
  Future<bool> requestLocationPermission();

  /// Open location settings to allow user to enable location services
  Future<bool> openLocationSettings();
}
