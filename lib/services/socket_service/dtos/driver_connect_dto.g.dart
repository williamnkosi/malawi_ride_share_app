// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_connect_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverConnectDtoImpl _$$DriverConnectDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DriverConnectDtoImpl(
      firebaseId: json['firebaseId'] as String,
      initialLocation: json['initialLocation'] == null
          ? null
          : LocationDto.fromJson(
              json['initialLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DriverConnectDtoImplToJson(
        _$DriverConnectDtoImpl instance) =>
    <String, dynamic>{
      'firebaseId': instance.firebaseId,
      'initialLocation': instance.initialLocation,
    };
