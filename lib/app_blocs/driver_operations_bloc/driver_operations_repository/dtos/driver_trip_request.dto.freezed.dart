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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripRequestNotificationDto _$TripRequestNotificationDtoFromJson(
    Map<String, dynamic> json) {
  return _TripRequestNotificationDto.fromJson(json);
}

/// @nodoc
mixin _$TripRequestNotificationDto {
  String get tripId => throw _privateConstructorUsedError;
  LocationDto get pickupLocation => throw _privateConstructorUsedError;
  LocationDto get dropoffLocation => throw _privateConstructorUsedError;
  int get passengerCount => throw _privateConstructorUsedError;
  String get riderFirstName => throw _privateConstructorUsedError;
  String get riderLastName => throw _privateConstructorUsedError;

  /// Serializes this TripRequestNotificationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripRequestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripRequestNotificationDtoCopyWith<TripRequestNotificationDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripRequestNotificationDtoCopyWith<$Res> {
  factory $TripRequestNotificationDtoCopyWith(TripRequestNotificationDto value,
          $Res Function(TripRequestNotificationDto) then) =
      _$TripRequestNotificationDtoCopyWithImpl<$Res,
          TripRequestNotificationDto>;
  @useResult
  $Res call(
      {String tripId,
      LocationDto pickupLocation,
      LocationDto dropoffLocation,
      int passengerCount,
      String riderFirstName,
      String riderLastName});

  $LocationDtoCopyWith<$Res> get pickupLocation;
  $LocationDtoCopyWith<$Res> get dropoffLocation;
}

/// @nodoc
class _$TripRequestNotificationDtoCopyWithImpl<$Res,
        $Val extends TripRequestNotificationDto>
    implements $TripRequestNotificationDtoCopyWith<$Res> {
  _$TripRequestNotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripRequestNotificationDto
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
  }) {
    return _then(_value.copyWith(
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      dropoffLocation: null == dropoffLocation
          ? _value.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      passengerCount: null == passengerCount
          ? _value.passengerCount
          : passengerCount // ignore: cast_nullable_to_non_nullable
              as int,
      riderFirstName: null == riderFirstName
          ? _value.riderFirstName
          : riderFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      riderLastName: null == riderLastName
          ? _value.riderLastName
          : riderLastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TripRequestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get pickupLocation {
    return $LocationDtoCopyWith<$Res>(_value.pickupLocation, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  /// Create a copy of TripRequestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get dropoffLocation {
    return $LocationDtoCopyWith<$Res>(_value.dropoffLocation, (value) {
      return _then(_value.copyWith(dropoffLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripRequestNotificationDtoImplCopyWith<$Res>
    implements $TripRequestNotificationDtoCopyWith<$Res> {
  factory _$$TripRequestNotificationDtoImplCopyWith(
          _$TripRequestNotificationDtoImpl value,
          $Res Function(_$TripRequestNotificationDtoImpl) then) =
      __$$TripRequestNotificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tripId,
      LocationDto pickupLocation,
      LocationDto dropoffLocation,
      int passengerCount,
      String riderFirstName,
      String riderLastName});

  @override
  $LocationDtoCopyWith<$Res> get pickupLocation;
  @override
  $LocationDtoCopyWith<$Res> get dropoffLocation;
}

/// @nodoc
class __$$TripRequestNotificationDtoImplCopyWithImpl<$Res>
    extends _$TripRequestNotificationDtoCopyWithImpl<$Res,
        _$TripRequestNotificationDtoImpl>
    implements _$$TripRequestNotificationDtoImplCopyWith<$Res> {
  __$$TripRequestNotificationDtoImplCopyWithImpl(
      _$TripRequestNotificationDtoImpl _value,
      $Res Function(_$TripRequestNotificationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripRequestNotificationDto
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
  }) {
    return _then(_$TripRequestNotificationDtoImpl(
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      dropoffLocation: null == dropoffLocation
          ? _value.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      passengerCount: null == passengerCount
          ? _value.passengerCount
          : passengerCount // ignore: cast_nullable_to_non_nullable
              as int,
      riderFirstName: null == riderFirstName
          ? _value.riderFirstName
          : riderFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      riderLastName: null == riderLastName
          ? _value.riderLastName
          : riderLastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripRequestNotificationDtoImpl implements _TripRequestNotificationDto {
  const _$TripRequestNotificationDtoImpl(
      {required this.tripId,
      required this.pickupLocation,
      required this.dropoffLocation,
      required this.passengerCount,
      required this.riderFirstName,
      required this.riderLastName});

  factory _$TripRequestNotificationDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TripRequestNotificationDtoImplFromJson(json);

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
  String toString() {
    return 'TripRequestNotificationDto(tripId: $tripId, pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, passengerCount: $passengerCount, riderFirstName: $riderFirstName, riderLastName: $riderLastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRequestNotificationDtoImpl &&
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
                other.riderLastName == riderLastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tripId, pickupLocation,
      dropoffLocation, passengerCount, riderFirstName, riderLastName);

  /// Create a copy of TripRequestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRequestNotificationDtoImplCopyWith<_$TripRequestNotificationDtoImpl>
      get copyWith => __$$TripRequestNotificationDtoImplCopyWithImpl<
          _$TripRequestNotificationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripRequestNotificationDtoImplToJson(
      this,
    );
  }
}

abstract class _TripRequestNotificationDto
    implements TripRequestNotificationDto {
  const factory _TripRequestNotificationDto(
      {required final String tripId,
      required final LocationDto pickupLocation,
      required final LocationDto dropoffLocation,
      required final int passengerCount,
      required final String riderFirstName,
      required final String riderLastName}) = _$TripRequestNotificationDtoImpl;

  factory _TripRequestNotificationDto.fromJson(Map<String, dynamic> json) =
      _$TripRequestNotificationDtoImpl.fromJson;

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

  /// Create a copy of TripRequestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRequestNotificationDtoImplCopyWith<_$TripRequestNotificationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
