// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rider_request_trip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RiderRequestLocationDto _$RiderRequestLocationDtoFromJson(
  Map<String, dynamic> json,
) {
  return _RiderRequestLocationDto.fromJson(json);
}

/// @nodoc
mixin _$RiderRequestLocationDto {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this RiderRequestLocationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiderRequestLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiderRequestLocationDtoCopyWith<RiderRequestLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderRequestLocationDtoCopyWith<$Res> {
  factory $RiderRequestLocationDtoCopyWith(
    RiderRequestLocationDto value,
    $Res Function(RiderRequestLocationDto) then,
  ) = _$RiderRequestLocationDtoCopyWithImpl<$Res, RiderRequestLocationDto>;
  @useResult
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class _$RiderRequestLocationDtoCopyWithImpl<
  $Res,
  $Val extends RiderRequestLocationDto
>
    implements $RiderRequestLocationDtoCopyWith<$Res> {
  _$RiderRequestLocationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderRequestLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RiderRequestLocationDtoImplCopyWith<$Res>
    implements $RiderRequestLocationDtoCopyWith<$Res> {
  factory _$$RiderRequestLocationDtoImplCopyWith(
    _$RiderRequestLocationDtoImpl value,
    $Res Function(_$RiderRequestLocationDtoImpl) then,
  ) = __$$RiderRequestLocationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class __$$RiderRequestLocationDtoImplCopyWithImpl<$Res>
    extends
        _$RiderRequestLocationDtoCopyWithImpl<
          $Res,
          _$RiderRequestLocationDtoImpl
        >
    implements _$$RiderRequestLocationDtoImplCopyWith<$Res> {
  __$$RiderRequestLocationDtoImplCopyWithImpl(
    _$RiderRequestLocationDtoImpl _value,
    $Res Function(_$RiderRequestLocationDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderRequestLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(
      _$RiderRequestLocationDtoImpl(
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RiderRequestLocationDtoImpl extends _RiderRequestLocationDto {
  const _$RiderRequestLocationDtoImpl({
    required this.latitude,
    required this.longitude,
    required this.address,
  }) : super._();

  factory _$RiderRequestLocationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiderRequestLocationDtoImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String address;

  @override
  String toString() {
    return 'RiderRequestLocationDto(latitude: $latitude, longitude: $longitude, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderRequestLocationDtoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, address);

  /// Create a copy of RiderRequestLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderRequestLocationDtoImplCopyWith<_$RiderRequestLocationDtoImpl>
  get copyWith => __$$RiderRequestLocationDtoImplCopyWithImpl<
    _$RiderRequestLocationDtoImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiderRequestLocationDtoImplToJson(this);
  }
}

abstract class _RiderRequestLocationDto extends RiderRequestLocationDto {
  const factory _RiderRequestLocationDto({
    required final double latitude,
    required final double longitude,
    required final String address,
  }) = _$RiderRequestLocationDtoImpl;
  const _RiderRequestLocationDto._() : super._();

  factory _RiderRequestLocationDto.fromJson(Map<String, dynamic> json) =
      _$RiderRequestLocationDtoImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get address;

  /// Create a copy of RiderRequestLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderRequestLocationDtoImplCopyWith<_$RiderRequestLocationDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RiderRequestTripDto _$RiderRequestTripDtoFromJson(Map<String, dynamic> json) {
  return _RiderRequestTripDto.fromJson(json);
}

/// @nodoc
mixin _$RiderRequestTripDto {
  RiderRequestLocationDto get pickupLocation =>
      throw _privateConstructorUsedError;
  RiderRequestLocationDto get dropoffLocation =>
      throw _privateConstructorUsedError;
  int get passengerCount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this RiderRequestTripDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiderRequestTripDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiderRequestTripDtoCopyWith<RiderRequestTripDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderRequestTripDtoCopyWith<$Res> {
  factory $RiderRequestTripDtoCopyWith(
    RiderRequestTripDto value,
    $Res Function(RiderRequestTripDto) then,
  ) = _$RiderRequestTripDtoCopyWithImpl<$Res, RiderRequestTripDto>;
  @useResult
  $Res call({
    RiderRequestLocationDto pickupLocation,
    RiderRequestLocationDto dropoffLocation,
    int passengerCount,
    String? notes,
  });

  $RiderRequestLocationDtoCopyWith<$Res> get pickupLocation;
  $RiderRequestLocationDtoCopyWith<$Res> get dropoffLocation;
}

/// @nodoc
class _$RiderRequestTripDtoCopyWithImpl<$Res, $Val extends RiderRequestTripDto>
    implements $RiderRequestTripDtoCopyWith<$Res> {
  _$RiderRequestTripDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderRequestTripDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = null,
    Object? dropoffLocation = null,
    Object? passengerCount = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            pickupLocation:
                null == pickupLocation
                    ? _value.pickupLocation
                    : pickupLocation // ignore: cast_nullable_to_non_nullable
                        as RiderRequestLocationDto,
            dropoffLocation:
                null == dropoffLocation
                    ? _value.dropoffLocation
                    : dropoffLocation // ignore: cast_nullable_to_non_nullable
                        as RiderRequestLocationDto,
            passengerCount:
                null == passengerCount
                    ? _value.passengerCount
                    : passengerCount // ignore: cast_nullable_to_non_nullable
                        as int,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of RiderRequestTripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RiderRequestLocationDtoCopyWith<$Res> get pickupLocation {
    return $RiderRequestLocationDtoCopyWith<$Res>(_value.pickupLocation, (
      value,
    ) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  /// Create a copy of RiderRequestTripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RiderRequestLocationDtoCopyWith<$Res> get dropoffLocation {
    return $RiderRequestLocationDtoCopyWith<$Res>(_value.dropoffLocation, (
      value,
    ) {
      return _then(_value.copyWith(dropoffLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RiderRequestTripDtoImplCopyWith<$Res>
    implements $RiderRequestTripDtoCopyWith<$Res> {
  factory _$$RiderRequestTripDtoImplCopyWith(
    _$RiderRequestTripDtoImpl value,
    $Res Function(_$RiderRequestTripDtoImpl) then,
  ) = __$$RiderRequestTripDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RiderRequestLocationDto pickupLocation,
    RiderRequestLocationDto dropoffLocation,
    int passengerCount,
    String? notes,
  });

  @override
  $RiderRequestLocationDtoCopyWith<$Res> get pickupLocation;
  @override
  $RiderRequestLocationDtoCopyWith<$Res> get dropoffLocation;
}

/// @nodoc
class __$$RiderRequestTripDtoImplCopyWithImpl<$Res>
    extends _$RiderRequestTripDtoCopyWithImpl<$Res, _$RiderRequestTripDtoImpl>
    implements _$$RiderRequestTripDtoImplCopyWith<$Res> {
  __$$RiderRequestTripDtoImplCopyWithImpl(
    _$RiderRequestTripDtoImpl _value,
    $Res Function(_$RiderRequestTripDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderRequestTripDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = null,
    Object? dropoffLocation = null,
    Object? passengerCount = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$RiderRequestTripDtoImpl(
        pickupLocation:
            null == pickupLocation
                ? _value.pickupLocation
                : pickupLocation // ignore: cast_nullable_to_non_nullable
                    as RiderRequestLocationDto,
        dropoffLocation:
            null == dropoffLocation
                ? _value.dropoffLocation
                : dropoffLocation // ignore: cast_nullable_to_non_nullable
                    as RiderRequestLocationDto,
        passengerCount:
            null == passengerCount
                ? _value.passengerCount
                : passengerCount // ignore: cast_nullable_to_non_nullable
                    as int,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RiderRequestTripDtoImpl extends _RiderRequestTripDto {
  const _$RiderRequestTripDtoImpl({
    required this.pickupLocation,
    required this.dropoffLocation,
    this.passengerCount = 1,
    this.notes,
  }) : super._();

  factory _$RiderRequestTripDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiderRequestTripDtoImplFromJson(json);

  @override
  final RiderRequestLocationDto pickupLocation;
  @override
  final RiderRequestLocationDto dropoffLocation;
  @override
  @JsonKey()
  final int passengerCount;
  @override
  final String? notes;

  @override
  String toString() {
    return 'RiderRequestTripDto(pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, passengerCount: $passengerCount, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderRequestTripDtoImpl &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.passengerCount, passengerCount) ||
                other.passengerCount == passengerCount) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    pickupLocation,
    dropoffLocation,
    passengerCount,
    notes,
  );

  /// Create a copy of RiderRequestTripDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderRequestTripDtoImplCopyWith<_$RiderRequestTripDtoImpl> get copyWith =>
      __$$RiderRequestTripDtoImplCopyWithImpl<_$RiderRequestTripDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RiderRequestTripDtoImplToJson(this);
  }
}

abstract class _RiderRequestTripDto extends RiderRequestTripDto {
  const factory _RiderRequestTripDto({
    required final RiderRequestLocationDto pickupLocation,
    required final RiderRequestLocationDto dropoffLocation,
    final int passengerCount,
    final String? notes,
  }) = _$RiderRequestTripDtoImpl;
  const _RiderRequestTripDto._() : super._();

  factory _RiderRequestTripDto.fromJson(Map<String, dynamic> json) =
      _$RiderRequestTripDtoImpl.fromJson;

  @override
  RiderRequestLocationDto get pickupLocation;
  @override
  RiderRequestLocationDto get dropoffLocation;
  @override
  int get passengerCount;
  @override
  String? get notes;

  /// Create a copy of RiderRequestTripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderRequestTripDtoImplCopyWith<_$RiderRequestTripDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
