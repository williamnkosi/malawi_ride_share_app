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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationUpdateSettings value) updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
    LocationEvent value,
    $Res Function(LocationEvent) then,
  ) = _$LocationEventCopyWithImpl<$Res, LocationEvent>;
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
abstract class _$$LocationStartTrackingImplCopyWith<$Res> {
  factory _$$LocationStartTrackingImplCopyWith(
    _$LocationStartTrackingImpl value,
    $Res Function(_$LocationStartTrackingImpl) then,
  ) = __$$LocationStartTrackingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStartTrackingImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationStartTrackingImpl>
    implements _$$LocationStartTrackingImplCopyWith<$Res> {
  __$$LocationStartTrackingImplCopyWithImpl(
    _$LocationStartTrackingImpl _value,
    $Res Function(_$LocationStartTrackingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationStartTrackingImpl implements LocationStartTracking {
  const _$LocationStartTrackingImpl();

  @override
  String toString() {
    return 'LocationEvent.startTracking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStartTrackingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
  }) {
    return startTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
  }) {
    return startTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    required TResult orElse(),
  }) {
    if (startTracking != null) {
      return startTracking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationUpdateSettings value) updateSettings,
  }) {
    return startTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
  }) {
    return startTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (startTracking != null) {
      return startTracking(this);
    }
    return orElse();
  }
}

abstract class LocationStartTracking implements LocationEvent {
  const factory LocationStartTracking() = _$LocationStartTrackingImpl;
}

/// @nodoc
abstract class _$$LocationUpdateSettingsImplCopyWith<$Res> {
  factory _$$LocationUpdateSettingsImplCopyWith(
    _$LocationUpdateSettingsImpl value,
    $Res Function(_$LocationUpdateSettingsImpl) then,
  ) = __$$LocationUpdateSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accuracy, int distanceFilterMeters, int timeIntervalMs});
}

/// @nodoc
class __$$LocationUpdateSettingsImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationUpdateSettingsImpl>
    implements _$$LocationUpdateSettingsImplCopyWith<$Res> {
  __$$LocationUpdateSettingsImplCopyWithImpl(
    _$LocationUpdateSettingsImpl _value,
    $Res Function(_$LocationUpdateSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accuracy = null,
    Object? distanceFilterMeters = null,
    Object? timeIntervalMs = null,
  }) {
    return _then(
      _$LocationUpdateSettingsImpl(
        accuracy:
            null == accuracy
                ? _value.accuracy
                : accuracy // ignore: cast_nullable_to_non_nullable
                    as String,
        distanceFilterMeters:
            null == distanceFilterMeters
                ? _value.distanceFilterMeters
                : distanceFilterMeters // ignore: cast_nullable_to_non_nullable
                    as int,
        timeIntervalMs:
            null == timeIntervalMs
                ? _value.timeIntervalMs
                : timeIntervalMs // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$LocationUpdateSettingsImpl implements LocationUpdateSettings {
  const _$LocationUpdateSettingsImpl({
    required this.accuracy,
    required this.distanceFilterMeters,
    required this.timeIntervalMs,
  });

  @override
  final String accuracy;
  @override
  final int distanceFilterMeters;
  @override
  final int timeIntervalMs;

  @override
  String toString() {
    return 'LocationEvent.updateSettings(accuracy: $accuracy, distanceFilterMeters: $distanceFilterMeters, timeIntervalMs: $timeIntervalMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationUpdateSettingsImpl &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.distanceFilterMeters, distanceFilterMeters) ||
                other.distanceFilterMeters == distanceFilterMeters) &&
            (identical(other.timeIntervalMs, timeIntervalMs) ||
                other.timeIntervalMs == timeIntervalMs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accuracy, distanceFilterMeters, timeIntervalMs);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationUpdateSettingsImplCopyWith<_$LocationUpdateSettingsImpl>
  get copyWith =>
      __$$LocationUpdateSettingsImplCopyWithImpl<_$LocationUpdateSettingsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
  }) {
    return updateSettings(accuracy, distanceFilterMeters, timeIntervalMs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
  }) {
    return updateSettings?.call(accuracy, distanceFilterMeters, timeIntervalMs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(accuracy, distanceFilterMeters, timeIntervalMs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationUpdateSettings value) updateSettings,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(this);
    }
    return orElse();
  }
}

abstract class LocationUpdateSettings implements LocationEvent {
  const factory LocationUpdateSettings({
    required final String accuracy,
    required final int distanceFilterMeters,
    required final int timeIntervalMs,
  }) = _$LocationUpdateSettingsImpl;

  String get accuracy;
  int get distanceFilterMeters;
  int get timeIntervalMs;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationUpdateSettingsImplCopyWith<_$LocationUpdateSettingsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationEntity currentPosition) active,
    required TResult Function(LocationEntity? lastKnownPosition) stopped,
    required TResult Function(String message, LocationEntity? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationEntity currentPosition)? active,
    TResult? Function(LocationEntity? lastKnownPosition)? stopped,
    TResult? Function(String message, LocationEntity? lastKnownPosition)?
    errors,
    TResult? Function(String? message)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationEntity currentPosition)? active,
    TResult Function(LocationEntity? lastKnownPosition)? stopped,
    TResult Function(String message, LocationEntity? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStart value) start,
    required TResult Function(LocationActive value) active,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStart value)? start,
    TResult? Function(LocationActive value)? active,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStart value)? start,
    TResult Function(LocationActive value)? active,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
    LocationState value,
    $Res Function(LocationState) then,
  ) = _$LocationStateCopyWithImpl<$Res, LocationState>;
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
}

/// @nodoc
abstract class _$$LocationStartImplCopyWith<$Res> {
  factory _$$LocationStartImplCopyWith(
    _$LocationStartImpl value,
    $Res Function(_$LocationStartImpl) then,
  ) = __$$LocationStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStartImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStartImpl>
    implements _$$LocationStartImplCopyWith<$Res> {
  __$$LocationStartImplCopyWithImpl(
    _$LocationStartImpl _value,
    $Res Function(_$LocationStartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationStartImpl implements LocationStart {
  const _$LocationStartImpl();

  @override
  String toString() {
    return 'LocationState.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationEntity currentPosition) active,
    required TResult Function(LocationEntity? lastKnownPosition) stopped,
    required TResult Function(String message, LocationEntity? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationEntity currentPosition)? active,
    TResult? Function(LocationEntity? lastKnownPosition)? stopped,
    TResult? Function(String message, LocationEntity? lastKnownPosition)?
    errors,
    TResult? Function(String? message)? loading,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationEntity currentPosition)? active,
    TResult Function(LocationEntity? lastKnownPosition)? stopped,
    TResult Function(String message, LocationEntity? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStart value) start,
    required TResult Function(LocationActive value) active,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStart value)? start,
    TResult? Function(LocationActive value)? active,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStart value)? start,
    TResult Function(LocationActive value)? active,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class LocationStart implements LocationState {
  const factory LocationStart() = _$LocationStartImpl;
}

/// @nodoc
abstract class _$$LocationActiveImplCopyWith<$Res> {
  factory _$$LocationActiveImplCopyWith(
    _$LocationActiveImpl value,
    $Res Function(_$LocationActiveImpl) then,
  ) = __$$LocationActiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationEntity currentPosition});
}

/// @nodoc
class __$$LocationActiveImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationActiveImpl>
    implements _$$LocationActiveImplCopyWith<$Res> {
  __$$LocationActiveImplCopyWithImpl(
    _$LocationActiveImpl _value,
    $Res Function(_$LocationActiveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentPosition = null}) {
    return _then(
      _$LocationActiveImpl(
        currentPosition:
            null == currentPosition
                ? _value.currentPosition
                : currentPosition // ignore: cast_nullable_to_non_nullable
                    as LocationEntity,
      ),
    );
  }
}

/// @nodoc

class _$LocationActiveImpl implements LocationActive {
  const _$LocationActiveImpl({required this.currentPosition});

  @override
  final LocationEntity currentPosition;

  @override
  String toString() {
    return 'LocationState.active(currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationActiveImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPosition);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationActiveImplCopyWith<_$LocationActiveImpl> get copyWith =>
      __$$LocationActiveImplCopyWithImpl<_$LocationActiveImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationEntity currentPosition) active,
    required TResult Function(LocationEntity? lastKnownPosition) stopped,
    required TResult Function(String message, LocationEntity? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return active(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationEntity currentPosition)? active,
    TResult? Function(LocationEntity? lastKnownPosition)? stopped,
    TResult? Function(String message, LocationEntity? lastKnownPosition)?
    errors,
    TResult? Function(String? message)? loading,
  }) {
    return active?.call(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationEntity currentPosition)? active,
    TResult Function(LocationEntity? lastKnownPosition)? stopped,
    TResult Function(String message, LocationEntity? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStart value) start,
    required TResult Function(LocationActive value) active,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStart value)? start,
    TResult? Function(LocationActive value)? active,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStart value)? start,
    TResult Function(LocationActive value)? active,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class LocationActive implements LocationState {
  const factory LocationActive({
    required final LocationEntity currentPosition,
  }) = _$LocationActiveImpl;

  LocationEntity get currentPosition;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationActiveImplCopyWith<_$LocationActiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationStoppedImplCopyWith<$Res> {
  factory _$$LocationStoppedImplCopyWith(
    _$LocationStoppedImpl value,
    $Res Function(_$LocationStoppedImpl) then,
  ) = __$$LocationStoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationEntity? lastKnownPosition});
}

/// @nodoc
class __$$LocationStoppedImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStoppedImpl>
    implements _$$LocationStoppedImplCopyWith<$Res> {
  __$$LocationStoppedImplCopyWithImpl(
    _$LocationStoppedImpl _value,
    $Res Function(_$LocationStoppedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lastKnownPosition = freezed}) {
    return _then(
      _$LocationStoppedImpl(
        lastKnownPosition:
            freezed == lastKnownPosition
                ? _value.lastKnownPosition
                : lastKnownPosition // ignore: cast_nullable_to_non_nullable
                    as LocationEntity?,
      ),
    );
  }
}

/// @nodoc

class _$LocationStoppedImpl implements LocationStopped {
  const _$LocationStoppedImpl({this.lastKnownPosition});

  @override
  final LocationEntity? lastKnownPosition;

  @override
  String toString() {
    return 'LocationState.stopped(lastKnownPosition: $lastKnownPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStoppedImpl &&
            (identical(other.lastKnownPosition, lastKnownPosition) ||
                other.lastKnownPosition == lastKnownPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastKnownPosition);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStoppedImplCopyWith<_$LocationStoppedImpl> get copyWith =>
      __$$LocationStoppedImplCopyWithImpl<_$LocationStoppedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationEntity currentPosition) active,
    required TResult Function(LocationEntity? lastKnownPosition) stopped,
    required TResult Function(String message, LocationEntity? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return stopped(lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationEntity currentPosition)? active,
    TResult? Function(LocationEntity? lastKnownPosition)? stopped,
    TResult? Function(String message, LocationEntity? lastKnownPosition)?
    errors,
    TResult? Function(String? message)? loading,
  }) {
    return stopped?.call(lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationEntity currentPosition)? active,
    TResult Function(LocationEntity? lastKnownPosition)? stopped,
    TResult Function(String message, LocationEntity? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(lastKnownPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStart value) start,
    required TResult Function(LocationActive value) active,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStart value)? start,
    TResult? Function(LocationActive value)? active,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStart value)? start,
    TResult Function(LocationActive value)? active,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class LocationStopped implements LocationState {
  const factory LocationStopped({final LocationEntity? lastKnownPosition}) =
      _$LocationStoppedImpl;

  LocationEntity? get lastKnownPosition;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationStoppedImplCopyWith<_$LocationStoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationErrorsImplCopyWith<$Res> {
  factory _$$LocationErrorsImplCopyWith(
    _$LocationErrorsImpl value,
    $Res Function(_$LocationErrorsImpl) then,
  ) = __$$LocationErrorsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, LocationEntity? lastKnownPosition});
}

/// @nodoc
class __$$LocationErrorsImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationErrorsImpl>
    implements _$$LocationErrorsImplCopyWith<$Res> {
  __$$LocationErrorsImplCopyWithImpl(
    _$LocationErrorsImpl _value,
    $Res Function(_$LocationErrorsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? lastKnownPosition = freezed}) {
    return _then(
      _$LocationErrorsImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        lastKnownPosition:
            freezed == lastKnownPosition
                ? _value.lastKnownPosition
                : lastKnownPosition // ignore: cast_nullable_to_non_nullable
                    as LocationEntity?,
      ),
    );
  }
}

/// @nodoc

class _$LocationErrorsImpl implements LocationErrors {
  const _$LocationErrorsImpl({required this.message, this.lastKnownPosition});

  @override
  final String message;
  @override
  final LocationEntity? lastKnownPosition;

  @override
  String toString() {
    return 'LocationState.errors(message: $message, lastKnownPosition: $lastKnownPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationErrorsImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.lastKnownPosition, lastKnownPosition) ||
                other.lastKnownPosition == lastKnownPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, lastKnownPosition);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationErrorsImplCopyWith<_$LocationErrorsImpl> get copyWith =>
      __$$LocationErrorsImplCopyWithImpl<_$LocationErrorsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationEntity currentPosition) active,
    required TResult Function(LocationEntity? lastKnownPosition) stopped,
    required TResult Function(String message, LocationEntity? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return errors(message, lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationEntity currentPosition)? active,
    TResult? Function(LocationEntity? lastKnownPosition)? stopped,
    TResult? Function(String message, LocationEntity? lastKnownPosition)?
    errors,
    TResult? Function(String? message)? loading,
  }) {
    return errors?.call(message, lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationEntity currentPosition)? active,
    TResult Function(LocationEntity? lastKnownPosition)? stopped,
    TResult Function(String message, LocationEntity? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (errors != null) {
      return errors(message, lastKnownPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStart value) start,
    required TResult Function(LocationActive value) active,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return errors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStart value)? start,
    TResult? Function(LocationActive value)? active,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return errors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStart value)? start,
    TResult Function(LocationActive value)? active,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (errors != null) {
      return errors(this);
    }
    return orElse();
  }
}

abstract class LocationErrors implements LocationState {
  const factory LocationErrors({
    required final String message,
    final LocationEntity? lastKnownPosition,
  }) = _$LocationErrorsImpl;

  String get message;
  LocationEntity? get lastKnownPosition;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationErrorsImplCopyWith<_$LocationErrorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationLoadingImplCopyWith<$Res> {
  factory _$$LocationLoadingImplCopyWith(
    _$LocationLoadingImpl value,
    $Res Function(_$LocationLoadingImpl) then,
  ) = __$$LocationLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LocationLoadingImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationLoadingImpl>
    implements _$$LocationLoadingImplCopyWith<$Res> {
  __$$LocationLoadingImplCopyWithImpl(
    _$LocationLoadingImpl _value,
    $Res Function(_$LocationLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$LocationLoadingImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$LocationLoadingImpl implements LocationLoading {
  const _$LocationLoadingImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LocationState.loading(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationLoadingImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationLoadingImplCopyWith<_$LocationLoadingImpl> get copyWith =>
      __$$LocationLoadingImplCopyWithImpl<_$LocationLoadingImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationEntity currentPosition) active,
    required TResult Function(LocationEntity? lastKnownPosition) stopped,
    required TResult Function(String message, LocationEntity? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationEntity currentPosition)? active,
    TResult? Function(LocationEntity? lastKnownPosition)? stopped,
    TResult? Function(String message, LocationEntity? lastKnownPosition)?
    errors,
    TResult? Function(String? message)? loading,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationEntity currentPosition)? active,
    TResult Function(LocationEntity? lastKnownPosition)? stopped,
    TResult Function(String message, LocationEntity? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStart value) start,
    required TResult Function(LocationActive value) active,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStart value)? start,
    TResult? Function(LocationActive value)? active,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStart value)? start,
    TResult Function(LocationActive value)? active,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationLoading implements LocationState {
  const factory LocationLoading({final String? message}) =
      _$LocationLoadingImpl;

  String? get message;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationLoadingImplCopyWith<_$LocationLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
