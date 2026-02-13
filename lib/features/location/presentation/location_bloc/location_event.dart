part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.startTracking() = LocationStartTracking;

  // Settings
  const factory LocationEvent.updateSettings({
    required String accuracy,
    required int distanceFilterMeters,
    required int timeIntervalMs,
  }) = LocationUpdateSettings;
}
