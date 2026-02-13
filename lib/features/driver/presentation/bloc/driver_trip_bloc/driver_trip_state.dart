part of 'driver_trip_bloc.dart';

@freezed
class DriverTripState with _$DriverTripState {
  // Initial state - no active trips
  const factory DriverTripState.idle() = DriverTripIdle;

  // Trip request states
  const factory DriverTripState.requestReceived({
    required DriverTripEntity tripRequest,
    required DateTime receivedAt,
    int? timeoutSeconds,
  }) = DrivverTripRequestReceived;

  const factory DriverTripState.requestExpired() = DriverTripRequestExpired;

  // Trip accepted - en route to pickup
  const factory DriverTripState.enRouteToPickup({
    required DriverTripEntity activeTrip,
    double? distanceToPickup,
  }) = DriverTripEnRouteToPickup;

  // Arrived at pickup location
  const factory DriverTripState.arrivedAtPickup({
    required DriverTripEntity activeTrip,
    required LocationEntity currentLocation,
    required DateTime arrivedAt,
  }) = DriverTripArrivedAtPickup;

  // Trip in progress - passenger on board
  const factory DriverTripState.inProgress({
    required DriverTripEntity activeTrip,
    required LocationEntity currentLocation,
    required DateTime startTime,
    required Duration estimatedArrival,
    double? distanceRemaining,
    double? currentFare,
  }) = DriverTripInProgress;

  // Arrived at destination
  const factory DriverTripState.arrivedAtDestination({
    required DriverTripEntity activeTrip,
    required LocationEntity currentLocation,
    required DateTime arrivedAt,
    required double finalFare,
  }) = DriverTripArrivedAtDestination;

  // Trip completed successfully
  const factory DriverTripState.completed({
    required DriverTripEntity completedTrip,
    required double finalFare,
    required DateTime completedAt,
    required Duration tripDuration,
    double? rating,
  }) = DriverTripCompleted;

  // Trip cancelled
  const factory DriverTripState.cancelled({
    required DriverTripEntity cancelledTrip,
    required String reason,
    required DateTime cancelledAt,
    String? cancellationFee,
  }) = DriverTripCancelled;

  // Error states
  const factory DriverTripState.error({
    required String message,
    DriverTripEntity? activeTrip,
    String? errorCode,
  }) = DriverTripError;

  // Loading states for async operations
  const factory DriverTripState.loading({
    required String operation, // "accepting", "declining", "completing", etc.
    DriverTripEntity? activeTrip,
  }) = DriverTripLoading;
}
