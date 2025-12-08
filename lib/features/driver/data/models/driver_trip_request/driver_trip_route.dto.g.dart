// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_trip_route.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverTripRouteDtoImpl _$$DriverTripRouteDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DriverTripRouteDtoImpl(
  distanceKm: (json['distanceKm'] as num).toDouble(),
  durationMin: (json['durationMin'] as num).toDouble(),
  polyline: json['polyline'] as String,
  steps:
      (json['steps'] as List<dynamic>)
          .map((e) => RoutesStepsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$DriverTripRouteDtoImplToJson(
  _$DriverTripRouteDtoImpl instance,
) => <String, dynamic>{
  'distanceKm': instance.distanceKm,
  'durationMin': instance.durationMin,
  'polyline': instance.polyline,
  'steps': instance.steps,
};
