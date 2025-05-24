part of 'driver_trip_bloc.dart';

@freezed
class DriverTripState with _$DriverTripState {
  const factory DriverTripState({
    @Default(false) bool isLocationPremissionEnabled,
    DriverTripRequest? request,
    LocationData? currentLcoation,
    Stream<LocationData>? locationStream,
  }) = _DriverTripState;
}
