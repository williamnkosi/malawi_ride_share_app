// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_trip_request.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverTripRequestDto _$DriverTripRequestDtoFromJson(Map<String, dynamic> json) {
  return _DriverTripRequestDto.fromJson(json);
}

/// @nodoc
mixin _$DriverTripRequestDto {
  String get tripId => throw _privateConstructorUsedError;
  LocationDto get pickupLocation => throw _privateConstructorUsedError;
  LocationDto get dropoffLocation => throw _privateConstructorUsedError;
  int get passengerCount => throw _privateConstructorUsedError;
  String get riderFirstName => throw _privateConstructorUsedError;
  String get riderLastName => throw _privateConstructorUsedError;
  DriverTripRouteDto get route => throw _privateConstructorUsedError;

  /// Serializes this DriverTripRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverTripRequestDtoCopyWith<DriverTripRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTripRequestDtoCopyWith<$Res> {
  factory $DriverTripRequestDtoCopyWith(
    DriverTripRequestDto value,
    $Res Function(DriverTripRequestDto) then,
  ) = _$DriverTripRequestDtoCopyWithImpl<$Res, DriverTripRequestDto>;
  @useResult
  $Res call({
    String tripId,
    LocationDto pickupLocation,
    LocationDto dropoffLocation,
    int passengerCount,
    String riderFirstName,
    String riderLastName,
    DriverTripRouteDto route,
  });

  $LocationDtoCopyWith<$Res> get pickupLocation;
  $LocationDtoCopyWith<$Res> get dropoffLocation;
  $DriverTripRouteDtoCopyWith<$Res> get route;
}

/// @nodoc
class _$DriverTripRequestDtoCopyWithImpl<
  $Res,
  $Val extends DriverTripRequestDto
>
    implements $DriverTripRequestDtoCopyWith<$Res> {
  _$DriverTripRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? pickupLocation = null,
    Object? dropoffLocation = null,
    Object? passengerCount = null,
    Object? riderFirstName = null,
    Object? riderLastName = null,
    Object? route = null,
  }) {
    return _then(
      _value.copyWith(
            tripId:
                null == tripId
                    ? _value.tripId
                    : tripId // ignore: cast_nullable_to_non_nullable
                        as String,
            pickupLocation:
                null == pickupLocation
                    ? _value.pickupLocation
                    : pickupLocation // ignore: cast_nullable_to_non_nullable
                        as LocationDto,
            dropoffLocation:
                null == dropoffLocation
                    ? _value.dropoffLocation
                    : dropoffLocation // ignore: cast_nullable_to_non_nullable
                        as LocationDto,
            passengerCount:
                null == passengerCount
                    ? _value.passengerCount
                    : passengerCount // ignore: cast_nullable_to_non_nullable
                        as int,
            riderFirstName:
                null == riderFirstName
                    ? _value.riderFirstName
                    : riderFirstName // ignore: cast_nullable_to_non_nullable
                        as String,
            riderLastName:
                null == riderLastName
                    ? _value.riderLastName
                    : riderLastName // ignore: cast_nullable_to_non_nullable
                        as String,
            route:
                null == route
                    ? _value.route
                    : route // ignore: cast_nullable_to_non_nullable
                        as DriverTripRouteDto,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get pickupLocation {
    return $LocationDtoCopyWith<$Res>(_value.pickupLocation, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get dropoffLocation {
    return $LocationDtoCopyWith<$Res>(_value.dropoffLocation, (value) {
      return _then(_value.copyWith(dropoffLocation: value) as $Val);
    });
  }

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverTripRouteDtoCopyWith<$Res> get route {
    return $DriverTripRouteDtoCopyWith<$Res>(_value.route, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverTripRequestDtoImplCopyWith<$Res>
    implements $DriverTripRequestDtoCopyWith<$Res> {
  factory _$$DriverTripRequestDtoImplCopyWith(
    _$DriverTripRequestDtoImpl value,
    $Res Function(_$DriverTripRequestDtoImpl) then,
  ) = __$$DriverTripRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String tripId,
    LocationDto pickupLocation,
    LocationDto dropoffLocation,
    int passengerCount,
    String riderFirstName,
    String riderLastName,
    DriverTripRouteDto route,
  });

  @override
  $LocationDtoCopyWith<$Res> get pickupLocation;
  @override
  $LocationDtoCopyWith<$Res> get dropoffLocation;
  @override
  $DriverTripRouteDtoCopyWith<$Res> get route;
}

/// @nodoc
class __$$DriverTripRequestDtoImplCopyWithImpl<$Res>
    extends _$DriverTripRequestDtoCopyWithImpl<$Res, _$DriverTripRequestDtoImpl>
    implements _$$DriverTripRequestDtoImplCopyWith<$Res> {
  __$$DriverTripRequestDtoImplCopyWithImpl(
    _$DriverTripRequestDtoImpl _value,
    $Res Function(_$DriverTripRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? pickupLocation = null,
    Object? dropoffLocation = null,
    Object? passengerCount = null,
    Object? riderFirstName = null,
    Object? riderLastName = null,
    Object? route = null,
  }) {
    return _then(
      _$DriverTripRequestDtoImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        pickupLocation:
            null == pickupLocation
                ? _value.pickupLocation
                : pickupLocation // ignore: cast_nullable_to_non_nullable
                    as LocationDto,
        dropoffLocation:
            null == dropoffLocation
                ? _value.dropoffLocation
                : dropoffLocation // ignore: cast_nullable_to_non_nullable
                    as LocationDto,
        passengerCount:
            null == passengerCount
                ? _value.passengerCount
                : passengerCount // ignore: cast_nullable_to_non_nullable
                    as int,
        riderFirstName:
            null == riderFirstName
                ? _value.riderFirstName
                : riderFirstName // ignore: cast_nullable_to_non_nullable
                    as String,
        riderLastName:
            null == riderLastName
                ? _value.riderLastName
                : riderLastName // ignore: cast_nullable_to_non_nullable
                    as String,
        route:
            null == route
                ? _value.route
                : route // ignore: cast_nullable_to_non_nullable
                    as DriverTripRouteDto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverTripRequestDtoImpl extends _DriverTripRequestDto {
  const _$DriverTripRequestDtoImpl({
    required this.tripId,
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.passengerCount,
    required this.riderFirstName,
    required this.riderLastName,
    required this.route,
  }) : super._();

  factory _$DriverTripRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverTripRequestDtoImplFromJson(json);

  @override
  final String tripId;
  @override
  final LocationDto pickupLocation;
  @override
  final LocationDto dropoffLocation;
  @override
  final int passengerCount;
  @override
  final String riderFirstName;
  @override
  final String riderLastName;
  @override
  final DriverTripRouteDto route;

  @override
  String toString() {
    return 'DriverTripRequestDto(tripId: $tripId, pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, passengerCount: $passengerCount, riderFirstName: $riderFirstName, riderLastName: $riderLastName, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripRequestDtoImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.passengerCount, passengerCount) ||
                other.passengerCount == passengerCount) &&
            (identical(other.riderFirstName, riderFirstName) ||
                other.riderFirstName == riderFirstName) &&
            (identical(other.riderLastName, riderLastName) ||
                other.riderLastName == riderLastName) &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    pickupLocation,
    dropoffLocation,
    passengerCount,
    riderFirstName,
    riderLastName,
    route,
  );

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripRequestDtoImplCopyWith<_$DriverTripRequestDtoImpl>
  get copyWith =>
      __$$DriverTripRequestDtoImplCopyWithImpl<_$DriverTripRequestDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverTripRequestDtoImplToJson(this);
  }
}

abstract class _DriverTripRequestDto extends DriverTripRequestDto {
  const factory _DriverTripRequestDto({
    required final String tripId,
    required final LocationDto pickupLocation,
    required final LocationDto dropoffLocation,
    required final int passengerCount,
    required final String riderFirstName,
    required final String riderLastName,
    required final DriverTripRouteDto route,
  }) = _$DriverTripRequestDtoImpl;
  const _DriverTripRequestDto._() : super._();

  factory _DriverTripRequestDto.fromJson(Map<String, dynamic> json) =
      _$DriverTripRequestDtoImpl.fromJson;

  @override
  String get tripId;
  @override
  LocationDto get pickupLocation;
  @override
  LocationDto get dropoffLocation;
  @override
  int get passengerCount;
  @override
  String get riderFirstName;
  @override
  String get riderLastName;
  @override
  DriverTripRouteDto get route;

  /// Create a copy of DriverTripRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripRequestDtoImplCopyWith<_$DriverTripRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
