part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.initial() = LocationInitial;
  const factory LocationEvent.startTracking() = LocationStartTracking;

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
