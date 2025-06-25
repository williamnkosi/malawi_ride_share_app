part of 'rider_trip_bloc.dart';

@freezed
class RiderTripEvent with _$RiderTripEvent {
  const factory RiderTripEvent.tripSubmitTrip(
      {required Location startLocation,
      required Location endLocation}) = RiderTripSubmitTrip;
}
