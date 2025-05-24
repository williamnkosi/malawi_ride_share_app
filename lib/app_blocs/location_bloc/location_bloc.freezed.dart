// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationEventInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationEventInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationEventInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationEventInitial value) locationEventInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationEventInitial value)? locationEventInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationEventInitial value)? locationEventInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocationEventInitialImplCopyWith<$Res> {
  factory _$$LocationEventInitialImplCopyWith(_$LocationEventInitialImpl value,
          $Res Function(_$LocationEventInitialImpl) then) =
      __$$LocationEventInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationEventInitialImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationEventInitialImpl>
    implements _$$LocationEventInitialImplCopyWith<$Res> {
  __$$LocationEventInitialImplCopyWithImpl(_$LocationEventInitialImpl _value,
      $Res Function(_$LocationEventInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationEventInitialImpl implements LocationEventInitial {
  const _$LocationEventInitialImpl();

  @override
  String toString() {
    return 'LocationEvent.locationEventInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationEventInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationEventInitial,
  }) {
    return locationEventInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationEventInitial,
  }) {
    return locationEventInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationEventInitial,
    required TResult orElse(),
  }) {
    if (locationEventInitial != null) {
      return locationEventInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationEventInitial value) locationEventInitial,
  }) {
    return locationEventInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationEventInitial value)? locationEventInitial,
  }) {
    return locationEventInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationEventInitial value)? locationEventInitial,
    required TResult orElse(),
  }) {
    if (locationEventInitial != null) {
      return locationEventInitial(this);
    }
    return orElse();
  }
}

abstract class LocationEventInitial implements LocationEvent {
  const factory LocationEventInitial() = _$LocationEventInitialImpl;
}

/// @nodoc
mixin _$LocationState {
  bool get isLocationPremissionEnabled => throw _privateConstructorUsedError;
  LocationData? get currentLcoation => throw _privateConstructorUsedError;
  LatLng? get coordinates => throw _privateConstructorUsedError;
  StreamSubscription<LocationData>? get locationStream =>
      throw _privateConstructorUsedError;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {bool isLocationPremissionEnabled,
      LocationData? currentLcoation,
      LatLng? coordinates,
      StreamSubscription<LocationData>? locationStream});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocationPremissionEnabled = null,
    Object? currentLcoation = freezed,
    Object? coordinates = freezed,
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
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      locationStream: freezed == locationStream
          ? _value.locationStream
          : locationStream // ignore: cast_nullable_to_non_nullable
              as StreamSubscription<LocationData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLocationPremissionEnabled,
      LocationData? currentLcoation,
      LatLng? coordinates,
      StreamSubscription<LocationData>? locationStream});
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocationPremissionEnabled = null,
    Object? currentLcoation = freezed,
    Object? coordinates = freezed,
    Object? locationStream = freezed,
  }) {
    return _then(_$LocationStateImpl(
      isLocationPremissionEnabled: null == isLocationPremissionEnabled
          ? _value.isLocationPremissionEnabled
          : isLocationPremissionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLcoation: freezed == currentLcoation
          ? _value.currentLcoation
          : currentLcoation // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      locationStream: freezed == locationStream
          ? _value.locationStream
          : locationStream // ignore: cast_nullable_to_non_nullable
              as StreamSubscription<LocationData>?,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl(
      {this.isLocationPremissionEnabled = false,
      this.currentLcoation,
      this.coordinates,
      this.locationStream});

  @override
  @JsonKey()
  final bool isLocationPremissionEnabled;
  @override
  final LocationData? currentLcoation;
  @override
  final LatLng? coordinates;
  @override
  final StreamSubscription<LocationData>? locationStream;

  @override
  String toString() {
    return 'LocationState(isLocationPremissionEnabled: $isLocationPremissionEnabled, currentLcoation: $currentLcoation, coordinates: $coordinates, locationStream: $locationStream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.isLocationPremissionEnabled,
                    isLocationPremissionEnabled) ||
                other.isLocationPremissionEnabled ==
                    isLocationPremissionEnabled) &&
            (identical(other.currentLcoation, currentLcoation) ||
                other.currentLcoation == currentLcoation) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.locationStream, locationStream) ||
                other.locationStream == locationStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLocationPremissionEnabled,
      currentLcoation, coordinates, locationStream);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
          {final bool isLocationPremissionEnabled,
          final LocationData? currentLcoation,
          final LatLng? coordinates,
          final StreamSubscription<LocationData>? locationStream}) =
      _$LocationStateImpl;

  @override
  bool get isLocationPremissionEnabled;
  @override
  LocationData? get currentLcoation;
  @override
  LatLng? get coordinates;
  @override
  StreamSubscription<LocationData>? get locationStream;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
