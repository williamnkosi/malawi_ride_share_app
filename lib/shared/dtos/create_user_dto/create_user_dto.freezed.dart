// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) {
  return _CreateUserDto.fromJson(json);
}

/// @nodoc
mixin _$CreateUserDto {
  String get firebaseId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;

  /// Serializes this CreateUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(
          CreateUserDto value, $Res Function(CreateUserDto) then) =
      _$CreateUserDtoCopyWithImpl<$Res, CreateUserDto>;
  @useResult
  $Res call(
      {String firebaseId,
      String firstName,
      String lastName,
      String phoneNumber,
      String email,
      String gender,
      String dateOfBirth});
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res, $Val extends CreateUserDto>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? gender = null,
    Object? dateOfBirth = null,
  }) {
    return _then(_value.copyWith(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserDtoImplCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$$CreateUserDtoImplCopyWith(
          _$CreateUserDtoImpl value, $Res Function(_$CreateUserDtoImpl) then) =
      __$$CreateUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firebaseId,
      String firstName,
      String lastName,
      String phoneNumber,
      String email,
      String gender,
      String dateOfBirth});
}

/// @nodoc
class __$$CreateUserDtoImplCopyWithImpl<$Res>
    extends _$CreateUserDtoCopyWithImpl<$Res, _$CreateUserDtoImpl>
    implements _$$CreateUserDtoImplCopyWith<$Res> {
  __$$CreateUserDtoImplCopyWithImpl(
      _$CreateUserDtoImpl _value, $Res Function(_$CreateUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? gender = null,
    Object? dateOfBirth = null,
  }) {
    return _then(_$CreateUserDtoImpl(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserDtoImpl implements _CreateUserDto {
  const _$CreateUserDtoImpl(
      {required this.firebaseId,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.email,
      required this.gender,
      required this.dateOfBirth});

  factory _$CreateUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserDtoImplFromJson(json);

  @override
  final String firebaseId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String gender;
  @override
  final String dateOfBirth;

  @override
  String toString() {
    return 'CreateUserDto(firebaseId: $firebaseId, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, gender: $gender, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserDtoImpl &&
            (identical(other.firebaseId, firebaseId) ||
                other.firebaseId == firebaseId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firebaseId, firstName, lastName,
      phoneNumber, email, gender, dateOfBirth);

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserDtoImplCopyWith<_$CreateUserDtoImpl> get copyWith =>
      __$$CreateUserDtoImplCopyWithImpl<_$CreateUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateUserDto implements CreateUserDto {
  const factory _CreateUserDto(
      {required final String firebaseId,
      required final String firstName,
      required final String lastName,
      required final String phoneNumber,
      required final String email,
      required final String gender,
      required final String dateOfBirth}) = _$CreateUserDtoImpl;

  factory _CreateUserDto.fromJson(Map<String, dynamic> json) =
      _$CreateUserDtoImpl.fromJson;

  @override
  String get firebaseId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get gender;
  @override
  String get dateOfBirth;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserDtoImplCopyWith<_$CreateUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
