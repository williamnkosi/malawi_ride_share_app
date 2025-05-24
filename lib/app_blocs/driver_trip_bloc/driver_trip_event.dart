part of 'driver_trip_bloc.dart';

@freezed
class DriverTripEvent with _$DriverTripEvent {
  const factory DriverTripEvent.tripStarted() = TripStarted;
  const factory DriverTripEvent.tripEnded() = TripEnded;
  const factory DriverTripEvent.tripRequestReceived() = TripRequestReceived;
  const factory DriverTripEvent.tripAccepted() = TripAccepted;
  const factory DriverTripEvent.tripRejected() = TripRejected;
  const factory DriverTripEvent.tripCancelled() = TripCancelled;
  const factory DriverTripEvent.tripCompleted() = TripCompleted;
  const factory DriverTripEvent.tripStartTrackingDriver() =
      TripStartTrackingDriver;
}
