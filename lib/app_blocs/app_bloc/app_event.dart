part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appEventInitial() = AppEventInitial;
  const factory AppEvent.startListening() = AppEventStartListening;
  const factory AppEvent.appEventShowMessage({required RemoteMessage message}) =
      AppEventShowMessage;
  const factory AppEvent.appEventHideMessage() = AppEventHideMessage;

  // Location permission events
  const factory AppEvent.requestLocationPermission() =
      AppEventRequestLocationPermission;
  const factory AppEvent.checkLocationPermission() =
      AppEventCheckLocationPermission;
  const factory AppEvent.locationPermissionGranted() =
      AppEventLocationPermissionGranted;
  const factory AppEvent.locationPermissionDenied() =
      AppEventLocationPermissionDenied;
  const factory AppEvent.openLocationSettings() = AppEventOpenLocationSettings;
}
