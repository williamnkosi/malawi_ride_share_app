part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  // Initial state
  const factory LocationState.initial() = LocationInitial;

  // Permission states
  const factory LocationState.permissionRequired() = LocationPermissionRequired;
  const factory LocationState.permissionDenied({required String message}) =
      LocationPermissionDenied;

  // Tracking states
  const factory LocationState.tracking({
    required Position currentPosition,
    required DateTime lastUpdate,
    required String accuracy,
    int? satelliteCount,
  }) = LocationTracking;

  const factory LocationState.stopped({Position? lastKnownPosition}) =
      LocationStopped;

  // Error states
  const factory LocationState.errors({
    required String message,
    Position? lastKnownPosition,
  }) = LocationErrors;
  // Loading/transitioning
  const factory LocationState.loading({String? message}) = LocationLoading;
}
