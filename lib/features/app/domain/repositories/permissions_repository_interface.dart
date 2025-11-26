abstract class PermissionsRepositoryInterface {
  /// Check if location permission is granted
  Future<bool> isLocationPermissionGranted();

  /// Request location permission from the user
  Future<bool> requestLocationPermission();

  /// Check if notification permission is granted
  Future<bool> isNotificationPermissionGranted();

  /// Request notification permission from the user
  Future<bool> requestNotificationPermission();

  /// Check if camera permission is granted
  Future<bool> isCameraPermissionGranted();

  /// Request camera permission from the user
  Future<bool> requestCameraPermission();

  /// Check if storage permission is granted
  Future<bool> isStoragePermissionGranted();

  /// Request storage permission from the user
  Future<bool> requestStoragePermission();

  /// Open app settings to allow manual permission changes
  Future<bool> openAppSettings();
}
