import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_create_user_data_dto.freezed.dart';
part 'auth_create_user_data_dto.g.dart';

@freezed
class AuthCreateUserDataDto with _$AuthCreateUserDataDto {
  const factory AuthCreateUserDataDto({
    required String firebaseId,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String gender,
    required String dateOfBirth,
  }) = _AuthCreateUserDataDto;

  factory AuthCreateUserDataDto.fromJson(Map<String, dynamic> json) =>
      _$AuthCreateUserDataDtoFromJson(json);

  @override
  Map<String, dynamic> toJson();
}
