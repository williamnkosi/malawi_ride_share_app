import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_entity.freezed.dart';

@freezed
class RouteEntity with _$RouteEntity {
  const factory RouteEntity({
    required double distanceKm,
    required double durationMin,
    required String polyline,
    required List<RouteStepEntity> steps,
  }) = _RouteEntity;
}

@freezed
class RouteStepEntity with _$RouteStepEntity {
  const factory RouteStepEntity({
    required double distanceKm,
    required double durationMin,
    required String instruction,
    required double startLat,
    required double startLng,
    required double endLat,
    required double endLng,
  }) = _RouteStepEntity;
}
