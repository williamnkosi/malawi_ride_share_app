// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserDtoImpl _$$CreateUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreateUserDtoImpl(
      firebaseId: json['firebaseId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
    );

Map<String, dynamic> _$$CreateUserDtoImplToJson(_$CreateUserDtoImpl instance) =>
    <String, dynamic>{
      'firebaseId': instance.firebaseId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
    };
