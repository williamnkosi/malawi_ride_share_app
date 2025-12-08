import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_trip_route_steps.dto.freezed.dart';
part 'driver_trip_route_steps.dto.g.dart';

@freezed
class RoutesStepsDto with _$RoutesStepsDto {
  const factory RoutesStepsDto({
    required double distanceKm,
    required double durationMin,
    required String instruction,
  }) = _RoutesStepsDto;

  const RoutesStepsDto._();

  factory RoutesStepsDto.fromJson(Map<String, dynamic> json) =>
      _$RoutesStepsDtoFromJson(json);
}
