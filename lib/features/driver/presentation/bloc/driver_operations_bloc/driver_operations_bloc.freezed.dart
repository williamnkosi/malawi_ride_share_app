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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverOperationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() goOnline,
    required TResult Function() goOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverOperationsInitialize value) initialize,
    required TResult Function(DriverOperationsGoOnline value) goOnline,
    required TResult Function(DriverOperationsGoOffline value) goOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOperationsEventCopyWith<$Res> {
  factory $DriverOperationsEventCopyWith(
    DriverOperationsEvent value,
    $Res Function(DriverOperationsEvent) then,
  ) = _$DriverOperationsEventCopyWithImpl<$Res, DriverOperationsEvent>;
}

/// @nodoc
class _$DriverOperationsEventCopyWithImpl<
  $Res,
  $Val extends DriverOperationsEvent
>
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
    $Res Function(_$DriverOperationsInitializeImpl) then,
  ) = __$$DriverOperationsInitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsInitializeImplCopyWithImpl<$Res>
    extends
        _$DriverOperationsEventCopyWithImpl<
          $Res,
          _$DriverOperationsInitializeImpl
        >
    implements _$$DriverOperationsInitializeImplCopyWith<$Res> {
  __$$DriverOperationsInitializeImplCopyWithImpl(
    _$DriverOperationsInitializeImpl _value,
    $Res Function(_$DriverOperationsInitializeImpl) _then,
  ) : super(_value, _then);

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
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
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
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
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
    $Res Function(_$DriverOperationsGoOnlineImpl) then,
  ) = __$$DriverOperationsGoOnlineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsGoOnlineImplCopyWithImpl<$Res>
    extends
        _$DriverOperationsEventCopyWithImpl<
          $Res,
          _$DriverOperationsGoOnlineImpl
        >
    implements _$$DriverOperationsGoOnlineImplCopyWith<$Res> {
  __$$DriverOperationsGoOnlineImplCopyWithImpl(
    _$DriverOperationsGoOnlineImpl _value,
    $Res Function(_$DriverOperationsGoOnlineImpl) _then,
  ) : super(_value, _then);

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
  }) {
    return goOnline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
  }) {
    return goOnline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
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
  }) {
    return goOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
  }) {
    return goOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
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
    $Res Function(_$DriverOperationsGoOfflineImpl) then,
  ) = __$$DriverOperationsGoOfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverOperationsGoOfflineImplCopyWithImpl<$Res>
    extends
        _$DriverOperationsEventCopyWithImpl<
          $Res,
          _$DriverOperationsGoOfflineImpl
        >
    implements _$$DriverOperationsGoOfflineImplCopyWith<$Res> {
  __$$DriverOperationsGoOfflineImplCopyWithImpl(
    _$DriverOperationsGoOfflineImpl _value,
    $Res Function(_$DriverOperationsGoOfflineImpl) _then,
  ) : super(_value, _then);

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
  }) {
    return goOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? goOnline,
    TResult? Function()? goOffline,
  }) {
    return goOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? goOnline,
    TResult Function()? goOffline,
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
  }) {
    return goOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverOperationsInitialize value)? initialize,
    TResult? Function(DriverOperationsGoOnline value)? goOnline,
    TResult? Function(DriverOperationsGoOffline value)? goOffline,
  }) {
    return goOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverOperationsInitialize value)? initialize,
    TResult Function(DriverOperationsGoOnline value)? goOnline,
    TResult Function(DriverOperationsGoOffline value)? goOffline,
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
mixin _$DriverOperationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function() online,
    required TResult Function(DriverTripEntity driverTripRequest)
    tripRequestReceived,
    required TResult Function(
      String message,
      DriverOperationsState? previousState,
    )
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function()? online,
    TResult? Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult? Function(String message, DriverOperationsState? previousState)?
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function()? online,
    TResult Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult Function(String message, DriverOperationsState? previousState)?
    error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
    required TResult Function(_TripRequestReceived value) tripRequestReceived,
    required TResult Function(_StateError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Online value)? online,
    TResult? Function(_TripRequestReceived value)? tripRequestReceived,
    TResult? Function(_StateError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    TResult Function(_TripRequestReceived value)? tripRequestReceived,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOperationsStateCopyWith<$Res> {
  factory $DriverOperationsStateCopyWith(
    DriverOperationsState value,
    $Res Function(DriverOperationsState) then,
  ) = _$DriverOperationsStateCopyWithImpl<$Res, DriverOperationsState>;
}

/// @nodoc
class _$DriverOperationsStateCopyWithImpl<
  $Res,
  $Val extends DriverOperationsState
>
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
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

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
    required TResult Function() offline,
    required TResult Function() online,
    required TResult Function(DriverTripEntity driverTripRequest)
    tripRequestReceived,
    required TResult Function(
      String message,
      DriverOperationsState? previousState,
    )
    error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function()? online,
    TResult? Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
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
    TResult Function()? offline,
    TResult Function()? online,
    TResult Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
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
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

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
    required TResult Function() offline,
    required TResult Function() online,
    required TResult Function(DriverTripEntity driverTripRequest)
    tripRequestReceived,
    required TResult Function(
      String message,
      DriverOperationsState? previousState,
    )
    error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function()? online,
    TResult? Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
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
    TResult Function()? offline,
    TResult Function()? online,
    TResult Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
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
    _$OfflineImpl value,
    $Res Function(_$OfflineImpl) then,
  ) = __$$OfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$OfflineImpl>
    implements _$$OfflineImplCopyWith<$Res> {
  __$$OfflineImplCopyWithImpl(
    _$OfflineImpl _value,
    $Res Function(_$OfflineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OfflineImpl implements _Offline {
  const _$OfflineImpl();

  @override
  String toString() {
    return 'DriverOperationsState.offline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function() online,
    required TResult Function(DriverTripEntity driverTripRequest)
    tripRequestReceived,
    required TResult Function(
      String message,
      DriverOperationsState? previousState,
    )
    error,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function()? online,
    TResult? Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult? Function(String message, DriverOperationsState? previousState)?
    error,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function()? online,
    TResult Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult Function(String message, DriverOperationsState? previousState)?
    error,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
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
  const factory _Offline() = _$OfflineImpl;
}

/// @nodoc
abstract class _$$OnlineImplCopyWith<$Res> {
  factory _$$OnlineImplCopyWith(
    _$OnlineImpl value,
    $Res Function(_$OnlineImpl) then,
  ) = __$$OnlineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnlineImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$OnlineImpl>
    implements _$$OnlineImplCopyWith<$Res> {
  __$$OnlineImplCopyWithImpl(
    _$OnlineImpl _value,
    $Res Function(_$OnlineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnlineImpl implements _Online {
  const _$OnlineImpl();

  @override
  String toString() {
    return 'DriverOperationsState.online()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnlineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function() online,
    required TResult Function(DriverTripEntity driverTripRequest)
    tripRequestReceived,
    required TResult Function(
      String message,
      DriverOperationsState? previousState,
    )
    error,
  }) {
    return online();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function()? online,
    TResult? Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult? Function(String message, DriverOperationsState? previousState)?
    error,
  }) {
    return online?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function()? online,
    TResult Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult Function(String message, DriverOperationsState? previousState)?
    error,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online();
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
  const factory _Online() = _$OnlineImpl;
}

/// @nodoc
abstract class _$$TripRequestReceivedImplCopyWith<$Res> {
  factory _$$TripRequestReceivedImplCopyWith(
    _$TripRequestReceivedImpl value,
    $Res Function(_$TripRequestReceivedImpl) then,
  ) = __$$TripRequestReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity driverTripRequest});
}

/// @nodoc
class __$$TripRequestReceivedImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$TripRequestReceivedImpl>
    implements _$$TripRequestReceivedImplCopyWith<$Res> {
  __$$TripRequestReceivedImplCopyWithImpl(
    _$TripRequestReceivedImpl _value,
    $Res Function(_$TripRequestReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? driverTripRequest = null}) {
    return _then(
      _$TripRequestReceivedImpl(
        driverTripRequest:
            null == driverTripRequest
                ? _value.driverTripRequest
                : driverTripRequest // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
      ),
    );
  }
}

/// @nodoc

class _$TripRequestReceivedImpl implements _TripRequestReceived {
  const _$TripRequestReceivedImpl({required this.driverTripRequest});

  @override
  final DriverTripEntity driverTripRequest;

  @override
  String toString() {
    return 'DriverOperationsState.tripRequestReceived(driverTripRequest: $driverTripRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRequestReceivedImpl &&
            (identical(other.driverTripRequest, driverTripRequest) ||
                other.driverTripRequest == driverTripRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverTripRequest);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRequestReceivedImplCopyWith<_$TripRequestReceivedImpl> get copyWith =>
      __$$TripRequestReceivedImplCopyWithImpl<_$TripRequestReceivedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function() online,
    required TResult Function(DriverTripEntity driverTripRequest)
    tripRequestReceived,
    required TResult Function(
      String message,
      DriverOperationsState? previousState,
    )
    error,
  }) {
    return tripRequestReceived(driverTripRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function()? online,
    TResult? Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult? Function(String message, DriverOperationsState? previousState)?
    error,
  }) {
    return tripRequestReceived?.call(driverTripRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function()? online,
    TResult Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
    TResult Function(String message, DriverOperationsState? previousState)?
    error,
    required TResult orElse(),
  }) {
    if (tripRequestReceived != null) {
      return tripRequestReceived(driverTripRequest);
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
  const factory _TripRequestReceived({
    required final DriverTripEntity driverTripRequest,
  }) = _$TripRequestReceivedImpl;

  DriverTripEntity get driverTripRequest;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRequestReceivedImplCopyWith<_$TripRequestReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateErrorImplCopyWith<$Res> {
  factory _$$StateErrorImplCopyWith(
    _$StateErrorImpl value,
    $Res Function(_$StateErrorImpl) then,
  ) = __$$StateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, DriverOperationsState? previousState});

  $DriverOperationsStateCopyWith<$Res>? get previousState;
}

/// @nodoc
class __$$StateErrorImplCopyWithImpl<$Res>
    extends _$DriverOperationsStateCopyWithImpl<$Res, _$StateErrorImpl>
    implements _$$StateErrorImplCopyWith<$Res> {
  __$$StateErrorImplCopyWithImpl(
    _$StateErrorImpl _value,
    $Res Function(_$StateErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? previousState = freezed}) {
    return _then(
      _$StateErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        previousState:
            freezed == previousState
                ? _value.previousState
                : previousState // ignore: cast_nullable_to_non_nullable
                    as DriverOperationsState?,
      ),
    );
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
    required TResult Function() offline,
    required TResult Function() online,
    required TResult Function(DriverTripEntity driverTripRequest)
    tripRequestReceived,
    required TResult Function(
      String message,
      DriverOperationsState? previousState,
    )
    error,
  }) {
    return error(message, previousState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function()? online,
    TResult? Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
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
    TResult Function()? offline,
    TResult Function()? online,
    TResult Function(DriverTripEntity driverTripRequest)? tripRequestReceived,
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
  const factory _StateError({
    required final String message,
    final DriverOperationsState? previousState,
  }) = _$StateErrorImpl;

  String get message;
  DriverOperationsState? get previousState;

  /// Create a copy of DriverOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateErrorImplCopyWith<_$StateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
