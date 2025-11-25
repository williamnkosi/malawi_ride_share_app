part of 'driver_operations_bloc.dart';

@freezed
class DriverOperationsState with _$DriverOperationsState {
  // Initial state when bloc is created
  const factory DriverOperationsState.initial() = _Initial;

  // Loading state for any async operations
  const factory DriverOperationsState.loading() = _Loading;

  // Driver is offline
  const factory DriverOperationsState.offline({
    Position? lastKnownLocation,
  }) = _Offline;

  // Driver is online and available for trips
  const factory DriverOperationsState.online({
    required Position? currentLocation,
  }) = _Online;

  // Driver received a trip request
  const factory DriverOperationsState.tripRequestReceived({
    required TripRequestNotificationDto tripRequest,
  }) = _TripRequestReceived;

  // Driver is en route to pickup passenger
  const factory DriverOperationsState.enRouteToPickup({
    required Position currentLocation,
    required TripRequestNotificationDto activeTrip,
    required DateTime estimatedPickupTime,
    required DateTime onlineTime,
    @Default([]) List<Position> locationHistory,
  }) = _EnRouteToPickup;

  // Driver is waiting for passenger at pickup location
  const factory DriverOperationsState.waitingForPassenger({
    required Position currentLocation,
    required Trip activeTrip,
    required DateTime arrivalTime,
    required DateTime onlineTime,
  }) = _WaitingForPassenger;

  // Driver is on an active trip with passenger
  const factory DriverOperationsState.onTrip({
    required Position currentLocation,
    required Trip activeTrip,
    required DateTime tripStartTime,
    DateTime? estimatedDropoffTime,
    @Default([]) List<Position> tripRoute,
  }) = _OnTrip;

  // Trip has been completed successfully
  const factory DriverOperationsState.tripCompleted({
    required Position currentLocation,
    required Trip completedTrip,
    required DateTime completionTime,
    required double tripEarnings,
    required Duration tripDuration,
    required double tripDistance,
  }) = _TripCompleted;

  // Trip has been cancelled
  const factory DriverOperationsState.tripCancelled({
    required Position currentLocation,
    required Trip cancelledTrip,
    required String cancellationReason,
    required DateTime cancellationTime,
    required bool wasCancelledByDriver,
  }) = _TripCancelled;

  // Driver is temporarily unavailable
  const factory DriverOperationsState.unavailable({
    required Position currentLocation,
    required String reason,
    DateTime? availableAgainAt,
  }) = _Unavailable;

  // Error state
  const factory DriverOperationsState.error({
    required String message,
    DriverOperationsState? previousState,
  }) = _StateError;
}
