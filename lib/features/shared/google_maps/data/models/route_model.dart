import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/features/shared/google_maps/domain/entities/route_entity.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
class RouteModel with _$RouteModel {
  const RouteModel._();

  const factory RouteModel({required List<RouteResponseRoute> routes}) =
      _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);

  RouteEntity toEntity() {
    if (routes.isEmpty) {
      throw Exception('No routes found');
    }

    final route = routes.first;
    final leg = route.legs.first;

    return RouteEntity(
      distanceKm: leg.distance.value / 1000, // Convert meters to km
      durationMin: leg.duration.value / 60, // Convert seconds to minutes
      polyline: route.overviewPolyline.points,
      steps: leg.steps.map((step) => step.toEntity()).toList(),
    );
  }
}

@freezed
class RouteResponseRoute with _$RouteResponseRoute {
  const factory RouteResponseRoute({
    required List<RouteLeg> legs,
    @JsonKey(name: 'overview_polyline')
    required OverviewPolyline overviewPolyline,
  }) = _RouteResponseRoute;

  factory RouteResponseRoute.fromJson(Map<String, dynamic> json) =>
      _$RouteResponseRouteFromJson(json);
}

@freezed
class RouteLeg with _$RouteLeg {
  const factory RouteLeg({
    required DistanceValue distance,
    required DurationValue duration,
    required List<RouteStep> steps,
  }) = _RouteLeg;

  factory RouteLeg.fromJson(Map<String, dynamic> json) =>
      _$RouteLegFromJson(json);
}

@freezed
class DistanceValue with _$DistanceValue {
  const factory DistanceValue({
    required int value, // in meters
    required String text,
  }) = _DistanceValue;

  factory DistanceValue.fromJson(Map<String, dynamic> json) =>
      _$DistanceValueFromJson(json);
}

@freezed
class DurationValue with _$DurationValue {
  const factory DurationValue({
    required int value, // in seconds
    required String text,
  }) = _DurationValue;

  factory DurationValue.fromJson(Map<String, dynamic> json) =>
      _$DurationValueFromJson(json);
}

@freezed
class OverviewPolyline with _$OverviewPolyline {
  const factory OverviewPolyline({required String points}) = _OverviewPolyline;

  factory OverviewPolyline.fromJson(Map<String, dynamic> json) =>
      _$OverviewPolylineFromJson(json);
}

@freezed
class RouteStep with _$RouteStep {
  const RouteStep._();

  const factory RouteStep({
    required DistanceValue distance,
    required DurationValue duration,
    @JsonKey(name: 'html_instructions') required String htmlInstructions,
    @JsonKey(name: 'start_location') required LatLngModel startLocation,
    @JsonKey(name: 'end_location') required LatLngModel endLocation,
  }) = _RouteStep;

  factory RouteStep.fromJson(Map<String, dynamic> json) =>
      _$RouteStepFromJson(json);

  RouteStepEntity toEntity() {
    // Strip HTML tags from instructions
    final instruction = htmlInstructions.replaceAll(RegExp(r'<[^>]*>'), '');

    return RouteStepEntity(
      distanceKm: distance.value / 1000,
      durationMin: duration.value / 60,
      instruction: instruction,
      startLat: startLocation.lat,
      startLng: startLocation.lng,
      endLat: endLocation.lat,
      endLng: endLocation.lng,
    );
  }
}

@freezed
class LatLngModel with _$LatLngModel {
  const factory LatLngModel({required double lat, required double lng}) =
      _LatLngModel;

  factory LatLngModel.fromJson(Map<String, dynamic> json) =>
      _$LatLngModelFromJson(json);
}
