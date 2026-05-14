// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthUserDataEntity _$AuthUserDataEntityFromJson(Map<String, dynamic> json) {
  return _AuthUserDataEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthUserDataEntity {
  String get firebaseUserId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get dob => throw _privateConstructorUsedError;

  /// Serializes this AuthUserDataEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthUserDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUserDataEntityCopyWith<AuthUserDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserDataEntityCopyWith<$Res> {
  factory $AuthUserDataEntityCopyWith(
    AuthUserDataEntity value,
    $Res Function(AuthUserDataEntity) then,
  ) = _$AuthUserDataEntityCopyWithImpl<$Res, AuthUserDataEntity>;
  @useResult
  $Res call({
    String firebaseUserId,
    String email,
    String firstName,
    String lastName,
    String phoneNumber,
    DateTime dob,
  });
}

/// @nodoc
class _$AuthUserDataEntityCopyWithImpl<$Res, $Val extends AuthUserDataEntity>
    implements $AuthUserDataEntityCopyWith<$Res> {
  _$AuthUserDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUserDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseUserId = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? dob = null,
  }) {
    return _then(
      _value.copyWith(
            firebaseUserId:
                null == firebaseUserId
                    ? _value.firebaseUserId
                    : firebaseUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
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
            dob:
                null == dob
                    ? _value.dob
                    : dob // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthUserDataEntityImplCopyWith<$Res>
    implements $AuthUserDataEntityCopyWith<$Res> {
  factory _$$AuthUserDataEntityImplCopyWith(
    _$AuthUserDataEntityImpl value,
    $Res Function(_$AuthUserDataEntityImpl) then,
  ) = __$$AuthUserDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String firebaseUserId,
    String email,
    String firstName,
    String lastName,
    String phoneNumber,
    DateTime dob,
  });
}

/// @nodoc
class __$$AuthUserDataEntityImplCopyWithImpl<$Res>
    extends _$AuthUserDataEntityCopyWithImpl<$Res, _$AuthUserDataEntityImpl>
    implements _$$AuthUserDataEntityImplCopyWith<$Res> {
  __$$AuthUserDataEntityImplCopyWithImpl(
    _$AuthUserDataEntityImpl _value,
    $Res Function(_$AuthUserDataEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthUserDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseUserId = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? dob = null,
  }) {
    return _then(
      _$AuthUserDataEntityImpl(
        firebaseUserId:
            null == firebaseUserId
                ? _value.firebaseUserId
                : firebaseUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
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
        dob:
            null == dob
                ? _value.dob
                : dob // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserDataEntityImpl implements _AuthUserDataEntity {
  const _$AuthUserDataEntityImpl({
    required this.firebaseUserId,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.dob,
  });

  factory _$AuthUserDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserDataEntityImplFromJson(json);

  @override
  final String firebaseUserId;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final DateTime dob;

  @override
  String toString() {
    return 'AuthUserDataEntity(firebaseUserId: $firebaseUserId, email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserDataEntityImpl &&
            (identical(other.firebaseUserId, firebaseUserId) ||
                other.firebaseUserId == firebaseUserId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firebaseUserId,
    email,
    firstName,
    lastName,
    phoneNumber,
    dob,
  );

  /// Create a copy of AuthUserDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserDataEntityImplCopyWith<_$AuthUserDataEntityImpl> get copyWith =>
      __$$AuthUserDataEntityImplCopyWithImpl<_$AuthUserDataEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserDataEntityImplToJson(this);
  }
}

abstract class _AuthUserDataEntity implements AuthUserDataEntity {
  const factory _AuthUserDataEntity({
    required final String firebaseUserId,
    required final String email,
    required final String firstName,
    required final String lastName,
    required final String phoneNumber,
    required final DateTime dob,
  }) = _$AuthUserDataEntityImpl;

  factory _AuthUserDataEntity.fromJson(Map<String, dynamic> json) =
      _$AuthUserDataEntityImpl.fromJson;

  @override
  String get firebaseUserId;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  DateTime get dob;

  /// Create a copy of AuthUserDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUserDataEntityImplCopyWith<_$AuthUserDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
