// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserDataEntityImpl _$$AuthUserDataEntityImplFromJson(
  Map<String, dynamic> json,
) => _$AuthUserDataEntityImpl(
  firebaseId: json['firebaseId'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
);

Map<String, dynamic> _$$AuthUserDataEntityImplToJson(
  _$AuthUserDataEntityImpl instance,
) => <String, dynamic>{
  'firebaseId': instance.firebaseId,
  'email': instance.email,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'dateOfBirth': instance.dateOfBirth.toIso8601String(),
};
