// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriversLocation _$DriversLocationFromJson(Map<String, dynamic> json) =>
    DriversLocation(
      driverId: json['driverId'] as String,
      location: Location1.fromJson(json['location'] as String),
    );

Map<String, dynamic> _$DriversLocationToJson(DriversLocation instance) =>
    <String, dynamic>{
      'driverId': instance.driverId,
      'location': instance.location,
    };
