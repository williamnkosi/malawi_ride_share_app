// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_create_user_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthCreateUserDataDtoImpl _$$AuthCreateUserDataDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AuthCreateUserDataDtoImpl(
  firebaseId: json['firebaseId'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  gender: json['gender'] as String,
  dateOfBirth: json['dateOfBirth'] as String,
  userType: json['userType'] as String,
);

Map<String, dynamic> _$$AuthCreateUserDataDtoImplToJson(
  _$AuthCreateUserDataDtoImpl instance,
) => <String, dynamic>{
  'firebaseId': instance.firebaseId,
  'email': instance.email,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'gender': instance.gender,
  'dateOfBirth': instance.dateOfBirth,
  'userType': instance.userType,
};
