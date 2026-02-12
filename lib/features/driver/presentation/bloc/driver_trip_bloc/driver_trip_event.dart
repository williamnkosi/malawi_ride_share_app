part of 'driver_trip_bloc.dart';

@freezed
class DriverTripEvent with _$DriverTripEvent {
  const factory DriverTripEvent.initialize() = DriverTripInitialize;
  // Trip request events
  const factory DriverTripEvent.tripRequestReceived({
    required DriverTripEntity trip,
  }) = DriverTripRequestReceived;

  const factory DriverTripEvent.tripAcceptedConfirmation({
    required DriverTripConfirmationEntity confirmationTrip,
  }) = DriverTripAcceptedConfirmation;

  const factory DriverTripEvent.acceptTrip({required DriverTripEntity trip}) =
      DriverTripAcceptTrip;

  const factory DriverTripEvent.declineTrip({required DriverTripEntity trip}) =
      DriverTripDeclineTrip;

  const factory DriverTripEvent.tripExpired() = DriverTripExpired;

  // Trip lifecycle events
  const factory DriverTripEvent.startTrip({required DriverTripEntity trip}) =
      DriverTripStart;

  const factory DriverTripEvent.completeTrip({
    required DriverTripEntity trip,
    required double finalFare,
  }) = DriverTripComplete;

  // Trip modifications
  const factory DriverTripEvent.cancelTrip({
    required DriverTripEntity trip,
    required String reason,
  }) = DriverTripCancel;

  // Navigation/location events
  const factory DriverTripEvent.updateLocation({
    required DriverTripEntity trip,
    required LocationEntity currentLocation,
  }) = DriverTripUpdateLocation;
}
