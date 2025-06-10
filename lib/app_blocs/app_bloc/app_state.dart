part of 'app_bloc.dart';

enum UserType { driver, rider }

@freezed
class AppState with _$AppState {
  const factory AppState(
      {@Default(false) bool isLocationPremissionEnabled,
      @Default(false) bool isLoggedIn,
      RemoteMessage? message,
      UserType? userType,
      Stream<RemoteMessage>? inAppMessageSubscriptioin}) = _AppState;
}
