abstract class NotificationPermissionRepository {
  /// Checks if notification permission is granted
  Future<bool> isPermissionGranted();

  /// Requests notification permission from the user
  Future<bool> requestPermission();

  /// Opens the app settings page for notification permissions
  Future<void> openSettings();
}
