// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rider_trip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RiderTripEvent {
  LocationData get startLocation => throw _privateConstructorUsedError;
  LocationData get endLocation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LocationData startLocation, LocationData endLocation)
        tripSubmitTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationData startLocation, LocationData endLocation)?
        tripSubmitTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData startLocation, LocationData endLocation)?
        tripSubmitTrip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderTripSubmitTrip value) tripSubmitTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderTripSubmitTrip value)? tripSubmitTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderTripSubmitTrip value)? tripSubmitTrip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RiderTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiderTripEventCopyWith<RiderTripEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderTripEventCopyWith<$Res> {
  factory $RiderTripEventCopyWith(
          RiderTripEvent value, $Res Function(RiderTripEvent) then) =
      _$RiderTripEventCopyWithImpl<$Res, RiderTripEvent>;
  @useResult
  $Res call({LocationData startLocation, LocationData endLocation});
}

/// @nodoc
class _$RiderTripEventCopyWithImpl<$Res, $Val extends RiderTripEvent>
    implements $RiderTripEventCopyWith<$Res> {
  _$RiderTripEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLocation = null,
    Object? endLocation = null,
  }) {
    return _then(_value.copyWith(
      startLocation: null == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as LocationData,
      endLocation: null == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiderTripSubmitTripImplCopyWith<$Res>
    implements $RiderTripEventCopyWith<$Res> {
  factory _$$RiderTripSubmitTripImplCopyWith(_$RiderTripSubmitTripImpl value,
          $Res Function(_$RiderTripSubmitTripImpl) then) =
      __$$RiderTripSubmitTripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationData startLocation, LocationData endLocation});
}

/// @nodoc
class __$$RiderTripSubmitTripImplCopyWithImpl<$Res>
    extends _$RiderTripEventCopyWithImpl<$Res, _$RiderTripSubmitTripImpl>
    implements _$$RiderTripSubmitTripImplCopyWith<$Res> {
  __$$RiderTripSubmitTripImplCopyWithImpl(_$RiderTripSubmitTripImpl _value,
      $Res Function(_$RiderTripSubmitTripImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiderTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLocation = null,
    Object? endLocation = null,
  }) {
    return _then(_$RiderTripSubmitTripImpl(
      startLocation: null == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as LocationData,
      endLocation: null == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc

class _$RiderTripSubmitTripImpl implements RiderTripSubmitTrip {
  const _$RiderTripSubmitTripImpl(
      {required this.startLocation, required this.endLocation});

  @override
  final LocationData startLocation;
  @override
  final LocationData endLocation;

  @override
  String toString() {
    return 'RiderTripEvent.tripSubmitTrip(startLocation: $startLocation, endLocation: $endLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderTripSubmitTripImpl &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startLocation, endLocation);

  /// Create a copy of RiderTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderTripSubmitTripImplCopyWith<_$RiderTripSubmitTripImpl> get copyWith =>
      __$$RiderTripSubmitTripImplCopyWithImpl<_$RiderTripSubmitTripImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LocationData startLocation, LocationData endLocation)
        tripSubmitTrip,
  }) {
    return tripSubmitTrip(startLocation, endLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationData startLocation, LocationData endLocation)?
        tripSubmitTrip,
  }) {
    return tripSubmitTrip?.call(startLocation, endLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData startLocation, LocationData endLocation)?
        tripSubmitTrip,
    required TResult orElse(),
  }) {
    if (tripSubmitTrip != null) {
      return tripSubmitTrip(startLocation, endLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderTripSubmitTrip value) tripSubmitTrip,
  }) {
    return tripSubmitTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderTripSubmitTrip value)? tripSubmitTrip,
  }) {
    return tripSubmitTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderTripSubmitTrip value)? tripSubmitTrip,
    required TResult orElse(),
  }) {
    if (tripSubmitTrip != null) {
      return tripSubmitTrip(this);
    }
    return orElse();
  }
}

abstract class RiderTripSubmitTrip implements RiderTripEvent {
  const factory RiderTripSubmitTrip(
      {required final LocationData startLocation,
      required final LocationData endLocation}) = _$RiderTripSubmitTripImpl;

  @override
  LocationData get startLocation;
  @override
  LocationData get endLocation;

  /// Create a copy of RiderTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderTripSubmitTripImplCopyWith<_$RiderTripSubmitTripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RiderTripState {
  bool get isLocationPremissionEnabled => throw _privateConstructorUsedError;
  LocationData? get currentLcoation => throw _privateConstructorUsedError;
  Stream<LocationData>? get locationStream =>
      throw _privateConstructorUsedError;

  /// Create a copy of RiderTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiderTripStateCopyWith<RiderTripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderTripStateCopyWith<$Res> {
  factory $RiderTripStateCopyWith(
          RiderTripState value, $Res Function(RiderTripState) then) =
      _$RiderTripStateCopyWithImpl<$Res, RiderTripState>;
  @useResult
  $Res call(
      {bool isLocationPremissionEnabled,
      LocationData? currentLcoation,
      Stream<LocationData>? locationStream});
}

/// @nodoc
class _$RiderTripStateCopyWithImpl<$Res, $Val extends RiderTripState>
    implements $RiderTripStateCopyWith<$Res> {
  _$RiderTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocationPremissionEnabled = null,
    Object? currentLcoation = freezed,
    Object? locationStream = freezed,
  }) {
    return _then(_value.copyWith(
      isLocationPremissionEnabled: null == isLocationPremissionEnabled
          ? _value.isLocationPremissionEnabled
          : isLocationPremissionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLcoation: freezed == currentLcoation
          ? _value.currentLcoation
          : currentLcoation // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      locationStream: freezed == locationStream
          ? _value.locationStream
          : locationStream // ignore: cast_nullable_to_non_nullable
              as Stream<LocationData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiderTripStateImplCopyWith<$Res>
    implements $RiderTripStateCopyWith<$Res> {
  factory _$$RiderTripStateImplCopyWith(_$RiderTripStateImpl value,
          $Res Function(_$RiderTripStateImpl) then) =
      __$$RiderTripStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLocationPremissionEnabled,
      LocationData? currentLcoation,
      Stream<LocationData>? locationStream});
}

/// @nodoc
class __$$RiderTripStateImplCopyWithImpl<$Res>
    extends _$RiderTripStateCopyWithImpl<$Res, _$RiderTripStateImpl>
    implements _$$RiderTripStateImplCopyWith<$Res> {
  __$$RiderTripStateImplCopyWithImpl(
      _$RiderTripStateImpl _value, $Res Function(_$RiderTripStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiderTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocationPremissionEnabled = null,
    Object? currentLcoation = freezed,
    Object? locationStream = freezed,
  }) {
    return _then(_$RiderTripStateImpl(
      isLocationPremissionEnabled: null == isLocationPremissionEnabled
          ? _value.isLocationPremissionEnabled
          : isLocationPremissionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLcoation: freezed == currentLcoation
          ? _value.currentLcoation
          : currentLcoation // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      locationStream: freezed == locationStream
          ? _value.locationStream
          : locationStream // ignore: cast_nullable_to_non_nullable
              as Stream<LocationData>?,
    ));
  }
}

/// @nodoc

class _$RiderTripStateImpl implements _RiderTripState {
  const _$RiderTripStateImpl(
      {this.isLocationPremissionEnabled = false,
      this.currentLcoation,
      this.locationStream});

  @override
  @JsonKey()
  final bool isLocationPremissionEnabled;
  @override
  final LocationData? currentLcoation;
  @override
  final Stream<LocationData>? locationStream;

  @override
  String toString() {
    return 'RiderTripState(isLocationPremissionEnabled: $isLocationPremissionEnabled, currentLcoation: $currentLcoation, locationStream: $locationStream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderTripStateImpl &&
            (identical(other.isLocationPremissionEnabled,
                    isLocationPremissionEnabled) ||
                other.isLocationPremissionEnabled ==
                    isLocationPremissionEnabled) &&
            (identical(other.currentLcoation, currentLcoation) ||
                other.currentLcoation == currentLcoation) &&
            (identical(other.locationStream, locationStream) ||
                other.locationStream == locationStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLocationPremissionEnabled,
      currentLcoation, locationStream);

  /// Create a copy of RiderTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderTripStateImplCopyWith<_$RiderTripStateImpl> get copyWith =>
      __$$RiderTripStateImplCopyWithImpl<_$RiderTripStateImpl>(
          this, _$identity);
}

abstract class _RiderTripState implements RiderTripState {
  const factory _RiderTripState(
      {final bool isLocationPremissionEnabled,
      final LocationData? currentLcoation,
      final Stream<LocationData>? locationStream}) = _$RiderTripStateImpl;

  @override
  bool get isLocationPremissionEnabled;
  @override
  LocationData? get currentLcoation;
  @override
  Stream<LocationData>? get locationStream;

  /// Create a copy of RiderTripState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderTripStateImplCopyWith<_$RiderTripStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
