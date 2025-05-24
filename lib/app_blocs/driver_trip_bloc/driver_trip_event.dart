part of 'driver_trip_bloc.dart';

@freezed
class DriverTripEvent with _$DriverTripEvent {
  const factory DriverTripEvent.tripIntial() = DriverTripIntial;
  const factory DriverTripEvent.tripEnded() = DriverTripEnded;
  const factory DriverTripEvent.tripRequestReceived(
      {required RemoteMessage message}) = DriverTripRequestReceived;
  const factory DriverTripEvent.tripAccepted() = DriverTripAccepted;
  const factory DriverTripEvent.tripRejected() = DriverTripRejected;
  const factory DriverTripEvent.tripCancelled() = DriverTripCancelled;
  const factory DriverTripEvent.tripCompleted() = DriverTripCompleted;
  const factory DriverTripEvent.tripStartTrackingDriver() =
      DriverTripStartTrackingDriver;
}
