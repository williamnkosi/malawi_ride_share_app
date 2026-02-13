import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_route_steps.dto.dart';

part 'driver_trip_route.dto.freezed.dart';
part 'driver_trip_route.dto.g.dart';

@freezed
class DriverTripRouteDto with _$DriverTripRouteDto {
  const factory DriverTripRouteDto({
    required double distanceKm,
    required double durationMin,
    required String polyline,
    required List<RoutesStepsDto> steps,
  }) = _DriverTripRouteDto;

  const DriverTripRouteDto._();

  factory DriverTripRouteDto.fromJson(Map<String, dynamic> json) =>
      _$DriverTripRouteDtoFromJson(json);
}
