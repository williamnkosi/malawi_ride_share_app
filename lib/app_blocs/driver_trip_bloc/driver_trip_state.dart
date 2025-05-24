part of 'driver_trip_bloc.dart';

@freezed
class DriverTripState with _$DriverTripState {
  const factory DriverTripState({
    @Default(false) bool isLocationPremissionEnabled,
    RemoteMessage? message,
    LocationData? currentLcoation,
    StreamSubscription<LocationData>? locationStream,
  }) = _DriverTripState;
}
