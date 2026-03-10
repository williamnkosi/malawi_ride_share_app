part of 'rider_operations_bloc.dart';

@freezed
class RiderOperationsState with _$RiderOperationsState {
  /// Initial state
  const factory RiderOperationsState.initial() = RiderOperationsInitial;

  /// Searching for available drivers
  const factory RiderOperationsState.searching({
    required String pickupAddress,
    required String destinationAddress,
  }) = RiderOperationsSearching;

  /// Driver found - ride offer presented to rider
  const factory RiderOperationsState.rideOffered({
    required String tripId,
    required String driverName,
    required String driverPhone,
    required String vehicleDetails,
    required double estimatedCost,
    required int estimatedMinutes,
  }) = RideOfferedState;

  /// Ride accepted - waiting for driver to arrive at pickup
  const factory RiderOperationsState.waitingForPickup({
    required String tripId,
    required String driverName,
    required double driverLat,
    required double driverLng,
    required int minutesAway,
  }) = WaitingForPickupState;

  /// Trip in progress - driver is driving to destination
  const factory RiderOperationsState.rideInProgress({
    required String tripId,
    required String driverName,
    required double currentLat,
    required double currentLng,
    required double destinationLat,
    required double destinationLng,
  }) = RideInProgressState;

  /// Trip completed - ready for rating
  const factory RiderOperationsState.rideCompleted({
    required String tripId,
    required String driverName,
    required double finalCost,
    required int tripDurationMinutes,
  }) = RideCompletedState;

  /// Waiting for rider to rate the trip
  const factory RiderOperationsState.ratingPending({
    required String tripId,
    required String driverName,
  }) = RatingPendingState;

  /// Trip cancelled
  const factory RiderOperationsState.tripCancelled({
    required String reason,
  }) = TripCancelledState;

  /// Error state
  const factory RiderOperationsState.error({
    required String message,
  }) = RiderOperationsError;
}
