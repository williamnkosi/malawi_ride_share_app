part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState(
      {@Default(false) bool isLocationPremissionEnabled,
       LocationData? currentLcoation,
       LatLng? coordinates,
       StreamSubscription<LocationData>? locationStream}) = _LocationState;
}