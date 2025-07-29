// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_driver_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateDriverLocationDtoImpl _$$UpdateDriverLocationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateDriverLocationDtoImpl(
      firebaseId: json['firebaseId'] as String,
      location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      driverStatus: $enumDecode(_$DriverStatusEnumMap, json['driverStatus']),
    );

Map<String, dynamic> _$$UpdateDriverLocationDtoImplToJson(
        _$UpdateDriverLocationDtoImpl instance) =>
    <String, dynamic>{
      'firebaseId': instance.firebaseId,
      'location': instance.location,
      'driverStatus': _$DriverStatusEnumMap[instance.driverStatus]!,
    };

const _$DriverStatusEnumMap = {
  DriverStatus.online: 'online',
  DriverStatus.offline: 'offline',
  DriverStatus.onTrip: 'onTrip',
  DriverStatus.busy: 'busy',
};
