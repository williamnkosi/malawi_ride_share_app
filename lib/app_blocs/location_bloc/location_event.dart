part of 'location_bloc.dart';


@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.locationEventInitial() = LocationEventInitial;
   const factory LocationEvent.locationEventTrackLocation({required LatLng location}) = LocationEventTrackLocation;
   const factory LocationEvent.locationEventStartTracking() = LocationEventStartTracking;
    const factory LocationEvent.locationEventStopTracking() = LocationEventStopTracking;
}