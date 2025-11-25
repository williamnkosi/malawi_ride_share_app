// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Trip {
  String get id => throw _privateConstructorUsedError;
  String get passengerId => throw _privateConstructorUsedError;
  String get passengerName => throw _privateConstructorUsedError;
  Position get pickupLocation => throw _privateConstructorUsedError;
  Position get dropoffLocation => throw _privateConstructorUsedError;
  String get pickupAddress => throw _privateConstructorUsedError;
  String get dropoffAddress => throw _privateConstructorUsedError;
  double get estimatedDistance => throw _privateConstructorUsedError;
  double get estimatedFare => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get actualPickupTime => throw _privateConstructorUsedError;
  DateTime? get actualDropoffTime => throw _privateConstructorUsedError;
  double? get actualDistance => throw _privateConstructorUsedError;
  Duration? get actualDuration => throw _privateConstructorUsedError;
  String? get tripStatus => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
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
      double estimatedFare,
      DateTime startTime,
      DateTime? actualPickupTime,
      DateTime? actualDropoffTime,
      double? actualDistance,
      Duration? actualDuration,
      String? tripStatus});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
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
    Object? estimatedFare = null,
    Object? startTime = null,
    Object? actualPickupTime = freezed,
    Object? actualDropoffTime = freezed,
    Object? actualDistance = freezed,
    Object? actualDuration = freezed,
    Object? tripStatus = freezed,
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
      estimatedFare: null == estimatedFare
          ? _value.estimatedFare
          : estimatedFare // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actualPickupTime: freezed == actualPickupTime
          ? _value.actualPickupTime
          : actualPickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDropoffTime: freezed == actualDropoffTime
          ? _value.actualDropoffTime
          : actualDropoffTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDistance: freezed == actualDistance
          ? _value.actualDistance
          : actualDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      actualDuration: freezed == actualDuration
          ? _value.actualDuration
          : actualDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      tripStatus: freezed == tripStatus
          ? _value.tripStatus
          : tripStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
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
      double estimatedFare,
      DateTime startTime,
      DateTime? actualPickupTime,
      DateTime? actualDropoffTime,
      double? actualDistance,
      Duration? actualDuration,
      String? tripStatus});
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trip
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
    Object? estimatedFare = null,
    Object? startTime = null,
    Object? actualPickupTime = freezed,
    Object? actualDropoffTime = freezed,
    Object? actualDistance = freezed,
    Object? actualDuration = freezed,
    Object? tripStatus = freezed,
  }) {
    return _then(_$TripImpl(
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
      estimatedFare: null == estimatedFare
          ? _value.estimatedFare
          : estimatedFare // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actualPickupTime: freezed == actualPickupTime
          ? _value.actualPickupTime
          : actualPickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDropoffTime: freezed == actualDropoffTime
          ? _value.actualDropoffTime
          : actualDropoffTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDistance: freezed == actualDistance
          ? _value.actualDistance
          : actualDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      actualDuration: freezed == actualDuration
          ? _value.actualDuration
          : actualDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      tripStatus: freezed == tripStatus
          ? _value.tripStatus
          : tripStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripImpl implements _Trip {
  const _$TripImpl(
      {required this.id,
      required this.passengerId,
      required this.passengerName,
      required this.pickupLocation,
      required this.dropoffLocation,
      required this.pickupAddress,
      required this.dropoffAddress,
      required this.estimatedDistance,
      required this.estimatedFare,
      required this.startTime,
      this.actualPickupTime,
      this.actualDropoffTime,
      this.actualDistance,
      this.actualDuration,
      this.tripStatus});

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
  final double estimatedFare;
  @override
  final DateTime startTime;
  @override
  final DateTime? actualPickupTime;
  @override
  final DateTime? actualDropoffTime;
  @override
  final double? actualDistance;
  @override
  final Duration? actualDuration;
  @override
  final String? tripStatus;

  @override
  String toString() {
    return 'Trip(id: $id, passengerId: $passengerId, passengerName: $passengerName, pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, estimatedDistance: $estimatedDistance, estimatedFare: $estimatedFare, startTime: $startTime, actualPickupTime: $actualPickupTime, actualDropoffTime: $actualDropoffTime, actualDistance: $actualDistance, actualDuration: $actualDuration, tripStatus: $tripStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
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
            (identical(other.estimatedFare, estimatedFare) ||
                other.estimatedFare == estimatedFare) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.actualPickupTime, actualPickupTime) ||
                other.actualPickupTime == actualPickupTime) &&
            (identical(other.actualDropoffTime, actualDropoffTime) ||
                other.actualDropoffTime == actualDropoffTime) &&
            (identical(other.actualDistance, actualDistance) ||
                other.actualDistance == actualDistance) &&
            (identical(other.actualDuration, actualDuration) ||
                other.actualDuration == actualDuration) &&
            (identical(other.tripStatus, tripStatus) ||
                other.tripStatus == tripStatus));
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
      estimatedFare,
      startTime,
      actualPickupTime,
      actualDropoffTime,
      actualDistance,
      actualDuration,
      tripStatus);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {required final String id,
      required final String passengerId,
      required final String passengerName,
      required final Position pickupLocation,
      required final Position dropoffLocation,
      required final String pickupAddress,
      required final String dropoffAddress,
      required final double estimatedDistance,
      required final double estimatedFare,
      required final DateTime startTime,
      final DateTime? actualPickupTime,
      final DateTime? actualDropoffTime,
      final double? actualDistance,
      final Duration? actualDuration,
      final String? tripStatus}) = _$TripImpl;

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
  double get estimatedFare;
  @override
  DateTime get startTime;
  @override
  DateTime? get actualPickupTime;
  @override
  DateTime? get actualDropoffTime;
  @override
  double? get actualDistance;
  @override
  Duration? get actualDuration;
  @override
  String? get tripStatus;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
