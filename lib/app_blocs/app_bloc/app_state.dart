part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLocationPremissionEnabled,
    @Default(false) bool isNotificationPermissionEnabled,
    @Default(false) bool isLoggedIn,
    RemoteMessage? message,
    Stream<RemoteMessage>? inAppMessageSubscriptioin,
  }) = _AppState;
}
