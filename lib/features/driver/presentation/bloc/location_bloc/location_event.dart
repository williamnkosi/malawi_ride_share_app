part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  // Start/stop location tracking
  const factory LocationEvent.startTracking() = LocationStartTracking;
  const factory LocationEvent.stopTracking() = LocationStopTracking;

  // Permission handling
  const factory LocationEvent.requestPermissions() = LocationRequestPermissions;
  const factory LocationEvent.permissionsDenied() = LocationPermissionsDenied;
  const factory LocationEvent.permissionsGranted() = LocationPermissionsGranted;

  // Settings
  const factory LocationEvent.updateSettings({
    required String accuracy,
    required int distanceFilterMeters,
    required int timeIntervalMs,
  }) = LocationUpdateSettings;

  // Internal events (from stream) - public but intended for internal use
  const factory LocationEvent.locationReceived(Position position) =
      LocationReceived;
  const factory LocationEvent.locationError(String error) = LocationError;
}
