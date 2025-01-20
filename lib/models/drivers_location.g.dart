// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriversLocation _$DriversLocationFromJson(Map<String, dynamic> json) =>
    DriversLocation(
      driverId: json['driverId'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$DriversLocationToJson(DriversLocation instance) =>
    <String, dynamic>{
      'driverId': instance.driverId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
