part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState(
      {@Default(false) bool isLocationPremissionEnabled,
      @Default(false) bool isLoggedIn}) = _AppState;
}
