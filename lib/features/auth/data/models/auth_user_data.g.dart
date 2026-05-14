// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserDataEntityImpl _$$AuthUserDataEntityImplFromJson(
  Map<String, dynamic> json,
) => _$AuthUserDataEntityImpl(
  firebaseUserId: json['firebaseUserId'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  dob: DateTime.parse(json['dob'] as String),
);

Map<String, dynamic> _$$AuthUserDataEntityImplToJson(
  _$AuthUserDataEntityImpl instance,
) => <String, dynamic>{
  'firebaseUserId': instance.firebaseUserId,
  'email': instance.email,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'dob': instance.dob.toIso8601String(),
};
