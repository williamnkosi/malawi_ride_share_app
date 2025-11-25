// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDeviceImpl _$$UserDeviceImplFromJson(Map<String, dynamic> json) =>
    _$UserDeviceImpl(
      fcmToken: json['fcmToken'] as String,
      platform: $enumDecode(_$DevicePlatformEnumMap, json['platform']),
      deviceVersion: json['deviceVersion'] as String,
    );

Map<String, dynamic> _$$UserDeviceImplToJson(_$UserDeviceImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'platform': _$DevicePlatformEnumMap[instance.platform]!,
      'deviceVersion': instance.deviceVersion,
    };

const _$DevicePlatformEnumMap = {
  DevicePlatform.android: 'android',
  DevicePlatform.ios: 'ios',
};
