part of 'home_page_bloc.dart';

@freezed
class HomePageState1 with _$HomePageState1 {
  const factory HomePageState1(
      {@Default(LatLng(37.4223, -122.0848)) currentLocation,
      @Default(false) bool isPermissionEnabled,
      @Default({}) Map<PolylineId, Polyline>? polyLine}) = _HomePageState1;
}
