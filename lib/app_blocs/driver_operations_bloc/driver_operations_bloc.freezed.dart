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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
abstract class _$$DriverOperationsStartLocationTrackingImplCopyWith<$Res> {
  factory _$$DriverOperationsStartLocationTrackingImplCopyWith(
          _$DriverOperationsStartLocationTrackingImpl value,
          $Res Function(_$DriverOperationsStartLocationTrackingImpl) then) =
      __$$DriverOperationsStartLocationTrackingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsStartLocationTrackingImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsStartLocationTrackingImpl>
    implements _$$DriverOperationsStartLocationTrackingImplCopyWith<$Res> {
  __$$DriverOperationsStartLocationTrackingImplCopyWithImpl(
      _$DriverOperationsStartLocationTrackingImpl _value,
      $Res Function(_$DriverOperationsStartLocationTrackingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsStartLocationTrackingImpl
    implements DriverOperationsStartLocationTracking {
  const _$DriverOperationsStartLocationTrackingImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.startLocationTracking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsStartLocationTrackingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    return startLocationTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    return startLocationTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    if (startLocationTracking != null) {
      return startLocationTracking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    return startLocationTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    return startLocationTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    if (startLocationTracking != null) {
      return startLocationTracking(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsStartLocationTracking
    implements DriverOperationsEvent {
  const factory DriverOperationsStartLocationTracking() =
      _$DriverOperationsStartLocationTrackingImpl;
}

/// @nodoc
abstract class _$$DriverOperationsStopLocationTrackingImplCopyWith<$Res> {
  factory _$$DriverOperationsStopLocationTrackingImplCopyWith(
          _$DriverOperationsStopLocationTrackingImpl value,
          $Res Function(_$DriverOperationsStopLocationTrackingImpl) then) =
      __$$DriverOperationsStopLocationTrackingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsStopLocationTrackingImplCopyWithImpl<$Res>
    extends _$DriverOperationsEventCopyWithImpl<$Res,
        _$DriverOperationsStopLocationTrackingImpl>
    implements _$$DriverOperationsStopLocationTrackingImplCopyWith<$Res> {
  __$$DriverOperationsStopLocationTrackingImplCopyWithImpl(
      _$DriverOperationsStopLocationTrackingImpl _value,
      $Res Function(_$DriverOperationsStopLocationTrackingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverOperationsStopLocationTrackingImpl
    implements DriverOperationsStopLocationTracking {
  const _$DriverOperationsStopLocationTrackingImpl();

  @override
  String toString() {
    return 'DriverOperationsEvent.stopLocationTracking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOperationsStopLocationTrackingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    return stopLocationTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    return stopLocationTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    if (stopLocationTracking != null) {
      return stopLocationTracking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    return stopLocationTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    return stopLocationTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    if (stopLocationTracking != null) {
      return stopLocationTracking(this);
    }
    return orElse();
  }
}

abstract class DriverOperationsStopLocationTracking
    implements DriverOperationsEvent {
  const factory DriverOperationsStopLocationTracking() =
      _$DriverOperationsStopLocationTrackingImpl;
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
    Object? position = freezed,
  }) {
    return _then(_$DriverOperationsLocationUpdatedImpl(
      freezed == position
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
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
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
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
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
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
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
    required TResult Function(DriverOperationsStartLocationTracking value)
        startLocationTracking,
    required TResult Function(DriverOperationsStopLocationTracking value)
        stopLocationTracking,
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
    TResult? Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult? Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
    TResult Function(DriverOperationsStartLocationTracking value)?
        startLocationTracking,
    TResult Function(DriverOperationsStopLocationTracking value)?
        stopLocationTracking,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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
