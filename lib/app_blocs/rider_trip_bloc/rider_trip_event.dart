part of 'rider_trip_bloc.dart';

@freezed
class RiderTripEvent with _$RiderTripEvent {
  const factory RiderTripEvent.tripSubmitTrip(
      {required LocationData startLocation,
      required LocationData endLocation}) = RiderTripSubmitTrip;
}
