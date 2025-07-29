// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_driver_location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateDriverLocationDto _$UpdateDriverLocationDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateDriverLocationDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateDriverLocationDto {
  String get firebaseId => throw _privateConstructorUsedError;
  LocationDto get location => throw _privateConstructorUsedError;
  DriverStatus get driverStatus => throw _privateConstructorUsedError;

  /// Serializes this UpdateDriverLocationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDriverLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDriverLocationDtoCopyWith<UpdateDriverLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDriverLocationDtoCopyWith<$Res> {
  factory $UpdateDriverLocationDtoCopyWith(UpdateDriverLocationDto value,
          $Res Function(UpdateDriverLocationDto) then) =
      _$UpdateDriverLocationDtoCopyWithImpl<$Res, UpdateDriverLocationDto>;
  @useResult
  $Res call(
      {String firebaseId, LocationDto location, DriverStatus driverStatus});

  $LocationDtoCopyWith<$Res> get location;
}

/// @nodoc
class _$UpdateDriverLocationDtoCopyWithImpl<$Res,
        $Val extends UpdateDriverLocationDto>
    implements $UpdateDriverLocationDtoCopyWith<$Res> {
  _$UpdateDriverLocationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDriverLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? location = null,
    Object? driverStatus = null,
  }) {
    return _then(_value.copyWith(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      driverStatus: null == driverStatus
          ? _value.driverStatus
          : driverStatus // ignore: cast_nullable_to_non_nullable
              as DriverStatus,
    ) as $Val);
  }

  /// Create a copy of UpdateDriverLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateDriverLocationDtoImplCopyWith<$Res>
    implements $UpdateDriverLocationDtoCopyWith<$Res> {
  factory _$$UpdateDriverLocationDtoImplCopyWith(
          _$UpdateDriverLocationDtoImpl value,
          $Res Function(_$UpdateDriverLocationDtoImpl) then) =
      __$$UpdateDriverLocationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firebaseId, LocationDto location, DriverStatus driverStatus});

  @override
  $LocationDtoCopyWith<$Res> get location;
}

/// @nodoc
class __$$UpdateDriverLocationDtoImplCopyWithImpl<$Res>
    extends _$UpdateDriverLocationDtoCopyWithImpl<$Res,
        _$UpdateDriverLocationDtoImpl>
    implements _$$UpdateDriverLocationDtoImplCopyWith<$Res> {
  __$$UpdateDriverLocationDtoImplCopyWithImpl(
      _$UpdateDriverLocationDtoImpl _value,
      $Res Function(_$UpdateDriverLocationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateDriverLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? location = null,
    Object? driverStatus = null,
  }) {
    return _then(_$UpdateDriverLocationDtoImpl(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      driverStatus: null == driverStatus
          ? _value.driverStatus
          : driverStatus // ignore: cast_nullable_to_non_nullable
              as DriverStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateDriverLocationDtoImpl implements _UpdateDriverLocationDto {
  const _$UpdateDriverLocationDtoImpl(
      {required this.firebaseId,
      required this.location,
      required this.driverStatus});

  factory _$UpdateDriverLocationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateDriverLocationDtoImplFromJson(json);

  @override
  final String firebaseId;
  @override
  final LocationDto location;
  @override
  final DriverStatus driverStatus;

  @override
  String toString() {
    return 'UpdateDriverLocationDto(firebaseId: $firebaseId, location: $location, driverStatus: $driverStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDriverLocationDtoImpl &&
            (identical(other.firebaseId, firebaseId) ||
                other.firebaseId == firebaseId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.driverStatus, driverStatus) ||
                other.driverStatus == driverStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firebaseId, location, driverStatus);

  /// Create a copy of UpdateDriverLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDriverLocationDtoImplCopyWith<_$UpdateDriverLocationDtoImpl>
      get copyWith => __$$UpdateDriverLocationDtoImplCopyWithImpl<
          _$UpdateDriverLocationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateDriverLocationDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateDriverLocationDto implements UpdateDriverLocationDto {
  const factory _UpdateDriverLocationDto(
          {required final String firebaseId,
          required final LocationDto location,
          required final DriverStatus driverStatus}) =
      _$UpdateDriverLocationDtoImpl;

  factory _UpdateDriverLocationDto.fromJson(Map<String, dynamic> json) =
      _$UpdateDriverLocationDtoImpl.fromJson;

  @override
  String get firebaseId;
  @override
  LocationDto get location;
  @override
  DriverStatus get driverStatus;

  /// Create a copy of UpdateDriverLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDriverLocationDtoImplCopyWith<_$UpdateDriverLocationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
