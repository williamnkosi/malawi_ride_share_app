// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_connect_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DriverConnectDto _$DriverConnectDtoFromJson(Map<String, dynamic> json) {
  return _DriverConnectDto.fromJson(json);
}

/// @nodoc
mixin _$DriverConnectDto {
  String get firebaseId => throw _privateConstructorUsedError;
  LocationDto? get initialLocation => throw _privateConstructorUsedError;

  /// Serializes this DriverConnectDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverConnectDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverConnectDtoCopyWith<DriverConnectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverConnectDtoCopyWith<$Res> {
  factory $DriverConnectDtoCopyWith(
          DriverConnectDto value, $Res Function(DriverConnectDto) then) =
      _$DriverConnectDtoCopyWithImpl<$Res, DriverConnectDto>;
  @useResult
  $Res call({String firebaseId, LocationDto? initialLocation});

  $LocationDtoCopyWith<$Res>? get initialLocation;
}

/// @nodoc
class _$DriverConnectDtoCopyWithImpl<$Res, $Val extends DriverConnectDto>
    implements $DriverConnectDtoCopyWith<$Res> {
  _$DriverConnectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverConnectDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? initialLocation = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      initialLocation: freezed == initialLocation
          ? _value.initialLocation
          : initialLocation // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
    ) as $Val);
  }

  /// Create a copy of DriverConnectDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res>? get initialLocation {
    if (_value.initialLocation == null) {
      return null;
    }

    return $LocationDtoCopyWith<$Res>(_value.initialLocation!, (value) {
      return _then(_value.copyWith(initialLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverConnectDtoImplCopyWith<$Res>
    implements $DriverConnectDtoCopyWith<$Res> {
  factory _$$DriverConnectDtoImplCopyWith(_$DriverConnectDtoImpl value,
          $Res Function(_$DriverConnectDtoImpl) then) =
      __$$DriverConnectDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firebaseId, LocationDto? initialLocation});

  @override
  $LocationDtoCopyWith<$Res>? get initialLocation;
}

/// @nodoc
class __$$DriverConnectDtoImplCopyWithImpl<$Res>
    extends _$DriverConnectDtoCopyWithImpl<$Res, _$DriverConnectDtoImpl>
    implements _$$DriverConnectDtoImplCopyWith<$Res> {
  __$$DriverConnectDtoImplCopyWithImpl(_$DriverConnectDtoImpl _value,
      $Res Function(_$DriverConnectDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverConnectDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? initialLocation = freezed,
  }) {
    return _then(_$DriverConnectDtoImpl(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      initialLocation: freezed == initialLocation
          ? _value.initialLocation
          : initialLocation // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverConnectDtoImpl implements _DriverConnectDto {
  const _$DriverConnectDtoImpl(
      {required this.firebaseId, this.initialLocation});

  factory _$DriverConnectDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverConnectDtoImplFromJson(json);

  @override
  final String firebaseId;
  @override
  final LocationDto? initialLocation;

  @override
  String toString() {
    return 'DriverConnectDto(firebaseId: $firebaseId, initialLocation: $initialLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverConnectDtoImpl &&
            (identical(other.firebaseId, firebaseId) ||
                other.firebaseId == firebaseId) &&
            (identical(other.initialLocation, initialLocation) ||
                other.initialLocation == initialLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firebaseId, initialLocation);

  /// Create a copy of DriverConnectDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverConnectDtoImplCopyWith<_$DriverConnectDtoImpl> get copyWith =>
      __$$DriverConnectDtoImplCopyWithImpl<_$DriverConnectDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverConnectDtoImplToJson(
      this,
    );
  }
}

abstract class _DriverConnectDto implements DriverConnectDto {
  const factory _DriverConnectDto(
      {required final String firebaseId,
      final LocationDto? initialLocation}) = _$DriverConnectDtoImpl;

  factory _DriverConnectDto.fromJson(Map<String, dynamic> json) =
      _$DriverConnectDtoImpl.fromJson;

  @override
  String get firebaseId;
  @override
  LocationDto? get initialLocation;

  /// Create a copy of DriverConnectDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverConnectDtoImplCopyWith<_$DriverConnectDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
