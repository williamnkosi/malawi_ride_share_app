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
  polylineEncoded: json['polylineEncoded'] as String,
  routesStepsDto: RoutesStepsDto.fromJson(
    json['routesStepsDto'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$DriverTripRouteDtoImplToJson(
  _$DriverTripRouteDtoImpl instance,
) => <String, dynamic>{
  'distanceKm': instance.distanceKm,
  'durationMin': instance.durationMin,
  'polylineEncoded': instance.polylineEncoded,
  'routesStepsDto': instance.routesStepsDto,
};
