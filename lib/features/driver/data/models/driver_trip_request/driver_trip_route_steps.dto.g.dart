// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_trip_route_steps.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutesStepsDtoImpl _$$RoutesStepsDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoutesStepsDtoImpl(
      distanceKm: (json['distanceKm'] as num).toDouble(),
      durationMin: (json['durationMin'] as num).toDouble(),
      instruction: json['instruction'] as String,
      polylineEncoded: json['polylineEncoded'] as String,
    );

Map<String, dynamic> _$$RoutesStepsDtoImplToJson(
  _$RoutesStepsDtoImpl instance,
) => <String, dynamic>{
  'distanceKm': instance.distanceKm,
  'durationMin': instance.durationMin,
  'instruction': instance.instruction,
  'polylineEncoded': instance.polylineEncoded,
};
