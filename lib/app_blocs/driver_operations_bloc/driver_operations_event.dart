part of 'driver_operations_bloc.dart';

@freezed
class DriverOperationsEvent with _$DriverOperationsEvent {
  // Driver lifecycle events
  const factory DriverOperationsEvent.initialize() = DriverOperationsInitialize;
  const factory DriverOperationsEvent.goOnline() = DriverOperationsGoOnline;
  const factory DriverOperationsEvent.goOffline({
    required Position lastKnownLocation,
  }) = DriverOperationsGoOffline;

  // Location tracking events
  const factory DriverOperationsEvent.startLocationTracking() =
      DriverOperationsStartLocationTracking;
  const factory DriverOperationsEvent.stopLocationTracking() =
      DriverOperationsStopLocationTracking;
  const factory DriverOperationsEvent.locationUpdated(Position position) =
      DriverOperationsLocationUpdated;

  // Trip management events
  const factory DriverOperationsEvent.tripRequestReceived() =
      DriverOperationsTripRequestReceived;
  const factory DriverOperationsEvent.acceptTrip() = DriverOperationsAcceptTrip;
  const factory DriverOperationsEvent.rejectTrip() = DriverOperationsRejectTrip;
  const factory DriverOperationsEvent.startTrip() = DriverOperationsStartTrip;
  const factory DriverOperationsEvent.completeTrip({
    required double totalDistance,
    required Duration totalDuration,
  }) = DriverOperationsCompleteTrip;
  const factory DriverOperationsEvent.cancelTrip(String reason) =
      DriverOperationsCancelTrip;

  // Status update events
  const factory DriverOperationsEvent.updateAvailability(bool isAvailable) =
      DriverOperationsUpdateAvailability;
}
