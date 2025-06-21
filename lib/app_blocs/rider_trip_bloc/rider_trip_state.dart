part of 'rider_trip_bloc.dart';

@freezed
class RiderTripState with _$RiderTripState {
  const factory RiderTripState({
    @Default(false) bool isLocationPremissionEnabled,
    LocationData? currentLcoation,
    Stream<LocationData>? locationStream,
  }) = _RiderTripState;
}
