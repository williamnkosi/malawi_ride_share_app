// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripRequest {
  String get id => throw _privateConstructorUsedError;
  String get passengerId => throw _privateConstructorUsedError;
  String get passengerName => throw _privateConstructorUsedError;
  Position get pickupLocation => throw _privateConstructorUsedError;
  Position get dropoffLocation => throw _privateConstructorUsedError;
  String get pickupAddress => throw _privateConstructorUsedError;
  String get dropoffAddress => throw _privateConstructorUsedError;
  double get estimatedDistance => throw _privateConstructorUsedError;
  Duration get estimatedDuration => throw _privateConstructorUsedError;
  double get estimatedFare => throw _privateConstructorUsedError;
  DateTime get requestTime => throw _privateConstructorUsedError;
  String? get specialInstructions => throw _privateConstructorUsedError;

  /// Create a copy of TripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripRequestCopyWith<TripRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripRequestCopyWith<$Res> {
  factory $TripRequestCopyWith(
          TripRequest value, $Res Function(TripRequest) then) =
      _$TripRequestCopyWithImpl<$Res, TripRequest>;
  @useResult
  $Res call(
      {String id,
      String passengerId,
      String passengerName,
      Position pickupLocation,
      Position dropoffLocation,
      String pickupAddress,
      String dropoffAddress,
      double estimatedDistance,
      Duration estimatedDuration,
      double estimatedFare,
      DateTime requestTime,
      String? specialInstructions});
}

/// @nodoc
class _$TripRequestCopyWithImpl<$Res, $Val extends TripRequest>
    implements $TripRequestCopyWith<$Res> {
  _$TripRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? passengerId = null,
    Object? passengerName = null,
    Object? pickupLocation = null,
    Object? dropoffLocation = null,
    Object? pickupAddress = null,
    Object? dropoffAddress = null,
    Object? estimatedDistance = null,
    Object? estimatedDuration = null,
    Object? estimatedFare = null,
    Object? requestTime = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      passengerId: null == passengerId
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerName: null == passengerName
          ? _value.passengerName
          : passengerName // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      dropoffLocation: null == dropoffLocation
          ? _value.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropoffAddress: null == dropoffAddress
          ? _value.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDistance: null == estimatedDistance
          ? _value.estimatedDistance
          : estimatedDistance // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedDuration: null == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      estimatedFare: null == estimatedFare
          ? _value.estimatedFare
          : estimatedFare // ignore: cast_nullable_to_non_nullable
              as double,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      specialInstructions: freezed == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripRequestImplCopyWith<$Res>
    implements $TripRequestCopyWith<$Res> {
  factory _$$TripRequestImplCopyWith(
          _$TripRequestImpl value, $Res Function(_$TripRequestImpl) then) =
      __$$TripRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String passengerId,
      String passengerName,
      Position pickupLocation,
      Position dropoffLocation,
      String pickupAddress,
      String dropoffAddress,
      double estimatedDistance,
      Duration estimatedDuration,
      double estimatedFare,
      DateTime requestTime,
      String? specialInstructions});
}

/// @nodoc
class __$$TripRequestImplCopyWithImpl<$Res>
    extends _$TripRequestCopyWithImpl<$Res, _$TripRequestImpl>
    implements _$$TripRequestImplCopyWith<$Res> {
  __$$TripRequestImplCopyWithImpl(
      _$TripRequestImpl _value, $Res Function(_$TripRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? passengerId = null,
    Object? passengerName = null,
    Object? pickupLocation = null,
    Object? dropoffLocation = null,
    Object? pickupAddress = null,
    Object? dropoffAddress = null,
    Object? estimatedDistance = null,
    Object? estimatedDuration = null,
    Object? estimatedFare = null,
    Object? requestTime = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(_$TripRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      passengerId: null == passengerId
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerName: null == passengerName
          ? _value.passengerName
          : passengerName // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      dropoffLocation: null == dropoffLocation
          ? _value.dropoffLocation
          : dropoffLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropoffAddress: null == dropoffAddress
          ? _value.dropoffAddress
          : dropoffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDistance: null == estimatedDistance
          ? _value.estimatedDistance
          : estimatedDistance // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedDuration: null == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      estimatedFare: null == estimatedFare
          ? _value.estimatedFare
          : estimatedFare // ignore: cast_nullable_to_non_nullable
              as double,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      specialInstructions: freezed == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripRequestImpl implements _TripRequest {
  const _$TripRequestImpl(
      {required this.id,
      required this.passengerId,
      required this.passengerName,
      required this.pickupLocation,
      required this.dropoffLocation,
      required this.pickupAddress,
      required this.dropoffAddress,
      required this.estimatedDistance,
      required this.estimatedDuration,
      required this.estimatedFare,
      required this.requestTime,
      this.specialInstructions});

  @override
  final String id;
  @override
  final String passengerId;
  @override
  final String passengerName;
  @override
  final Position pickupLocation;
  @override
  final Position dropoffLocation;
  @override
  final String pickupAddress;
  @override
  final String dropoffAddress;
  @override
  final double estimatedDistance;
  @override
  final Duration estimatedDuration;
  @override
  final double estimatedFare;
  @override
  final DateTime requestTime;
  @override
  final String? specialInstructions;

  @override
  String toString() {
    return 'TripRequest(id: $id, passengerId: $passengerId, passengerName: $passengerName, pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, estimatedDistance: $estimatedDistance, estimatedDuration: $estimatedDuration, estimatedFare: $estimatedFare, requestTime: $requestTime, specialInstructions: $specialInstructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.passengerId, passengerId) ||
                other.passengerId == passengerId) &&
            (identical(other.passengerName, passengerName) ||
                other.passengerName == passengerName) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropoffAddress, dropoffAddress) ||
                other.dropoffAddress == dropoffAddress) &&
            (identical(other.estimatedDistance, estimatedDistance) ||
                other.estimatedDistance == estimatedDistance) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.estimatedFare, estimatedFare) ||
                other.estimatedFare == estimatedFare) &&
            (identical(other.requestTime, requestTime) ||
                other.requestTime == requestTime) &&
            (identical(other.specialInstructions, specialInstructions) ||
                other.specialInstructions == specialInstructions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      passengerId,
      passengerName,
      pickupLocation,
      dropoffLocation,
      pickupAddress,
      dropoffAddress,
      estimatedDistance,
      estimatedDuration,
      estimatedFare,
      requestTime,
      specialInstructions);

  /// Create a copy of TripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRequestImplCopyWith<_$TripRequestImpl> get copyWith =>
      __$$TripRequestImplCopyWithImpl<_$TripRequestImpl>(this, _$identity);
}

abstract class _TripRequest implements TripRequest {
  const factory _TripRequest(
      {required final String id,
      required final String passengerId,
      required final String passengerName,
      required final Position pickupLocation,
      required final Position dropoffLocation,
      required final String pickupAddress,
      required final String dropoffAddress,
      required final double estimatedDistance,
      required final Duration estimatedDuration,
      required final double estimatedFare,
      required final DateTime requestTime,
      final String? specialInstructions}) = _$TripRequestImpl;

  @override
  String get id;
  @override
  String get passengerId;
  @override
  String get passengerName;
  @override
  Position get pickupLocation;
  @override
  Position get dropoffLocation;
  @override
  String get pickupAddress;
  @override
  String get dropoffAddress;
  @override
  double get estimatedDistance;
  @override
  Duration get estimatedDuration;
  @override
  double get estimatedFare;
  @override
  DateTime get requestTime;
  @override
  String? get specialInstructions;

  /// Create a copy of TripRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRequestImplCopyWith<_$TripRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
