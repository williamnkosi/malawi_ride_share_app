abstract class ICameraPermissionRepository {
  /// Requests camera permission from the user
  Future<bool> requestCameraPermission();

  /// Checks if camera permission is granted
  Future<bool> hasCameraPermission();

  /// Opens app settings for manual permission configuration
  Future<void> openAppSettings();
}
