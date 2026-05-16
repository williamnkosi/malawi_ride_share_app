// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_create_user_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthCreateUserDataDto _$AuthCreateUserDataDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AuthCreateUserDataDto.fromJson(json);
}

/// @nodoc
mixin _$AuthCreateUserDataDto {
  String get firebaseId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;

  /// Serializes this AuthCreateUserDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthCreateUserDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthCreateUserDataDtoCopyWith<AuthCreateUserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCreateUserDataDtoCopyWith<$Res> {
  factory $AuthCreateUserDataDtoCopyWith(
    AuthCreateUserDataDto value,
    $Res Function(AuthCreateUserDataDto) then,
  ) = _$AuthCreateUserDataDtoCopyWithImpl<$Res, AuthCreateUserDataDto>;
  @useResult
  $Res call({
    String firebaseId,
    String firstName,
    String lastName,
    String phoneNumber,
    String gender,
    String dateOfBirth,
  });
}

/// @nodoc
class _$AuthCreateUserDataDtoCopyWithImpl<
  $Res,
  $Val extends AuthCreateUserDataDto
>
    implements $AuthCreateUserDataDtoCopyWith<$Res> {
  _$AuthCreateUserDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthCreateUserDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? gender = null,
    Object? dateOfBirth = null,
  }) {
    return _then(
      _value.copyWith(
            firebaseId:
                null == firebaseId
                    ? _value.firebaseId
                    : firebaseId // ignore: cast_nullable_to_non_nullable
                        as String,
            firstName:
                null == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String,
            lastName:
                null == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String,
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String,
            dateOfBirth:
                null == dateOfBirth
                    ? _value.dateOfBirth
                    : dateOfBirth // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthCreateUserDataDtoImplCopyWith<$Res>
    implements $AuthCreateUserDataDtoCopyWith<$Res> {
  factory _$$AuthCreateUserDataDtoImplCopyWith(
    _$AuthCreateUserDataDtoImpl value,
    $Res Function(_$AuthCreateUserDataDtoImpl) then,
  ) = __$$AuthCreateUserDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String firebaseId,
    String firstName,
    String lastName,
    String phoneNumber,
    String gender,
    String dateOfBirth,
  });
}

/// @nodoc
class __$$AuthCreateUserDataDtoImplCopyWithImpl<$Res>
    extends
        _$AuthCreateUserDataDtoCopyWithImpl<$Res, _$AuthCreateUserDataDtoImpl>
    implements _$$AuthCreateUserDataDtoImplCopyWith<$Res> {
  __$$AuthCreateUserDataDtoImplCopyWithImpl(
    _$AuthCreateUserDataDtoImpl _value,
    $Res Function(_$AuthCreateUserDataDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthCreateUserDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? gender = null,
    Object? dateOfBirth = null,
  }) {
    return _then(
      _$AuthCreateUserDataDtoImpl(
        firebaseId:
            null == firebaseId
                ? _value.firebaseId
                : firebaseId // ignore: cast_nullable_to_non_nullable
                    as String,
        firstName:
            null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String,
        lastName:
            null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String,
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String,
        dateOfBirth:
            null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthCreateUserDataDtoImpl implements _AuthCreateUserDataDto {
  const _$AuthCreateUserDataDtoImpl({
    required this.firebaseId,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.gender,
    required this.dateOfBirth,
  });

  factory _$AuthCreateUserDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthCreateUserDataDtoImplFromJson(json);

  @override
  final String firebaseId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String gender;
  @override
  final String dateOfBirth;

  @override
  String toString() {
    return 'AuthCreateUserDataDto(firebaseId: $firebaseId, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, gender: $gender, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCreateUserDataDtoImpl &&
            (identical(other.firebaseId, firebaseId) ||
                other.firebaseId == firebaseId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firebaseId,
    firstName,
    lastName,
    phoneNumber,
    gender,
    dateOfBirth,
  );

  /// Create a copy of AuthCreateUserDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthCreateUserDataDtoImplCopyWith<_$AuthCreateUserDataDtoImpl>
  get copyWith =>
      __$$AuthCreateUserDataDtoImplCopyWithImpl<_$AuthCreateUserDataDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthCreateUserDataDtoImplToJson(this);
  }
}

abstract class _AuthCreateUserDataDto implements AuthCreateUserDataDto {
  const factory _AuthCreateUserDataDto({
    required final String firebaseId,
    required final String firstName,
    required final String lastName,
    required final String phoneNumber,
    required final String gender,
    required final String dateOfBirth,
  }) = _$AuthCreateUserDataDtoImpl;

  factory _AuthCreateUserDataDto.fromJson(Map<String, dynamic> json) =
      _$AuthCreateUserDataDtoImpl.fromJson;

  @override
  String get firebaseId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  String get gender;
  @override
  String get dateOfBirth;

  /// Create a copy of AuthCreateUserDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthCreateUserDataDtoImplCopyWith<_$AuthCreateUserDataDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
