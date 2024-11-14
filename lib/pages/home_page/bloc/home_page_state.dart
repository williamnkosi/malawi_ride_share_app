part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState(
      {Location? currentLocation,
      @Default(false) bool isPermissionEnabled}) = _HomePageState;
}
