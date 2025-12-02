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
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
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
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return startTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return startTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
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
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return startTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return startTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
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
abstract class _$$LocationStopTrackingImplCopyWith<$Res> {
  factory _$$LocationStopTrackingImplCopyWith(
    _$LocationStopTrackingImpl value,
    $Res Function(_$LocationStopTrackingImpl) then,
  ) = __$$LocationStopTrackingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStopTrackingImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationStopTrackingImpl>
    implements _$$LocationStopTrackingImplCopyWith<$Res> {
  __$$LocationStopTrackingImplCopyWithImpl(
    _$LocationStopTrackingImpl _value,
    $Res Function(_$LocationStopTrackingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationStopTrackingImpl implements LocationStopTracking {
  const _$LocationStopTrackingImpl();

  @override
  String toString() {
    return 'LocationEvent.stopTracking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStopTrackingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return stopTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return stopTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
    required TResult orElse(),
  }) {
    if (stopTracking != null) {
      return stopTracking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return stopTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return stopTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
    required TResult orElse(),
  }) {
    if (stopTracking != null) {
      return stopTracking(this);
    }
    return orElse();
  }
}

abstract class LocationStopTracking implements LocationEvent {
  const factory LocationStopTracking() = _$LocationStopTrackingImpl;
}

/// @nodoc
abstract class _$$LocationRequestPermissionsImplCopyWith<$Res> {
  factory _$$LocationRequestPermissionsImplCopyWith(
    _$LocationRequestPermissionsImpl value,
    $Res Function(_$LocationRequestPermissionsImpl) then,
  ) = __$$LocationRequestPermissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationRequestPermissionsImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationRequestPermissionsImpl>
    implements _$$LocationRequestPermissionsImplCopyWith<$Res> {
  __$$LocationRequestPermissionsImplCopyWithImpl(
    _$LocationRequestPermissionsImpl _value,
    $Res Function(_$LocationRequestPermissionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationRequestPermissionsImpl implements LocationRequestPermissions {
  const _$LocationRequestPermissionsImpl();

  @override
  String toString() {
    return 'LocationEvent.requestPermissions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationRequestPermissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return requestPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return requestPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
    required TResult orElse(),
  }) {
    if (requestPermissions != null) {
      return requestPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return requestPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return requestPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
    required TResult orElse(),
  }) {
    if (requestPermissions != null) {
      return requestPermissions(this);
    }
    return orElse();
  }
}

abstract class LocationRequestPermissions implements LocationEvent {
  const factory LocationRequestPermissions() = _$LocationRequestPermissionsImpl;
}

/// @nodoc
abstract class _$$LocationPermissionsDeniedImplCopyWith<$Res> {
  factory _$$LocationPermissionsDeniedImplCopyWith(
    _$LocationPermissionsDeniedImpl value,
    $Res Function(_$LocationPermissionsDeniedImpl) then,
  ) = __$$LocationPermissionsDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionsDeniedImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationPermissionsDeniedImpl>
    implements _$$LocationPermissionsDeniedImplCopyWith<$Res> {
  __$$LocationPermissionsDeniedImplCopyWithImpl(
    _$LocationPermissionsDeniedImpl _value,
    $Res Function(_$LocationPermissionsDeniedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationPermissionsDeniedImpl implements LocationPermissionsDenied {
  const _$LocationPermissionsDeniedImpl();

  @override
  String toString() {
    return 'LocationEvent.permissionsDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionsDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return permissionsDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return permissionsDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
    required TResult orElse(),
  }) {
    if (permissionsDenied != null) {
      return permissionsDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return permissionsDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return permissionsDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
    required TResult orElse(),
  }) {
    if (permissionsDenied != null) {
      return permissionsDenied(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionsDenied implements LocationEvent {
  const factory LocationPermissionsDenied() = _$LocationPermissionsDeniedImpl;
}

/// @nodoc
abstract class _$$LocationPermissionsGrantedImplCopyWith<$Res> {
  factory _$$LocationPermissionsGrantedImplCopyWith(
    _$LocationPermissionsGrantedImpl value,
    $Res Function(_$LocationPermissionsGrantedImpl) then,
  ) = __$$LocationPermissionsGrantedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionsGrantedImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationPermissionsGrantedImpl>
    implements _$$LocationPermissionsGrantedImplCopyWith<$Res> {
  __$$LocationPermissionsGrantedImplCopyWithImpl(
    _$LocationPermissionsGrantedImpl _value,
    $Res Function(_$LocationPermissionsGrantedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationPermissionsGrantedImpl implements LocationPermissionsGranted {
  const _$LocationPermissionsGrantedImpl();

  @override
  String toString() {
    return 'LocationEvent.permissionsGranted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionsGrantedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return permissionsGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return permissionsGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
    required TResult orElse(),
  }) {
    if (permissionsGranted != null) {
      return permissionsGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return permissionsGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return permissionsGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
    required TResult orElse(),
  }) {
    if (permissionsGranted != null) {
      return permissionsGranted(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionsGranted implements LocationEvent {
  const factory LocationPermissionsGranted() = _$LocationPermissionsGrantedImpl;
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
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return updateSettings(accuracy, distanceFilterMeters, timeIntervalMs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return updateSettings?.call(accuracy, distanceFilterMeters, timeIntervalMs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
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
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
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
abstract class _$$LocationReceivedImplCopyWith<$Res> {
  factory _$$LocationReceivedImplCopyWith(
    _$LocationReceivedImpl value,
    $Res Function(_$LocationReceivedImpl) then,
  ) = __$$LocationReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$LocationReceivedImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationReceivedImpl>
    implements _$$LocationReceivedImplCopyWith<$Res> {
  __$$LocationReceivedImplCopyWithImpl(
    _$LocationReceivedImpl _value,
    $Res Function(_$LocationReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? position = null}) {
    return _then(
      _$LocationReceivedImpl(
        null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                as Position,
      ),
    );
  }
}

/// @nodoc

class _$LocationReceivedImpl implements LocationReceived {
  const _$LocationReceivedImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'LocationEvent.locationReceived(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationReceivedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationReceivedImplCopyWith<_$LocationReceivedImpl> get copyWith =>
      __$$LocationReceivedImplCopyWithImpl<_$LocationReceivedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return locationReceived(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return locationReceived?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
    required TResult orElse(),
  }) {
    if (locationReceived != null) {
      return locationReceived(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return locationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return locationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
    required TResult orElse(),
  }) {
    if (locationReceived != null) {
      return locationReceived(this);
    }
    return orElse();
  }
}

abstract class LocationReceived implements LocationEvent {
  const factory LocationReceived(final Position position) =
      _$LocationReceivedImpl;

  Position get position;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationReceivedImplCopyWith<_$LocationReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationErrorImplCopyWith<$Res> {
  factory _$$LocationErrorImplCopyWith(
    _$LocationErrorImpl value,
    $Res Function(_$LocationErrorImpl) then,
  ) = __$$LocationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LocationErrorImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationErrorImpl>
    implements _$$LocationErrorImplCopyWith<$Res> {
  __$$LocationErrorImplCopyWithImpl(
    _$LocationErrorImpl _value,
    $Res Function(_$LocationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$LocationErrorImpl(
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$LocationErrorImpl implements LocationError {
  const _$LocationErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LocationEvent.locationError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationErrorImplCopyWith<_$LocationErrorImpl> get copyWith =>
      __$$LocationErrorImplCopyWithImpl<_$LocationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function() stopTracking,
    required TResult Function() requestPermissions,
    required TResult Function() permissionsDenied,
    required TResult Function() permissionsGranted,
    required TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )
    updateSettings,
    required TResult Function(Position position) locationReceived,
    required TResult Function(String error) locationError,
  }) {
    return locationError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function()? stopTracking,
    TResult? Function()? requestPermissions,
    TResult? Function()? permissionsDenied,
    TResult? Function()? permissionsGranted,
    TResult? Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult? Function(Position position)? locationReceived,
    TResult? Function(String error)? locationError,
  }) {
    return locationError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function()? stopTracking,
    TResult Function()? requestPermissions,
    TResult Function()? permissionsDenied,
    TResult Function()? permissionsGranted,
    TResult Function(
      String accuracy,
      int distanceFilterMeters,
      int timeIntervalMs,
    )?
    updateSettings,
    TResult Function(Position position)? locationReceived,
    TResult Function(String error)? locationError,
    required TResult orElse(),
  }) {
    if (locationError != null) {
      return locationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStartTracking value) startTracking,
    required TResult Function(LocationStopTracking value) stopTracking,
    required TResult Function(LocationRequestPermissions value)
    requestPermissions,
    required TResult Function(LocationPermissionsDenied value)
    permissionsDenied,
    required TResult Function(LocationPermissionsGranted value)
    permissionsGranted,
    required TResult Function(LocationUpdateSettings value) updateSettings,
    required TResult Function(LocationReceived value) locationReceived,
    required TResult Function(LocationError value) locationError,
  }) {
    return locationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStartTracking value)? startTracking,
    TResult? Function(LocationStopTracking value)? stopTracking,
    TResult? Function(LocationRequestPermissions value)? requestPermissions,
    TResult? Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult? Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult? Function(LocationUpdateSettings value)? updateSettings,
    TResult? Function(LocationReceived value)? locationReceived,
    TResult? Function(LocationError value)? locationError,
  }) {
    return locationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStartTracking value)? startTracking,
    TResult Function(LocationStopTracking value)? stopTracking,
    TResult Function(LocationRequestPermissions value)? requestPermissions,
    TResult Function(LocationPermissionsDenied value)? permissionsDenied,
    TResult Function(LocationPermissionsGranted value)? permissionsGranted,
    TResult Function(LocationUpdateSettings value)? updateSettings,
    TResult Function(LocationReceived value)? locationReceived,
    TResult Function(LocationError value)? locationError,
    required TResult orElse(),
  }) {
    if (locationError != null) {
      return locationError(this);
    }
    return orElse();
  }
}

abstract class LocationError implements LocationEvent {
  const factory LocationError(final String error) = _$LocationErrorImpl;

  String get error;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationErrorImplCopyWith<_$LocationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
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
abstract class _$$LocationInitialImplCopyWith<$Res> {
  factory _$$LocationInitialImplCopyWith(
    _$LocationInitialImpl value,
    $Res Function(_$LocationInitialImpl) then,
  ) = __$$LocationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationInitialImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationInitialImpl>
    implements _$$LocationInitialImplCopyWith<$Res> {
  __$$LocationInitialImplCopyWithImpl(
    _$LocationInitialImpl _value,
    $Res Function(_$LocationInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationInitialImpl implements LocationInitial {
  const _$LocationInitialImpl();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
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
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationInitial implements LocationState {
  const factory LocationInitial() = _$LocationInitialImpl;
}

/// @nodoc
abstract class _$$LocationPermissionRequiredImplCopyWith<$Res> {
  factory _$$LocationPermissionRequiredImplCopyWith(
    _$LocationPermissionRequiredImpl value,
    $Res Function(_$LocationPermissionRequiredImpl) then,
  ) = __$$LocationPermissionRequiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionRequiredImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationPermissionRequiredImpl>
    implements _$$LocationPermissionRequiredImplCopyWith<$Res> {
  __$$LocationPermissionRequiredImplCopyWithImpl(
    _$LocationPermissionRequiredImpl _value,
    $Res Function(_$LocationPermissionRequiredImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationPermissionRequiredImpl implements LocationPermissionRequired {
  const _$LocationPermissionRequiredImpl();

  @override
  String toString() {
    return 'LocationState.permissionRequired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionRequiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return permissionRequired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) {
    return permissionRequired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (permissionRequired != null) {
      return permissionRequired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return permissionRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return permissionRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (permissionRequired != null) {
      return permissionRequired(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionRequired implements LocationState {
  const factory LocationPermissionRequired() = _$LocationPermissionRequiredImpl;
}

/// @nodoc
abstract class _$$LocationPermissionDeniedImplCopyWith<$Res> {
  factory _$$LocationPermissionDeniedImplCopyWith(
    _$LocationPermissionDeniedImpl value,
    $Res Function(_$LocationPermissionDeniedImpl) then,
  ) = __$$LocationPermissionDeniedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocationPermissionDeniedImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationPermissionDeniedImpl>
    implements _$$LocationPermissionDeniedImplCopyWith<$Res> {
  __$$LocationPermissionDeniedImplCopyWithImpl(
    _$LocationPermissionDeniedImpl _value,
    $Res Function(_$LocationPermissionDeniedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LocationPermissionDeniedImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$LocationPermissionDeniedImpl implements LocationPermissionDenied {
  const _$LocationPermissionDeniedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LocationState.permissionDenied(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionDeniedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPermissionDeniedImplCopyWith<_$LocationPermissionDeniedImpl>
  get copyWith => __$$LocationPermissionDeniedImplCopyWithImpl<
    _$LocationPermissionDeniedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return permissionDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) {
    return permissionDenied?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionDenied implements LocationState {
  const factory LocationPermissionDenied({required final String message}) =
      _$LocationPermissionDeniedImpl;

  String get message;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationPermissionDeniedImplCopyWith<_$LocationPermissionDeniedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationTrackingImplCopyWith<$Res> {
  factory _$$LocationTrackingImplCopyWith(
    _$LocationTrackingImpl value,
    $Res Function(_$LocationTrackingImpl) then,
  ) = __$$LocationTrackingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    Position currentPosition,
    DateTime lastUpdate,
    String accuracy,
    int? satelliteCount,
  });
}

/// @nodoc
class __$$LocationTrackingImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationTrackingImpl>
    implements _$$LocationTrackingImplCopyWith<$Res> {
  __$$LocationTrackingImplCopyWithImpl(
    _$LocationTrackingImpl _value,
    $Res Function(_$LocationTrackingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = null,
    Object? lastUpdate = null,
    Object? accuracy = null,
    Object? satelliteCount = freezed,
  }) {
    return _then(
      _$LocationTrackingImpl(
        currentPosition:
            null == currentPosition
                ? _value.currentPosition
                : currentPosition // ignore: cast_nullable_to_non_nullable
                    as Position,
        lastUpdate:
            null == lastUpdate
                ? _value.lastUpdate
                : lastUpdate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        accuracy:
            null == accuracy
                ? _value.accuracy
                : accuracy // ignore: cast_nullable_to_non_nullable
                    as String,
        satelliteCount:
            freezed == satelliteCount
                ? _value.satelliteCount
                : satelliteCount // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$LocationTrackingImpl implements LocationTracking {
  const _$LocationTrackingImpl({
    required this.currentPosition,
    required this.lastUpdate,
    required this.accuracy,
    this.satelliteCount,
  });

  @override
  final Position currentPosition;
  @override
  final DateTime lastUpdate;
  @override
  final String accuracy;
  @override
  final int? satelliteCount;

  @override
  String toString() {
    return 'LocationState.tracking(currentPosition: $currentPosition, lastUpdate: $lastUpdate, accuracy: $accuracy, satelliteCount: $satelliteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationTrackingImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.satelliteCount, satelliteCount) ||
                other.satelliteCount == satelliteCount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentPosition,
    lastUpdate,
    accuracy,
    satelliteCount,
  );

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationTrackingImplCopyWith<_$LocationTrackingImpl> get copyWith =>
      __$$LocationTrackingImplCopyWithImpl<_$LocationTrackingImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return tracking(currentPosition, lastUpdate, accuracy, satelliteCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) {
    return tracking?.call(
      currentPosition,
      lastUpdate,
      accuracy,
      satelliteCount,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (tracking != null) {
      return tracking(currentPosition, lastUpdate, accuracy, satelliteCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return tracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return tracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
    TResult Function(LocationStopped value)? stopped,
    TResult Function(LocationErrors value)? errors,
    TResult Function(LocationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (tracking != null) {
      return tracking(this);
    }
    return orElse();
  }
}

abstract class LocationTracking implements LocationState {
  const factory LocationTracking({
    required final Position currentPosition,
    required final DateTime lastUpdate,
    required final String accuracy,
    final int? satelliteCount,
  }) = _$LocationTrackingImpl;

  Position get currentPosition;
  DateTime get lastUpdate;
  String get accuracy;
  int? get satelliteCount;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationTrackingImplCopyWith<_$LocationTrackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationStoppedImplCopyWith<$Res> {
  factory _$$LocationStoppedImplCopyWith(
    _$LocationStoppedImpl value,
    $Res Function(_$LocationStoppedImpl) then,
  ) = __$$LocationStoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position? lastKnownPosition});
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
                    as Position?,
      ),
    );
  }
}

/// @nodoc

class _$LocationStoppedImpl implements LocationStopped {
  const _$LocationStoppedImpl({this.lastKnownPosition});

  @override
  final Position? lastKnownPosition;

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
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return stopped(lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) {
    return stopped?.call(lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
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
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
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
  const factory LocationStopped({final Position? lastKnownPosition}) =
      _$LocationStoppedImpl;

  Position? get lastKnownPosition;

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
  $Res call({String message, Position? lastKnownPosition});
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
                    as Position?,
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
  final Position? lastKnownPosition;

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
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return errors(message, lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) {
    return errors?.call(message, lastKnownPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
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
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return errors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return errors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
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
    final Position? lastKnownPosition,
  }) = _$LocationErrorsImpl;

  String get message;
  Position? get lastKnownPosition;

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
    required TResult Function() initial,
    required TResult Function() permissionRequired,
    required TResult Function(String message) permissionDenied,
    required TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )
    tracking,
    required TResult Function(Position? lastKnownPosition) stopped,
    required TResult Function(String message, Position? lastKnownPosition)
    errors,
    required TResult Function(String? message) loading,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionRequired,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult? Function(Position? lastKnownPosition)? stopped,
    TResult? Function(String message, Position? lastKnownPosition)? errors,
    TResult? Function(String? message)? loading,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionRequired,
    TResult Function(String message)? permissionDenied,
    TResult Function(
      Position currentPosition,
      DateTime lastUpdate,
      String accuracy,
      int? satelliteCount,
    )?
    tracking,
    TResult Function(Position? lastKnownPosition)? stopped,
    TResult Function(String message, Position? lastKnownPosition)? errors,
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
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationPermissionRequired value)
    permissionRequired,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationTracking value) tracking,
    required TResult Function(LocationStopped value) stopped,
    required TResult Function(LocationErrors value) errors,
    required TResult Function(LocationLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationPermissionRequired value)? permissionRequired,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationTracking value)? tracking,
    TResult? Function(LocationStopped value)? stopped,
    TResult? Function(LocationErrors value)? errors,
    TResult? Function(LocationLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationPermissionRequired value)? permissionRequired,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationTracking value)? tracking,
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
