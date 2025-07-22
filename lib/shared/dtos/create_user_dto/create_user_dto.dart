import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_dto.freezed.dart';
part 'create_user_dto.g.dart';

@freezed
class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({
    required String firebaseId,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required String gender,
    required String dateOfBirth,
  }) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);
}
