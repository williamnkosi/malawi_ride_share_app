// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_operations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DriverOperationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOperationsEventCopyWith<$Res> {
  factory $DriverOperationsEventCopyWith(DriverOperationsEvent value,
          $Res Function(DriverOperationsEvent) then) =
      _$DriverOperationsEventCopyWithImpl<$Res, DriverOperationsEvent>;
}

/// @nodoc
class _$DriverOperationsEventCopyWithImpl<$Res,
        $Val extends DriverOperationsEvent>
    implements $DriverOperationsEventCopyWith<$Res> {
  _$DriverOperationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DriverOperationsInitializeImplCopyWith<$Res> {
  factory _$$DriverOperationsInitializeImplCopyWith(
          _$DriverOperationsInitializeImpl value,
          $Res Function(_$DriverOperationsInitializeImpl) then) =
      __$$DriverOperationsInitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsInitializeImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsInitializeImpl>
    implements _$$DriverOperationsInitializeImplCopyWith<$Res> {
  __$$DriverOperationsInitializeImplCopyWithImpl(
      _$DriverOperationsInitializeImpl _value,
      $Res Function(_$DriverOperationsInitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsInitializeImpl implements DriverOperationsInitialize {
  const _$DriverOperationsInitializeImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsInitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsInitialize implements DriverOperationsEvent {
  const factory DriverOperationsInitialize() = _$DriverOperationsInitializeImpl;
}

/// @nodoc
abstract class _$$DriverOperationsGoOnlineImplCopyWith<$Res> {
  factory _$$DriverOperationsGoOnlineImplCopyWith(
          _$DriverOperationsGoOnlineImpl value,
          $Res Function(_$DriverOperationsGoOnlineImpl) then) =
      __$$DriverOperationsGoOnlineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsGoOnlineImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsGoOnlineImpl>
    implements _$$DriverOperationsGoOnlineImplCopyWith<$Res> {
  __$$DriverOperationsGoOnlineImplCopyWithImpl(
      _$DriverOperationsGoOnlineImpl _value,
      $Res Function(_$DriverOperationsGoOnlineImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsGoOnlineImpl implements DriverOperationsGoOnline {
  const _$DriverOperationsGoOnlineImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.goOnline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsGoOnlineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return goOnline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return goOnline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (goOnline != null) {
      return goOnline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return goOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return goOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (goOnline != null) {
      return goOnline(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsGoOnline implements DriverOperationsEvent {
  const factory DriverOperationsGoOnline() = _$DriverOperationsGoOnlineImpl;
}

/// @nodoc
abstract class _$$DriverOperationsGoOfflineImplCopyWith<$Res> {
  factory _$$DriverOperationsGoOfflineImplCopyWith(
          _$DriverOperationsGoOfflineImpl value,
          $Res Function(_$DriverOperationsGoOfflineImpl) then) =
      __$$DriverOperationsGoOfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsGoOfflineImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsGoOfflineImpl>
    implements _$$DriverOperationsGoOfflineImplCopyWith<$Res> {
  __$$DriverOperationsGoOfflineImplCopyWithImpl(
      _$DriverOperationsGoOfflineImpl _value,
      $Res Function(_$DriverOperationsGoOfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsGoOfflineImpl implements DriverOperationsGoOffline {
  const _$DriverOperationsGoOfflineImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.goOffline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsGoOfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return goOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return goOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (goOffline != null) {
      return goOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return goOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return goOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (goOffline != null) {
      return goOffline(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsGoOffline implements DriverOperationsEvent {
  const factory DriverOperationsGoOffline() = _$DriverOperationsGoOfflineImpl;
}

/// @nodoc
abstract class _$$DriverOperationsLocationUpdatedImplCopyWith<$Res> {
  factory _$$DriverOperationsLocationUpdatedImplCopyWith(
          _$DriverOperationsLocationUpdatedImpl value,
          $Res Function(_$DriverOperationsLocationUpdatedImpl) then) =
      __$$DriverOperationsLocationUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$DriverOperationsLocationUpdatedImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsLocationUpdatedImpl>
    implements _$$DriverOperationsLocationUpdatedImplCopyWith<$Res> {
  __$$DriverOperationsLocationUpdatedImplCopyWithImpl(
      _$DriverOperationsLocationUpdatedImpl _value,
      $Res Function(_$DriverOperationsLocationUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$DriverOperationsLocationUpdatedImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$DriverOperationsLocationUpdatedImpl
    implements DriverOperationsLocationUpdated {
  const _$DriverOperationsLocationUpdatedImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'DriverOperationsEvent.locationUpdated(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsLocationUpdatedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverOperationsLocationUpdatedImplCopyWith<
          _$DriverOperationsLocationUpdatedImpl>
      get copyWith => __$$DriverOperationsLocationUpdatedImplCopyWithImpl<
          _$DriverOperationsLocationUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return locationUpdated(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return locationUpdated?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return locationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsLocationUpdated
    implements DriverOperationsEvent {
  const factory DriverOperationsLocationUpdated(final Position position) =
      _$DriverOperationsLocationUpdatedImpl;

  Position get position;

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverOperationsLocationUpdatedImplCopyWith<
          _$DriverOperationsLocationUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverOperationsTripRequestReceivedImplCopyWith<$Res> {
  factory _$$DriverOperationsTripRequestReceivedImplCopyWith(
          _$DriverOperationsTripRequestReceivedImpl value,
          $Res Function(_$DriverOperationsTripRequestReceivedImpl) then) =
      __$$DriverOperationsTripRequestReceivedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsTripRequestReceivedImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsTripRequestReceivedImpl>
    implements _$$DriverOperationsTripRequestReceivedImplCopyWith<$Res> {
  __$$DriverOperationsTripRequestReceivedImplCopyWithImpl(
      _$DriverOperationsTripRequestReceivedImpl _value,
      $Res Function(_$DriverOperationsTripRequestReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsTripRequestReceivedImpl
    implements DriverOperationsTripRequestReceived {
  const _$DriverOperationsTripRequestReceivedImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.tripRequestReceived()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsTripRequestReceivedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return tripRequestReceived();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return tripRequestReceived?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (tripRequestReceived != null) {
      return tripRequestReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return tripRequestReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return tripRequestReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (tripRequestReceived != null) {
      return tripRequestReceived(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsTripRequestReceived
    implements DriverOperationsEvent {
  const factory DriverOperationsTripRequestReceived() =
      _$DriverOperationsTripRequestReceivedImpl;
}

/// @nodoc
abstract class _$$DriverOperationsAcceptTripImplCopyWith<$Res> {
  factory _$$DriverOperationsAcceptTripImplCopyWith(
          _$DriverOperationsAcceptTripImpl value,
          $Res Function(_$DriverOperationsAcceptTripImpl) then) =
      __$$DriverOperationsAcceptTripImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsAcceptTripImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsAcceptTripImpl>
    implements _$$DriverOperationsAcceptTripImplCopyWith<$Res> {
  __$$DriverOperationsAcceptTripImplCopyWithImpl(
      _$DriverOperationsAcceptTripImpl _value,
      $Res Function(_$DriverOperationsAcceptTripImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsAcceptTripImpl implements DriverOperationsAcceptTrip {
  const _$DriverOperationsAcceptTripImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.acceptTrip()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsAcceptTripImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return acceptTrip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return acceptTrip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (acceptTrip != null) {
      return acceptTrip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return acceptTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return acceptTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (acceptTrip != null) {
      return acceptTrip(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsAcceptTrip implements DriverOperationsEvent {
  const factory DriverOperationsAcceptTrip() = _$DriverOperationsAcceptTripImpl;
}

/// @nodoc
abstract class _$$DriverOperationsRejectTripImplCopyWith<$Res> {
  factory _$$DriverOperationsRejectTripImplCopyWith(
          _$DriverOperationsRejectTripImpl value,
          $Res Function(_$DriverOperationsRejectTripImpl) then) =
      __$$DriverOperationsRejectTripImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsRejectTripImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsRejectTripImpl>
    implements _$$DriverOperationsRejectTripImplCopyWith<$Res> {
  __$$DriverOperationsRejectTripImplCopyWithImpl(
      _$DriverOperationsRejectTripImpl _value,
      $Res Function(_$DriverOperationsRejectTripImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsRejectTripImpl implements DriverOperationsRejectTrip {
  const _$DriverOperationsRejectTripImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.rejectTrip()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsRejectTripImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return rejectTrip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return rejectTrip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (rejectTrip != null) {
      return rejectTrip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return rejectTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return rejectTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (rejectTrip != null) {
      return rejectTrip(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsRejectTrip implements DriverOperationsEvent {
  const factory DriverOperationsRejectTrip() = _$DriverOperationsRejectTripImpl;
}

/// @nodoc
abstract class _$$DriverOperationsStartTripImplCopyWith<$Res> {
  factory _$$DriverOperationsStartTripImplCopyWith(
          _$DriverOperationsStartTripImpl value,
          $Res Function(_$DriverOperationsStartTripImpl) then) =
      __$$DriverOperationsStartTripImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsStartTripImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsStartTripImpl>
    implements _$$DriverOperationsStartTripImplCopyWith<$Res> {
  __$$DriverOperationsStartTripImplCopyWithImpl(
      _$DriverOperationsStartTripImpl _value,
      $Res Function(_$DriverOperationsStartTripImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsStartTripImpl implements DriverOperationsStartTrip {
  const _$DriverOperationsStartTripImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.startTrip()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsStartTripImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return startTrip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return startTrip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (startTrip != null) {
      return startTrip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return startTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return startTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (startTrip != null) {
      return startTrip(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsStartTrip implements DriverOperationsEvent {
  const factory DriverOperationsStartTrip() = _$DriverOperationsStartTripImpl;
}

/// @nodoc
abstract class _$$DriverOperationsCompleteTripImplCopyWith<$Res> {
  factory _$$DriverOperationsCompleteTripImplCopyWith(
          _$DriverOperationsCompleteTripImpl value,
          $Res Function(_$DriverOperationsCompleteTripImpl) then) =
      __$$DriverOperationsCompleteTripImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double totalDistance, Duration totalDuration});
}

/// @nodoc
class __$$DriverOperationsCompleteTripImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsCompleteTripImpl>
    implements _$$DriverOperationsCompleteTripImplCopyWith<$Res> {
  __$$DriverOperationsCompleteTripImplCopyWithImpl(
      _$DriverOperationsCompleteTripImpl _value,
      $Res Function(_$DriverOperationsCompleteTripImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDistance = null,
    Object? totalDuration = null,
  }) {
    return _then(_$DriverOperationsCompleteTripImpl(
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$DriverOperationsCompleteTripImpl
    implements DriverOperationsCompleteTrip {
  const _$DriverOperationsCompleteTripImpl(
      {required this.totalDistance, required this.totalDuration});

  @override
  final double totalDistance;
  @override
  final Duration totalDuration;

  @override
  String toString() {
    return 'DriverOperationsEvent.completeTrip(totalDistance: $totalDistance, totalDuration: $totalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsCompleteTripImpl &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalDistance, totalDuration);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverOperationsCompleteTripImplCopyWith<
          _$DriverOperationsCompleteTripImpl>
      get copyWith => __$$DriverOperationsCompleteTripImplCopyWithImpl<
          _$DriverOperationsCompleteTripImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return completeTrip(totalDistance, totalDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return completeTrip?.call(totalDistance, totalDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (completeTrip != null) {
      return completeTrip(totalDistance, totalDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return completeTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return completeTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (completeTrip != null) {
      return completeTrip(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsCompleteTrip implements DriverOperationsEvent {
  const factory DriverOperationsCompleteTrip(
          {required final double totalDistance,
          required final Duration totalDuration}) =
      _$DriverOperationsCompleteTripImpl;

  double get totalDistance;
  Duration get totalDuration;

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverOperationsCompleteTripImplCopyWith<
          _$DriverOperationsCompleteTripImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverOperationsCancelTripImplCopyWith<$Res> {
  factory _$$DriverOperationsCancelTripImplCopyWith(
          _$DriverOperationsCancelTripImpl value,
          $Res Function(_$DriverOperationsCancelTripImpl) then) =
      __$$DriverOperationsCancelTripImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$DriverOperationsCancelTripImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsCancelTripImpl>
    implements _$$DriverOperationsCancelTripImplCopyWith<$Res> {
  __$$DriverOperationsCancelTripImplCopyWithImpl(
      _$DriverOperationsCancelTripImpl _value,
      $Res Function(_$DriverOperationsCancelTripImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$DriverOperationsCancelTripImpl(
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DriverOperationsCancelTripImpl implements DriverOperationsCancelTrip {
  const _$DriverOperationsCancelTripImpl(this.reason);

  @override
  final String reason;

  @override
  String toString() {
    return 'DriverOperationsEvent.cancelTrip(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsCancelTripImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverOperationsCancelTripImplCopyWith<_$DriverOperationsCancelTripImpl>
      get copyWith => __$$DriverOperationsCancelTripImplCopyWithImpl<
          _$DriverOperationsCancelTripImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return cancelTrip(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return cancelTrip?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return cancelTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return cancelTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsCancelTrip implements DriverOperationsEvent {
  const factory DriverOperationsCancelTrip(final String reason) =
      _$DriverOperationsCancelTripImpl;

  String get reason;

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverOperationsCancelTripImplCopyWith<_$DriverOperationsCancelTripImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverOperationsUpdateAvailabilityImplCopyWith<$Res> {
  factory _$$DriverOperationsUpdateAvailabilityImplCopyWith(
          _$DriverOperationsUpdateAvailabilityImpl value,
          $Res Function(_$DriverOperationsUpdateAvailabilityImpl) then) =
      __$$DriverOperationsUpdateAvailabilityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAvailable});
}

/// @nodoc
class __$$DriverOperationsUpdateAvailabilityImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsUpdateAvailabilityImpl>
    implements _$$DriverOperationsUpdateAvailabilityImplCopyWith<$Res> {
  __$$DriverOperationsUpdateAvailabilityImplCopyWithImpl(
      _$DriverOperationsUpdateAvailabilityImpl _value,
      $Res Function(_$DriverOperationsUpdateAvailabilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
  }) {
    return _then(_$DriverOperationsUpdateAvailabilityImpl(
      null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DriverOperationsUpdateAvailabilityImpl
    implements DriverOperationsUpdateAvailability {
  const _$DriverOperationsUpdateAvailabilityImpl(this.isAvailable);

  @override
  final bool isAvailable;

  @override
  String toString() {
    return 'DriverOperationsEvent.updateAvailability(isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsUpdateAvailabilityImpl &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAvailable);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverOperationsUpdateAvailabilityImplCopyWith<
          _$DriverOperationsUpdateAvailabilityImpl>
      get copyWith => __$$DriverOperationsUpdateAvailabilityImplCopyWithImpl<
          _$DriverOperationsUpdateAvailabilityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() tripRequestReceived,
    required TResult Function() acceptTrip,
    required TResult Function() rejectTrip,
    required TResult Function() startTrip,
    required TResult Function(double totalDistance, Duration totalDuration)
        completeTrip,
    required TResult Function(String reason) cancelTrip,
    required TResult Function(bool isAvailable) updateAvailability,
  }) {
    return updateAvailability(isAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? tripRequestReceived,
    TResult? Function()? acceptTrip,
    TResult? Function()? rejectTrip,
    TResult? Function()? startTrip,
    TResult? Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult? Function(String reason)? cancelTrip,
    TResult? Function(bool isAvailable)? updateAvailability,
  }) {
    return updateAvailability?.call(isAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? tripRequestReceived,
    TResult Function()? acceptTrip,
    TResult Function()? rejectTrip,
    TResult Function()? startTrip,
    TResult Function(double totalDistance, Duration totalDuration)?
        completeTrip,
    TResult Function(String reason)? cancelTrip,
    TResult Function(bool isAvailable)? updateAvailability,
    required TResult orElse(),
  }) {
    if (updateAvailability != null) {
      return updateAvailability(isAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsLocationUpdated value)
        locationUpdated,
    required TResult Function(DriverOperationsTripRequestReceived value)
        tripRequestReceived,
    required TResult Function(DriverOperationsAcceptTrip value) acceptTrip,
    required TResult Function(DriverOperationsRejectTrip value) rejectTrip,
    required TResult Function(DriverOperationsStartTrip value) startTrip,
    required TResult Function(DriverOperationsCompleteTrip value) completeTrip,
    required TResult Function(DriverOperationsCancelTrip value) cancelTrip,
    required TResult Function(DriverOperationsUpdateAvailability value)
        updateAvailability,
  }) {
    return updateAvailability(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult? Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult? Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult? Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult? Function(DriverOperationsStartTrip value)? startTrip,
    TResult? Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult? Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult? Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
  }) {
    return updateAvailability?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsLocationUpdated value)? locationUpdated,
    TResult Function(DriverOperationsTripRequestReceived value)?
        tripRequestReceived,
    TResult Function(DriverOperationsAcceptTrip value)? acceptTrip,
    TResult Function(DriverOperationsRejectTrip value)? rejectTrip,
    TResult Function(DriverOperationsStartTrip value)? startTrip,
    TResult Function(DriverOperationsCompleteTrip value)? completeTrip,
    TResult Function(DriverOperationsCancelTrip value)? cancelTrip,
    TResult Function(DriverOperationsUpdateAvailability value)?
        updateAvailability,
    required TResult orElse(),
  }) {
    if (updateAvailability != null) {
      return updateAvailability(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsUpdateAvailability
    implements DriverOperationsEvent {
  const factory DriverOperationsUpdateAvailability(final bool isAvailable) =
      _$DriverOperationsUpdateAvailabilityImpl;

  bool get isAvailable;

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverOperationsUpdateAvailabilityImplCopyWith<
          _$DriverOperationsUpdateAvailabilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverOperationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOperationsStateCopyWith<$Res> {
  factory $DriverOperationsStateCopyWith(DriverOperationsState value,
          $Res Function(DriverOperationsState) then) =
      _$DriverOperationsStateCopyWithImpl<$Res, DriverOperationsState>;
}

/// @nodoc
class _$DriverOperationsStateCopyWithImpl<$Res,
        $Val extends DriverOperationsState>
    implements $DriverOperationsStateCopyWith<$Res> {
  _$DriverOperationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DriverOperationsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DriverOperationsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DriverOperationsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DriverOperationsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OfflineImplCopyWith<$Res> {
  factory _$$OfflineImplCopyWith(
          _$OfflineImpl value, $Res Function(_$OfflineImpl) then) =
      __$$OfflineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position? lastKnownLocation});
}

/// @nodoc
class __$$OfflineImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$OfflineImpl>
    implements _$$OfflineImplCopyWith<$Res> {
  __$$OfflineImplCopyWithImpl(
      _$OfflineImpl _value, $Res Function(_$OfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastKnownLocation = freezed,
  }) {
    return _then(_$OfflineImpl(
      lastKnownLocation: freezed == lastKnownLocation
          ? _value.lastKnownLocation
          : lastKnownLocation // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$OfflineImpl implements _Offline {
  const _$OfflineImpl({this.lastKnownLocation});

  @override
  final Position? lastKnownLocation;

  @override
  String toString() {
    return 'DriverOperationsState.offline(lastKnownLocation: $lastKnownLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineImpl &&
            (identical(other.lastKnownLocation, lastKnownLocation) ||
                other.lastKnownLocation == lastKnownLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastKnownLocation);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineImplCopyWith<_$OfflineImpl> get copyWith =>
      __$$OfflineImplCopyWithImpl<_$OfflineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return offline(lastKnownLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return offline?.call(lastKnownLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(lastKnownLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements DriverOperationsState {
  const factory _Offline({final Position? lastKnownLocation}) = _$OfflineImpl;

  Position? get lastKnownLocation;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfflineImplCopyWith<_$OfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineImplCopyWith<$Res> {
  factory _$$OnlineImplCopyWith(
          _$OnlineImpl value, $Res Function(_$OnlineImpl) then) =
      __$$OnlineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position? currentLocation});
}

/// @nodoc
class __$$OnlineImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$OnlineImpl>
    implements _$$OnlineImplCopyWith<$Res> {
  __$$OnlineImplCopyWithImpl(
      _$OnlineImpl _value, $Res Function(_$OnlineImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
  }) {
    return _then(_$OnlineImpl(
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$OnlineImpl implements _Online {
  const _$OnlineImpl({required this.currentLocation});

  @override
  final Position? currentLocation;

  @override
  String toString() {
    return 'DriverOperationsState.online(currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineImplCopyWith<_$OnlineImpl> get copyWith =>
      __$$OnlineImplCopyWithImpl<_$OnlineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return online(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return online?.call(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return online?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class _Online implements DriverOperationsState {
  const factory _Online({required final Position? currentLocation}) =
      _$OnlineImpl;

  Position? get currentLocation;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineImplCopyWith<_$OnlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripRequestReceivedImplCopyWith<$Res> {
  factory _$$TripRequestReceivedImplCopyWith(_$TripRequestReceivedImpl value,
          $Res Function(_$TripRequestReceivedImpl) then) =
      __$$TripRequestReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Position currentLocation,
      TripRequest tripRequest,
      DateTime onlineTime,
      List<Position> locationHistory});

  $TripRequestCopyWith<$Res> get tripRequest;
}

/// @nodoc
class __$$TripRequestReceivedImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$TripRequestReceivedImpl>
    implements _$$TripRequestReceivedImplCopyWith<$Res> {
  __$$TripRequestReceivedImplCopyWithImpl(_$TripRequestReceivedImpl _value,
      $Res Function(_$TripRequestReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? tripRequest = null,
    Object? onlineTime = null,
    Object? locationHistory = null,
  }) {
    return _then(_$TripRequestReceivedImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      tripRequest: null == tripRequest
          ? _value.tripRequest
          : tripRequest // ignore: cast_nullable_to_non_nullable
              as TripRequest,
      onlineTime: null == onlineTime
          ? _value.onlineTime
          : onlineTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      locationHistory: null == locationHistory
          ? _value._locationHistory
          : locationHistory // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ));
  }

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripRequestCopyWith<$Res> get tripRequest {
    return $TripRequestCopyWith<$Res>(_value.tripRequest, (value) {
      return _then(_value.copyWith(tripRequest: value));
    });
  }
}

/// @nodoc

class _$TripRequestReceivedImpl implements _TripRequestReceived {
  const _$TripRequestReceivedImpl(
      {required this.currentLocation,
      required this.tripRequest,
      required this.onlineTime,
      final List<Position> locationHistory = const []})
      : _locationHistory = locationHistory;

  @override
  final Position currentLocation;
  @override
  final TripRequest tripRequest;
  @override
  final DateTime onlineTime;
  final List<Position> _locationHistory;
  @override
  @JsonKey()
  List<Position> get locationHistory {
    if (_locationHistory is EqualUnmodifiableListView) return _locationHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationHistory);
  }

  @override
  String toString() {
    return 'DriverOperationsState.tripRequestReceived(currentLocation: $currentLocation, tripRequest: $tripRequest, onlineTime: $onlineTime, locationHistory: $locationHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRequestReceivedImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.tripRequest, tripRequest) ||
                other.tripRequest == tripRequest) &&
            (identical(other.onlineTime, onlineTime) ||
                other.onlineTime == onlineTime) &&
            const DeepCollectionEquality()
                .equals(other._locationHistory, _locationHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation, tripRequest,
      onlineTime, const DeepCollectionEquality().hash(_locationHistory));

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRequestReceivedImplCopyWith<_$TripRequestReceivedImpl> get copyWith =>
      __$$TripRequestReceivedImplCopyWithImpl<_$TripRequestReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return tripRequestReceived(
        currentLocation, tripRequest, onlineTime, locationHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return tripRequestReceived?.call(
        currentLocation, tripRequest, onlineTime, locationHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (tripRequestReceived != null) {
      return tripRequestReceived(
          currentLocation, tripRequest, onlineTime, locationHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return tripRequestReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return tripRequestReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (tripRequestReceived != null) {
      return tripRequestReceived(this);
    }
    return orElse();
  }
}

abstract class _TripRequestReceived implements DriverOperationsState {
  const factory _TripRequestReceived(
      {required final Position currentLocation,
      required final TripRequest tripRequest,
      required final DateTime onlineTime,
      final List<Position> locationHistory}) = _$TripRequestReceivedImpl;

  Position get currentLocation;
  TripRequest get tripRequest;
  DateTime get onlineTime;
  List<Position> get locationHistory;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRequestReceivedImplCopyWith<_$TripRequestReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnRouteToPickupImplCopyWith<$Res> {
  factory _$$EnRouteToPickupImplCopyWith(_$EnRouteToPickupImpl value,
          $Res Function(_$EnRouteToPickupImpl) then) =
      __$$EnRouteToPickupImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Position currentLocation,
      Trip activeTrip,
      DateTime estimatedPickupTime,
      DateTime onlineTime,
      List<Position> locationHistory});

  $TripCopyWith<$Res> get activeTrip;
}

/// @nodoc
class __$$EnRouteToPickupImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$EnRouteToPickupImpl>
    implements _$$EnRouteToPickupImplCopyWith<$Res> {
  __$$EnRouteToPickupImplCopyWithImpl(
      _$EnRouteToPickupImpl _value, $Res Function(_$EnRouteToPickupImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? activeTrip = null,
    Object? estimatedPickupTime = null,
    Object? onlineTime = null,
    Object? locationHistory = null,
  }) {
    return _then(_$EnRouteToPickupImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      activeTrip: null == activeTrip
          ? _value.activeTrip
          : activeTrip // ignore: cast_nullable_to_non_nullable
              as Trip,
      estimatedPickupTime: null == estimatedPickupTime
          ? _value.estimatedPickupTime
          : estimatedPickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      onlineTime: null == onlineTime
          ? _value.onlineTime
          : onlineTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      locationHistory: null == locationHistory
          ? _value._locationHistory
          : locationHistory // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ));
  }

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get activeTrip {
    return $TripCopyWith<$Res>(_value.activeTrip, (value) {
      return _then(_value.copyWith(activeTrip: value));
    });
  }
}

/// @nodoc

class _$EnRouteToPickupImpl implements _EnRouteToPickup {
  const _$EnRouteToPickupImpl(
      {required this.currentLocation,
      required this.activeTrip,
      required this.estimatedPickupTime,
      required this.onlineTime,
      final List<Position> locationHistory = const []})
      : _locationHistory = locationHistory;

  @override
  final Position currentLocation;
  @override
  final Trip activeTrip;
  @override
  final DateTime estimatedPickupTime;
  @override
  final DateTime onlineTime;
  final List<Position> _locationHistory;
  @override
  @JsonKey()
  List<Position> get locationHistory {
    if (_locationHistory is EqualUnmodifiableListView) return _locationHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationHistory);
  }

  @override
  String toString() {
    return 'DriverOperationsState.enRouteToPickup(currentLocation: $currentLocation, activeTrip: $activeTrip, estimatedPickupTime: $estimatedPickupTime, onlineTime: $onlineTime, locationHistory: $locationHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnRouteToPickupImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip) &&
            (identical(other.estimatedPickupTime, estimatedPickupTime) ||
                other.estimatedPickupTime == estimatedPickupTime) &&
            (identical(other.onlineTime, onlineTime) ||
                other.onlineTime == onlineTime) &&
            const DeepCollectionEquality()
                .equals(other._locationHistory, _locationHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentLocation,
      activeTrip,
      estimatedPickupTime,
      onlineTime,
      const DeepCollectionEquality().hash(_locationHistory));

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnRouteToPickupImplCopyWith<_$EnRouteToPickupImpl> get copyWith =>
      __$$EnRouteToPickupImplCopyWithImpl<_$EnRouteToPickupImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return enRouteToPickup(currentLocation, activeTrip, estimatedPickupTime,
        onlineTime, locationHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return enRouteToPickup?.call(currentLocation, activeTrip,
        estimatedPickupTime, onlineTime, locationHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (enRouteToPickup != null) {
      return enRouteToPickup(currentLocation, activeTrip, estimatedPickupTime,
          onlineTime, locationHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return enRouteToPickup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return enRouteToPickup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (enRouteToPickup != null) {
      return enRouteToPickup(this);
    }
    return orElse();
  }
}

abstract class _EnRouteToPickup implements DriverOperationsState {
  const factory _EnRouteToPickup(
      {required final Position currentLocation,
      required final Trip activeTrip,
      required final DateTime estimatedPickupTime,
      required final DateTime onlineTime,
      final List<Position> locationHistory}) = _$EnRouteToPickupImpl;

  Position get currentLocation;
  Trip get activeTrip;
  DateTime get estimatedPickupTime;
  DateTime get onlineTime;
  List<Position> get locationHistory;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnRouteToPickupImplCopyWith<_$EnRouteToPickupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WaitingForPassengerImplCopyWith<$Res> {
  factory _$$WaitingForPassengerImplCopyWith(_$WaitingForPassengerImpl value,
          $Res Function(_$WaitingForPassengerImpl) then) =
      __$$WaitingForPassengerImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Position currentLocation,
      Trip activeTrip,
      DateTime arrivalTime,
      DateTime onlineTime});

  $TripCopyWith<$Res> get activeTrip;
}

/// @nodoc
class __$$WaitingForPassengerImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$WaitingForPassengerImpl>
    implements _$$WaitingForPassengerImplCopyWith<$Res> {
  __$$WaitingForPassengerImplCopyWithImpl(_$WaitingForPassengerImpl _value,
      $Res Function(_$WaitingForPassengerImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? activeTrip = null,
    Object? arrivalTime = null,
    Object? onlineTime = null,
  }) {
    return _then(_$WaitingForPassengerImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      activeTrip: null == activeTrip
          ? _value.activeTrip
          : activeTrip // ignore: cast_nullable_to_non_nullable
              as Trip,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      onlineTime: null == onlineTime
          ? _value.onlineTime
          : onlineTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get activeTrip {
    return $TripCopyWith<$Res>(_value.activeTrip, (value) {
      return _then(_value.copyWith(activeTrip: value));
    });
  }
}

/// @nodoc

class _$WaitingForPassengerImpl implements _WaitingForPassenger {
  const _$WaitingForPassengerImpl(
      {required this.currentLocation,
      required this.activeTrip,
      required this.arrivalTime,
      required this.onlineTime});

  @override
  final Position currentLocation;
  @override
  final Trip activeTrip;
  @override
  final DateTime arrivalTime;
  @override
  final DateTime onlineTime;

  @override
  String toString() {
    return 'DriverOperationsState.waitingForPassenger(currentLocation: $currentLocation, activeTrip: $activeTrip, arrivalTime: $arrivalTime, onlineTime: $onlineTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingForPassengerImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.onlineTime, onlineTime) ||
                other.onlineTime == onlineTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentLocation, activeTrip, arrivalTime, onlineTime);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingForPassengerImplCopyWith<_$WaitingForPassengerImpl> get copyWith =>
      __$$WaitingForPassengerImplCopyWithImpl<_$WaitingForPassengerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return waitingForPassenger(
        currentLocation, activeTrip, arrivalTime, onlineTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return waitingForPassenger?.call(
        currentLocation, activeTrip, arrivalTime, onlineTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (waitingForPassenger != null) {
      return waitingForPassenger(
          currentLocation, activeTrip, arrivalTime, onlineTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return waitingForPassenger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return waitingForPassenger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (waitingForPassenger != null) {
      return waitingForPassenger(this);
    }
    return orElse();
  }
}

abstract class _WaitingForPassenger implements DriverOperationsState {
  const factory _WaitingForPassenger(
      {required final Position currentLocation,
      required final Trip activeTrip,
      required final DateTime arrivalTime,
      required final DateTime onlineTime}) = _$WaitingForPassengerImpl;

  Position get currentLocation;
  Trip get activeTrip;
  DateTime get arrivalTime;
  DateTime get onlineTime;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitingForPassengerImplCopyWith<_$WaitingForPassengerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnTripImplCopyWith<$Res> {
  factory _$$OnTripImplCopyWith(
          _$OnTripImpl value, $Res Function(_$OnTripImpl) then) =
      __$$OnTripImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Position currentLocation,
      Trip activeTrip,
      DateTime tripStartTime,
      DateTime? estimatedDropoffTime,
      List<Position> tripRoute});

  $TripCopyWith<$Res> get activeTrip;
}

/// @nodoc
class __$$OnTripImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$OnTripImpl>
    implements _$$OnTripImplCopyWith<$Res> {
  __$$OnTripImplCopyWithImpl(
      _$OnTripImpl _value, $Res Function(_$OnTripImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? activeTrip = null,
    Object? tripStartTime = null,
    Object? estimatedDropoffTime = freezed,
    Object? tripRoute = null,
  }) {
    return _then(_$OnTripImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      activeTrip: null == activeTrip
          ? _value.activeTrip
          : activeTrip // ignore: cast_nullable_to_non_nullable
              as Trip,
      tripStartTime: null == tripStartTime
          ? _value.tripStartTime
          : tripStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedDropoffTime: freezed == estimatedDropoffTime
          ? _value.estimatedDropoffTime
          : estimatedDropoffTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tripRoute: null == tripRoute
          ? _value._tripRoute
          : tripRoute // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ));
  }

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get activeTrip {
    return $TripCopyWith<$Res>(_value.activeTrip, (value) {
      return _then(_value.copyWith(activeTrip: value));
    });
  }
}

/// @nodoc

class _$OnTripImpl implements _OnTrip {
  const _$OnTripImpl(
      {required this.currentLocation,
      required this.activeTrip,
      required this.tripStartTime,
      this.estimatedDropoffTime,
      final List<Position> tripRoute = const []})
      : _tripRoute = tripRoute;

  @override
  final Position currentLocation;
  @override
  final Trip activeTrip;
  @override
  final DateTime tripStartTime;
  @override
  final DateTime? estimatedDropoffTime;
  final List<Position> _tripRoute;
  @override
  @JsonKey()
  List<Position> get tripRoute {
    if (_tripRoute is EqualUnmodifiableListView) return _tripRoute;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripRoute);
  }

  @override
  String toString() {
    return 'DriverOperationsState.onTrip(currentLocation: $currentLocation, activeTrip: $activeTrip, tripStartTime: $tripStartTime, estimatedDropoffTime: $estimatedDropoffTime, tripRoute: $tripRoute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTripImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip) &&
            (identical(other.tripStartTime, tripStartTime) ||
                other.tripStartTime == tripStartTime) &&
            (identical(other.estimatedDropoffTime, estimatedDropoffTime) ||
                other.estimatedDropoffTime == estimatedDropoffTime) &&
            const DeepCollectionEquality()
                .equals(other._tripRoute, _tripRoute));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentLocation,
      activeTrip,
      tripStartTime,
      estimatedDropoffTime,
      const DeepCollectionEquality().hash(_tripRoute));

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTripImplCopyWith<_$OnTripImpl> get copyWith =>
      __$$OnTripImplCopyWithImpl<_$OnTripImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return onTrip(currentLocation, activeTrip, tripStartTime,
        estimatedDropoffTime, tripRoute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return onTrip?.call(currentLocation, activeTrip, tripStartTime,
        estimatedDropoffTime, tripRoute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (onTrip != null) {
      return onTrip(currentLocation, activeTrip, tripStartTime,
          estimatedDropoffTime, tripRoute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return onTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return onTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (onTrip != null) {
      return onTrip(this);
    }
    return orElse();
  }
}

abstract class _OnTrip implements DriverOperationsState {
  const factory _OnTrip(
      {required final Position currentLocation,
      required final Trip activeTrip,
      required final DateTime tripStartTime,
      final DateTime? estimatedDropoffTime,
      final List<Position> tripRoute}) = _$OnTripImpl;

  Position get currentLocation;
  Trip get activeTrip;
  DateTime get tripStartTime;
  DateTime? get estimatedDropoffTime;
  List<Position> get tripRoute;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnTripImplCopyWith<_$OnTripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripCompletedImplCopyWith<$Res> {
  factory _$$TripCompletedImplCopyWith(
          _$TripCompletedImpl value, $Res Function(_$TripCompletedImpl) then) =
      __$$TripCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Position currentLocation,
      Trip completedTrip,
      DateTime completionTime,
      double tripEarnings,
      Duration tripDuration,
      double tripDistance});

  $TripCopyWith<$Res> get completedTrip;
}

/// @nodoc
class __$$TripCompletedImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$TripCompletedImpl>
    implements _$$TripCompletedImplCopyWith<$Res> {
  __$$TripCompletedImplCopyWithImpl(
      _$TripCompletedImpl _value, $Res Function(_$TripCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? completedTrip = null,
    Object? completionTime = null,
    Object? tripEarnings = null,
    Object? tripDuration = null,
    Object? tripDistance = null,
  }) {
    return _then(_$TripCompletedImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      completedTrip: null == completedTrip
          ? _value.completedTrip
          : completedTrip // ignore: cast_nullable_to_non_nullable
              as Trip,
      completionTime: null == completionTime
          ? _value.completionTime
          : completionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tripEarnings: null == tripEarnings
          ? _value.tripEarnings
          : tripEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      tripDuration: null == tripDuration
          ? _value.tripDuration
          : tripDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      tripDistance: null == tripDistance
          ? _value.tripDistance
          : tripDistance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get completedTrip {
    return $TripCopyWith<$Res>(_value.completedTrip, (value) {
      return _then(_value.copyWith(completedTrip: value));
    });
  }
}

/// @nodoc

class _$TripCompletedImpl implements _TripCompleted {
  const _$TripCompletedImpl(
      {required this.currentLocation,
      required this.completedTrip,
      required this.completionTime,
      required this.tripEarnings,
      required this.tripDuration,
      required this.tripDistance});

  @override
  final Position currentLocation;
  @override
  final Trip completedTrip;
  @override
  final DateTime completionTime;
  @override
  final double tripEarnings;
  @override
  final Duration tripDuration;
  @override
  final double tripDistance;

  @override
  String toString() {
    return 'DriverOperationsState.tripCompleted(currentLocation: $currentLocation, completedTrip: $completedTrip, completionTime: $completionTime, tripEarnings: $tripEarnings, tripDuration: $tripDuration, tripDistance: $tripDistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripCompletedImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.completedTrip, completedTrip) ||
                other.completedTrip == completedTrip) &&
            (identical(other.completionTime, completionTime) ||
                other.completionTime == completionTime) &&
            (identical(other.tripEarnings, tripEarnings) ||
                other.tripEarnings == tripEarnings) &&
            (identical(other.tripDuration, tripDuration) ||
                other.tripDuration == tripDuration) &&
            (identical(other.tripDistance, tripDistance) ||
                other.tripDistance == tripDistance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation, completedTrip,
      completionTime, tripEarnings, tripDuration, tripDistance);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripCompletedImplCopyWith<_$TripCompletedImpl> get copyWith =>
      __$$TripCompletedImplCopyWithImpl<_$TripCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return tripCompleted(currentLocation, completedTrip, completionTime,
        tripEarnings, tripDuration, tripDistance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return tripCompleted?.call(currentLocation, completedTrip, completionTime,
        tripEarnings, tripDuration, tripDistance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (tripCompleted != null) {
      return tripCompleted(currentLocation, completedTrip, completionTime,
          tripEarnings, tripDuration, tripDistance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return tripCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return tripCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (tripCompleted != null) {
      return tripCompleted(this);
    }
    return orElse();
  }
}

abstract class _TripCompleted implements DriverOperationsState {
  const factory _TripCompleted(
      {required final Position currentLocation,
      required final Trip completedTrip,
      required final DateTime completionTime,
      required final double tripEarnings,
      required final Duration tripDuration,
      required final double tripDistance}) = _$TripCompletedImpl;

  Position get currentLocation;
  Trip get completedTrip;
  DateTime get completionTime;
  double get tripEarnings;
  Duration get tripDuration;
  double get tripDistance;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripCompletedImplCopyWith<_$TripCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripCancelledImplCopyWith<$Res> {
  factory _$$TripCancelledImplCopyWith(
          _$TripCancelledImpl value, $Res Function(_$TripCancelledImpl) then) =
      __$$TripCancelledImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Position currentLocation,
      Trip cancelledTrip,
      String cancellationReason,
      DateTime cancellationTime,
      bool wasCancelledByDriver});

  $TripCopyWith<$Res> get cancelledTrip;
}

/// @nodoc
class __$$TripCancelledImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$TripCancelledImpl>
    implements _$$TripCancelledImplCopyWith<$Res> {
  __$$TripCancelledImplCopyWithImpl(
      _$TripCancelledImpl _value, $Res Function(_$TripCancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? cancelledTrip = null,
    Object? cancellationReason = null,
    Object? cancellationTime = null,
    Object? wasCancelledByDriver = null,
  }) {
    return _then(_$TripCancelledImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      cancelledTrip: null == cancelledTrip
          ? _value.cancelledTrip
          : cancelledTrip // ignore: cast_nullable_to_non_nullable
              as Trip,
      cancellationReason: null == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String,
      cancellationTime: null == cancellationTime
          ? _value.cancellationTime
          : cancellationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wasCancelledByDriver: null == wasCancelledByDriver
          ? _value.wasCancelledByDriver
          : wasCancelledByDriver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get cancelledTrip {
    return $TripCopyWith<$Res>(_value.cancelledTrip, (value) {
      return _then(_value.copyWith(cancelledTrip: value));
    });
  }
}

/// @nodoc

class _$TripCancelledImpl implements _TripCancelled {
  const _$TripCancelledImpl(
      {required this.currentLocation,
      required this.cancelledTrip,
      required this.cancellationReason,
      required this.cancellationTime,
      required this.wasCancelledByDriver});

  @override
  final Position currentLocation;
  @override
  final Trip cancelledTrip;
  @override
  final String cancellationReason;
  @override
  final DateTime cancellationTime;
  @override
  final bool wasCancelledByDriver;

  @override
  String toString() {
    return 'DriverOperationsState.tripCancelled(currentLocation: $currentLocation, cancelledTrip: $cancelledTrip, cancellationReason: $cancellationReason, cancellationTime: $cancellationTime, wasCancelledByDriver: $wasCancelledByDriver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripCancelledImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.cancelledTrip, cancelledTrip) ||
                other.cancelledTrip == cancelledTrip) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancellationTime, cancellationTime) ||
                other.cancellationTime == cancellationTime) &&
            (identical(other.wasCancelledByDriver, wasCancelledByDriver) ||
                other.wasCancelledByDriver == wasCancelledByDriver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation, cancelledTrip,
      cancellationReason, cancellationTime, wasCancelledByDriver);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripCancelledImplCopyWith<_$TripCancelledImpl> get copyWith =>
      __$$TripCancelledImplCopyWithImpl<_$TripCancelledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return tripCancelled(currentLocation, cancelledTrip, cancellationReason,
        cancellationTime, wasCancelledByDriver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return tripCancelled?.call(currentLocation, cancelledTrip,
        cancellationReason, cancellationTime, wasCancelledByDriver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (tripCancelled != null) {
      return tripCancelled(currentLocation, cancelledTrip, cancellationReason,
          cancellationTime, wasCancelledByDriver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return tripCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return tripCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (tripCancelled != null) {
      return tripCancelled(this);
    }
    return orElse();
  }
}

abstract class _TripCancelled implements DriverOperationsState {
  const factory _TripCancelled(
      {required final Position currentLocation,
      required final Trip cancelledTrip,
      required final String cancellationReason,
      required final DateTime cancellationTime,
      required final bool wasCancelledByDriver}) = _$TripCancelledImpl;

  Position get currentLocation;
  Trip get cancelledTrip;
  String get cancellationReason;
  DateTime get cancellationTime;
  bool get wasCancelledByDriver;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripCancelledImplCopyWith<_$TripCancelledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnavailableImplCopyWith<$Res> {
  factory _$$UnavailableImplCopyWith(
          _$UnavailableImpl value, $Res Function(_$UnavailableImpl) then) =
      __$$UnavailableImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Position currentLocation, String reason, DateTime? availableAgainAt});
}

/// @nodoc
class __$$UnavailableImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$UnavailableImpl>
    implements _$$UnavailableImplCopyWith<$Res> {
  __$$UnavailableImplCopyWithImpl(
      _$UnavailableImpl _value, $Res Function(_$UnavailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? reason = null,
    Object? availableAgainAt = freezed,
  }) {
    return _then(_$UnavailableImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      availableAgainAt: freezed == availableAgainAt
          ? _value.availableAgainAt
          : availableAgainAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$UnavailableImpl implements _Unavailable {
  const _$UnavailableImpl(
      {required this.currentLocation,
      required this.reason,
      this.availableAgainAt});

  @override
  final Position currentLocation;
  @override
  final String reason;
  @override
  final DateTime? availableAgainAt;

  @override
  String toString() {
    return 'DriverOperationsState.unavailable(currentLocation: $currentLocation, reason: $reason, availableAgainAt: $availableAgainAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnavailableImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.availableAgainAt, availableAgainAt) ||
                other.availableAgainAt == availableAgainAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentLocation, reason, availableAgainAt);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnavailableImplCopyWith<_$UnavailableImpl> get copyWith =>
      __$$UnavailableImplCopyWithImpl<_$UnavailableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return unavailable(currentLocation, reason, availableAgainAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return unavailable?.call(currentLocation, reason, availableAgainAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable(currentLocation, reason, availableAgainAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return unavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return unavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable(this);
    }
    return orElse();
  }
}

abstract class _Unavailable implements DriverOperationsState {
  const factory _Unavailable(
      {required final Position currentLocation,
      required final String reason,
      final DateTime? availableAgainAt}) = _$UnavailableImpl;

  Position get currentLocation;
  String get reason;
  DateTime? get availableAgainAt;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnavailableImplCopyWith<_$UnavailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateErrorImplCopyWith<$Res> {
  factory _$$StateErrorImplCopyWith(
          _$StateErrorImpl value, $Res Function(_$StateErrorImpl) then) =
      __$$StateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, DriverOperationsState? previousState});

  $DriverOperationsStateCopyWith<$Res>? get previousState;
}

/// @nodoc
class __$$StateErrorImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$StateErrorImpl>
    implements _$$StateErrorImplCopyWith<$Res> {
  __$$StateErrorImplCopyWithImpl(
      _$StateErrorImpl _value, $Res Function(_$StateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? previousState = freezed,
  }) {
    return _then(_$StateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      previousState: freezed == previousState
          ? _value.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as DriverOperationsState?,
    ));
  }

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverOperationsStateCopyWith<$Res>? get previousState {
    if (_value.previousState == null) {
      return null;
    }

    return $DriverOperationsStateCopyWith<$Res>(_value.previousState!, (value) {
      return _then(_value.copyWith(previousState: value));
    });
  }
}

/// @nodoc

class _$StateErrorImpl implements _StateError {
  const _$StateErrorImpl({required this.message, this.previousState});

  @override
  final String message;
  @override
  final DriverOperationsState? previousState;

  @override
  String toString() {
    return 'DriverOperationsState.error(message: $message, previousState: $previousState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.previousState, previousState) ||
                other.previousState == previousState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, previousState);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateErrorImplCopyWith<_$StateErrorImpl> get copyWith =>
      __$$StateErrorImplCopyWithImpl<_$StateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position? lastKnownLocation) offline,
    required TResult Function(Position? currentLocation) online,
    required TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)
        tripRequestReceived,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)
        enRouteToPickup,
    required TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)
        waitingForPassenger,
    required TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)
        onTrip,
    required TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)
        tripCompleted,
    required TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)
        tripCancelled,
    required TResult Function(
            Position currentLocation, String reason, DateTime? availableAgainAt)
        unavailable,
    required TResult Function(
            String message, DriverOperationsState? previousState)
        error,
  }) {
    return error(message, previousState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position? lastKnownLocation)? offline,
    TResult? Function(Position? currentLocation)? online,
    TResult? Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult? Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult? Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult? Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult? Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult? Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult? Function(String message, DriverOperationsState? previousState)?
        error,
  }) {
    return error?.call(message, previousState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position? lastKnownLocation)? offline,
    TResult Function(Position? currentLocation)? online,
    TResult Function(Position currentLocation, TripRequest tripRequest,
            DateTime onlineTime, List<Position> locationHistory)?
        tripRequestReceived,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime estimatedPickupTime,
            DateTime onlineTime,
            List<Position> locationHistory)?
        enRouteToPickup,
    TResult Function(Position currentLocation, Trip activeTrip,
            DateTime arrivalTime, DateTime onlineTime)?
        waitingForPassenger,
    TResult Function(
            Position currentLocation,
            Trip activeTrip,
            DateTime tripStartTime,
            DateTime? estimatedDropoffTime,
            List<Position> tripRoute)?
        onTrip,
    TResult Function(
            Position currentLocation,
            Trip completedTrip,
            DateTime completionTime,
            double tripEarnings,
            Duration tripDuration,
            double tripDistance)?
        tripCompleted,
    TResult Function(
            Position currentLocation,
            Trip cancelledTrip,
            String cancellationReason,
            DateTime cancellationTime,
            bool wasCancelledByDriver)?
        tripCancelled,
    TResult Function(Position currentLocation, String reason,
            DateTime? availableAgainAt)?
        unavailable,
    TResult Function(String message, DriverOperationsState? previousState)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, previousState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_EnRouteToPickup value) enRouteToPickup,
    required TResult Function(_WaitingForPassenger value) waitingForPassenger,
    required TResult Function(_OnTrip value) onTrip,
    required TResult Function(_TripCompleted value) tripCompleted,
    required TResult Function(_TripCancelled value) tripCancelled,
    required TResult Function(_Unavailable value) unavailable,
    required TResult Function(_StateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult? Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult? Function(_OnTrip value)? onTrip,
    TResult? Function(_TripCompleted value)? tripCompleted,
    TResult? Function(_TripCancelled value)? tripCancelled,
    TResult? Function(_Unavailable value)? unavailable,
    TResult? Function(_StateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_EnRouteToPickup value)? enRouteToPickup,
    TResult Function(_WaitingForPassenger value)? waitingForPassenger,
    TResult Function(_OnTrip value)? onTrip,
    TResult Function(_TripCompleted value)? tripCompleted,
    TResult Function(_TripCancelled value)? tripCancelled,
    TResult Function(_Unavailable value)? unavailable,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError implements DriverOperationsState {
  const factory _StateError(
      {required final String message,
      final DriverOperationsState? previousState}) = _$StateErrorImpl;

  String get message;
  DriverOperationsState? get previousState;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateErrorImplCopyWith<_$StateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
