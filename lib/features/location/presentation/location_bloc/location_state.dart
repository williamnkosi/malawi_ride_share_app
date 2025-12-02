part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  // Initial state
  const factory LocationState.start() = LocationStart;

  // Tracking states
  const factory LocationState.active({
    required LocationEntity currentPosition,
  }) = LocationActive;

  const factory LocationState.stopped({LocationEntity? lastKnownPosition}) =
      LocationStopped;

  // Error states
  const factory LocationState.errors({
    required String message,
    LocationEntity? lastKnownPosition,
  }) = LocationErrors;
  // Loading/transitioning
  const factory LocationState.loading({String? message}) = LocationLoading;
}
