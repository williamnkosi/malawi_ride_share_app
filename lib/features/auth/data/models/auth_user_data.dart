import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_user_data.freezed.dart';
part 'auth_user_data.g.dart';

@freezed
class AuthUserDataEntity with _$AuthUserDataEntity {
  const factory AuthUserDataEntity({
    required String firebaseUserId,
    required String email,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required DateTime dob,
  }) = _AuthUserDataEntity;

  factory AuthUserDataEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDataEntityFromJson(json);
}
