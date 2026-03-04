// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_trip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverTripEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTripEventCopyWith<$Res> {
  factory $DriverTripEventCopyWith(
    DriverTripEvent value,
    $Res Function(DriverTripEvent) then,
  ) = _$DriverTripEventCopyWithImpl<$Res, DriverTripEvent>;
}

/// @nodoc
class _$DriverTripEventCopyWithImpl<$Res, $Val extends DriverTripEvent>
    implements $DriverTripEventCopyWith<$Res> {
  _$DriverTripEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DriverTripInitializeImplCopyWith<$Res> {
  factory _$$DriverTripInitializeImplCopyWith(
    _$DriverTripInitializeImpl value,
    $Res Function(_$DriverTripInitializeImpl) then,
  ) = __$$DriverTripInitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripInitializeImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripInitializeImpl>
    implements _$$DriverTripInitializeImplCopyWith<$Res> {
  __$$DriverTripInitializeImplCopyWithImpl(
    _$DriverTripInitializeImpl _value,
    $Res Function(_$DriverTripInitializeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripInitializeImpl
    with DiagnosticableTreeMixin
    implements DriverTripInitialize {
  const _$DriverTripInitializeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.initialize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DriverTripEvent.initialize'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripInitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
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
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class DriverTripInitialize implements DriverTripEvent {
  const factory DriverTripInitialize() = _$DriverTripInitializeImpl;
}

/// @nodoc
abstract class _$$DriverTripSetIdleImplCopyWith<$Res> {
  factory _$$DriverTripSetIdleImplCopyWith(
    _$DriverTripSetIdleImpl value,
    $Res Function(_$DriverTripSetIdleImpl) then,
  ) = __$$DriverTripSetIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripSetIdleImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripSetIdleImpl>
    implements _$$DriverTripSetIdleImplCopyWith<$Res> {
  __$$DriverTripSetIdleImplCopyWithImpl(
    _$DriverTripSetIdleImpl _value,
    $Res Function(_$DriverTripSetIdleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripSetIdleImpl
    with DiagnosticableTreeMixin
    implements DriverTripSetIdle {
  const _$DriverTripSetIdleImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.setIdle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DriverTripEvent.setIdle'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DriverTripSetIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return setIdle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return setIdle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (setIdle != null) {
      return setIdle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return setIdle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return setIdle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (setIdle != null) {
      return setIdle(this);
    }
    return orElse();
  }
}

abstract class DriverTripSetIdle implements DriverTripEvent {
  const factory DriverTripSetIdle() = _$DriverTripSetIdleImpl;
}

/// @nodoc
abstract class _$$DriverTripRequestReceivedImplCopyWith<$Res> {
  factory _$$DriverTripRequestReceivedImplCopyWith(
    _$DriverTripRequestReceivedImpl value,
    $Res Function(_$DriverTripRequestReceivedImpl) then,
  ) = __$$DriverTripRequestReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity trip});
}

/// @nodoc
class __$$DriverTripRequestReceivedImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripRequestReceivedImpl>
    implements _$$DriverTripRequestReceivedImplCopyWith<$Res> {
  __$$DriverTripRequestReceivedImplCopyWithImpl(
    _$DriverTripRequestReceivedImpl _value,
    $Res Function(_$DriverTripRequestReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? trip = null}) {
    return _then(
      _$DriverTripRequestReceivedImpl(
        trip:
            null == trip
                ? _value.trip
                : trip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripRequestReceivedImpl
    with DiagnosticableTreeMixin
    implements DriverTripRequestReceived {
  const _$DriverTripRequestReceivedImpl({required this.trip});

  @override
  final DriverTripEntity trip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.tripRequestReceived(trip: $trip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripEvent.tripRequestReceived'))
      ..add(DiagnosticsProperty('trip', trip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripRequestReceivedImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripRequestReceivedImplCopyWith<_$DriverTripRequestReceivedImpl>
  get copyWith => __$$DriverTripRequestReceivedImplCopyWithImpl<
    _$DriverTripRequestReceivedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return tripRequestReceived(trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return tripRequestReceived?.call(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (tripRequestReceived != null) {
      return tripRequestReceived(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return tripRequestReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return tripRequestReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (tripRequestReceived != null) {
      return tripRequestReceived(this);
    }
    return orElse();
  }
}

abstract class DriverTripRequestReceived implements DriverTripEvent {
  const factory DriverTripRequestReceived({
    required final DriverTripEntity trip,
  }) = _$DriverTripRequestReceivedImpl;

  DriverTripEntity get trip;

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripRequestReceivedImplCopyWith<_$DriverTripRequestReceivedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripAcceptedConfirmationImplCopyWith<$Res> {
  factory _$$DriverTripAcceptedConfirmationImplCopyWith(
    _$DriverTripAcceptedConfirmationImpl value,
    $Res Function(_$DriverTripAcceptedConfirmationImpl) then,
  ) = __$$DriverTripAcceptedConfirmationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripConfirmationEntity confirmationTrip});
}

/// @nodoc
class __$$DriverTripAcceptedConfirmationImplCopyWithImpl<$Res>
    extends
        _$DriverTripEventCopyWithImpl<
          $Res,
          _$DriverTripAcceptedConfirmationImpl
        >
    implements _$$DriverTripAcceptedConfirmationImplCopyWith<$Res> {
  __$$DriverTripAcceptedConfirmationImplCopyWithImpl(
    _$DriverTripAcceptedConfirmationImpl _value,
    $Res Function(_$DriverTripAcceptedConfirmationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? confirmationTrip = null}) {
    return _then(
      _$DriverTripAcceptedConfirmationImpl(
        confirmationTrip:
            null == confirmationTrip
                ? _value.confirmationTrip
                : confirmationTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripConfirmationEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripAcceptedConfirmationImpl
    with DiagnosticableTreeMixin
    implements DriverTripAcceptedConfirmation {
  const _$DriverTripAcceptedConfirmationImpl({required this.confirmationTrip});

  @override
  final DriverTripConfirmationEntity confirmationTrip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.tripAcceptedConfirmation(confirmationTrip: $confirmationTrip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty('type', 'DriverTripEvent.tripAcceptedConfirmation'),
      )
      ..add(DiagnosticsProperty('confirmationTrip', confirmationTrip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripAcceptedConfirmationImpl &&
            (identical(other.confirmationTrip, confirmationTrip) ||
                other.confirmationTrip == confirmationTrip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmationTrip);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripAcceptedConfirmationImplCopyWith<
    _$DriverTripAcceptedConfirmationImpl
  >
  get copyWith => __$$DriverTripAcceptedConfirmationImplCopyWithImpl<
    _$DriverTripAcceptedConfirmationImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return tripAcceptedConfirmation(confirmationTrip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return tripAcceptedConfirmation?.call(confirmationTrip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (tripAcceptedConfirmation != null) {
      return tripAcceptedConfirmation(confirmationTrip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return tripAcceptedConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return tripAcceptedConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (tripAcceptedConfirmation != null) {
      return tripAcceptedConfirmation(this);
    }
    return orElse();
  }
}

abstract class DriverTripAcceptedConfirmation implements DriverTripEvent {
  const factory DriverTripAcceptedConfirmation({
    required final DriverTripConfirmationEntity confirmationTrip,
  }) = _$DriverTripAcceptedConfirmationImpl;

  DriverTripConfirmationEntity get confirmationTrip;

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripAcceptedConfirmationImplCopyWith<
    _$DriverTripAcceptedConfirmationImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripAcceptTripImplCopyWith<$Res> {
  factory _$$DriverTripAcceptTripImplCopyWith(
    _$DriverTripAcceptTripImpl value,
    $Res Function(_$DriverTripAcceptTripImpl) then,
  ) = __$$DriverTripAcceptTripImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity trip});
}

/// @nodoc
class __$$DriverTripAcceptTripImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripAcceptTripImpl>
    implements _$$DriverTripAcceptTripImplCopyWith<$Res> {
  __$$DriverTripAcceptTripImplCopyWithImpl(
    _$DriverTripAcceptTripImpl _value,
    $Res Function(_$DriverTripAcceptTripImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? trip = null}) {
    return _then(
      _$DriverTripAcceptTripImpl(
        trip:
            null == trip
                ? _value.trip
                : trip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripAcceptTripImpl
    with DiagnosticableTreeMixin
    implements DriverTripAcceptTrip {
  const _$DriverTripAcceptTripImpl({required this.trip});

  @override
  final DriverTripEntity trip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.acceptTrip(trip: $trip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripEvent.acceptTrip'))
      ..add(DiagnosticsProperty('trip', trip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripAcceptTripImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripAcceptTripImplCopyWith<_$DriverTripAcceptTripImpl>
  get copyWith =>
      __$$DriverTripAcceptTripImplCopyWithImpl<_$DriverTripAcceptTripImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return acceptTrip(trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return acceptTrip?.call(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (acceptTrip != null) {
      return acceptTrip(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return acceptTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return acceptTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (acceptTrip != null) {
      return acceptTrip(this);
    }
    return orElse();
  }
}

abstract class DriverTripAcceptTrip implements DriverTripEvent {
  const factory DriverTripAcceptTrip({required final DriverTripEntity trip}) =
      _$DriverTripAcceptTripImpl;

  DriverTripEntity get trip;

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripAcceptTripImplCopyWith<_$DriverTripAcceptTripImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripDeclineTripImplCopyWith<$Res> {
  factory _$$DriverTripDeclineTripImplCopyWith(
    _$DriverTripDeclineTripImpl value,
    $Res Function(_$DriverTripDeclineTripImpl) then,
  ) = __$$DriverTripDeclineTripImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity trip});
}

/// @nodoc
class __$$DriverTripDeclineTripImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripDeclineTripImpl>
    implements _$$DriverTripDeclineTripImplCopyWith<$Res> {
  __$$DriverTripDeclineTripImplCopyWithImpl(
    _$DriverTripDeclineTripImpl _value,
    $Res Function(_$DriverTripDeclineTripImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? trip = null}) {
    return _then(
      _$DriverTripDeclineTripImpl(
        trip:
            null == trip
                ? _value.trip
                : trip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripDeclineTripImpl
    with DiagnosticableTreeMixin
    implements DriverTripDeclineTrip {
  const _$DriverTripDeclineTripImpl({required this.trip});

  @override
  final DriverTripEntity trip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.declineTrip(trip: $trip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripEvent.declineTrip'))
      ..add(DiagnosticsProperty('trip', trip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripDeclineTripImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripDeclineTripImplCopyWith<_$DriverTripDeclineTripImpl>
  get copyWith =>
      __$$DriverTripDeclineTripImplCopyWithImpl<_$DriverTripDeclineTripImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return declineTrip(trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return declineTrip?.call(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (declineTrip != null) {
      return declineTrip(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return declineTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return declineTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (declineTrip != null) {
      return declineTrip(this);
    }
    return orElse();
  }
}

abstract class DriverTripDeclineTrip implements DriverTripEvent {
  const factory DriverTripDeclineTrip({required final DriverTripEntity trip}) =
      _$DriverTripDeclineTripImpl;

  DriverTripEntity get trip;

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripDeclineTripImplCopyWith<_$DriverTripDeclineTripImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripExpiredImplCopyWith<$Res> {
  factory _$$DriverTripExpiredImplCopyWith(
    _$DriverTripExpiredImpl value,
    $Res Function(_$DriverTripExpiredImpl) then,
  ) = __$$DriverTripExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripExpiredImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripExpiredImpl>
    implements _$$DriverTripExpiredImplCopyWith<$Res> {
  __$$DriverTripExpiredImplCopyWithImpl(
    _$DriverTripExpiredImpl _value,
    $Res Function(_$DriverTripExpiredImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripExpiredImpl
    with DiagnosticableTreeMixin
    implements DriverTripExpired {
  const _$DriverTripExpiredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.tripExpired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DriverTripEvent.tripExpired'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DriverTripExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return tripExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return tripExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (tripExpired != null) {
      return tripExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return tripExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return tripExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (tripExpired != null) {
      return tripExpired(this);
    }
    return orElse();
  }
}

abstract class DriverTripExpired implements DriverTripEvent {
  const factory DriverTripExpired() = _$DriverTripExpiredImpl;
}

/// @nodoc
abstract class _$$DriverTripStartImplCopyWith<$Res> {
  factory _$$DriverTripStartImplCopyWith(
    _$DriverTripStartImpl value,
    $Res Function(_$DriverTripStartImpl) then,
  ) = __$$DriverTripStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripStartImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripStartImpl>
    implements _$$DriverTripStartImplCopyWith<$Res> {
  __$$DriverTripStartImplCopyWithImpl(
    _$DriverTripStartImpl _value,
    $Res Function(_$DriverTripStartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripStartImpl
    with DiagnosticableTreeMixin
    implements DriverTripStart {
  const _$DriverTripStartImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.startTrip()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DriverTripEvent.startTrip'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DriverTripStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return startTrip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return startTrip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
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
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return startTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return startTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (startTrip != null) {
      return startTrip(this);
    }
    return orElse();
  }
}

abstract class DriverTripStart implements DriverTripEvent {
  const factory DriverTripStart() = _$DriverTripStartImpl;
}

/// @nodoc
abstract class _$$DriverTripStartedImplCopyWith<$Res> {
  factory _$$DriverTripStartedImplCopyWith(
    _$DriverTripStartedImpl value,
    $Res Function(_$DriverTripStartedImpl) then,
  ) = __$$DriverTripStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripStartedImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripStartedImpl>
    implements _$$DriverTripStartedImplCopyWith<$Res> {
  __$$DriverTripStartedImplCopyWithImpl(
    _$DriverTripStartedImpl _value,
    $Res Function(_$DriverTripStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripStartedImpl
    with DiagnosticableTreeMixin
    implements DriverTripStarted {
  const _$DriverTripStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.tripStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DriverTripEvent.tripStarted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DriverTripStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return tripStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return tripStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (tripStarted != null) {
      return tripStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return tripStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return tripStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (tripStarted != null) {
      return tripStarted(this);
    }
    return orElse();
  }
}

abstract class DriverTripStarted implements DriverTripEvent {
  const factory DriverTripStarted() = _$DriverTripStartedImpl;
}

/// @nodoc
abstract class _$$DriverTripCompleteImplCopyWith<$Res> {
  factory _$$DriverTripCompleteImplCopyWith(
    _$DriverTripCompleteImpl value,
    $Res Function(_$DriverTripCompleteImpl) then,
  ) = __$$DriverTripCompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripCompleteImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripCompleteImpl>
    implements _$$DriverTripCompleteImplCopyWith<$Res> {
  __$$DriverTripCompleteImplCopyWithImpl(
    _$DriverTripCompleteImpl _value,
    $Res Function(_$DriverTripCompleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripCompleteImpl
    with DiagnosticableTreeMixin
    implements DriverTripComplete {
  const _$DriverTripCompleteImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.completeTrip()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripEvent.completeTrip'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DriverTripCompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return completeTrip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return completeTrip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (completeTrip != null) {
      return completeTrip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return completeTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return completeTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (completeTrip != null) {
      return completeTrip(this);
    }
    return orElse();
  }
}

abstract class DriverTripComplete implements DriverTripEvent {
  const factory DriverTripComplete() = _$DriverTripCompleteImpl;
}

/// @nodoc
abstract class _$$DriverTripCompletedEventImplCopyWith<$Res> {
  factory _$$DriverTripCompletedEventImplCopyWith(
    _$DriverTripCompletedEventImpl value,
    $Res Function(_$DriverTripCompletedEventImpl) then,
  ) = __$$DriverTripCompletedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripCompletedEventImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripCompletedEventImpl>
    implements _$$DriverTripCompletedEventImplCopyWith<$Res> {
  __$$DriverTripCompletedEventImplCopyWithImpl(
    _$DriverTripCompletedEventImpl _value,
    $Res Function(_$DriverTripCompletedEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripCompletedEventImpl
    with DiagnosticableTreeMixin
    implements DriverTripCompletedEvent {
  const _$DriverTripCompletedEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.tripCompleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripEvent.tripCompleted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripCompletedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return tripCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return tripCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (tripCompleted != null) {
      return tripCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return tripCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return tripCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (tripCompleted != null) {
      return tripCompleted(this);
    }
    return orElse();
  }
}

abstract class DriverTripCompletedEvent implements DriverTripEvent {
  const factory DriverTripCompletedEvent() = _$DriverTripCompletedEventImpl;
}

/// @nodoc
abstract class _$$DriverTripCancelImplCopyWith<$Res> {
  factory _$$DriverTripCancelImplCopyWith(
    _$DriverTripCancelImpl value,
    $Res Function(_$DriverTripCancelImpl) then,
  ) = __$$DriverTripCancelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity trip, String reason});
}

/// @nodoc
class __$$DriverTripCancelImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripCancelImpl>
    implements _$$DriverTripCancelImplCopyWith<$Res> {
  __$$DriverTripCancelImplCopyWithImpl(
    _$DriverTripCancelImpl _value,
    $Res Function(_$DriverTripCancelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? trip = null, Object? reason = null}) {
    return _then(
      _$DriverTripCancelImpl(
        trip:
            null == trip
                ? _value.trip
                : trip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
        reason:
            null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripCancelImpl
    with DiagnosticableTreeMixin
    implements DriverTripCancel {
  const _$DriverTripCancelImpl({required this.trip, required this.reason});

  @override
  final DriverTripEntity trip;
  @override
  final String reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.cancelTrip(trip: $trip, reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripEvent.cancelTrip'))
      ..add(DiagnosticsProperty('trip', trip))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripCancelImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, reason);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripCancelImplCopyWith<_$DriverTripCancelImpl> get copyWith =>
      __$$DriverTripCancelImplCopyWithImpl<_$DriverTripCancelImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return cancelTrip(trip, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return cancelTrip?.call(trip, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip(trip, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return cancelTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return cancelTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip(this);
    }
    return orElse();
  }
}

abstract class DriverTripCancel implements DriverTripEvent {
  const factory DriverTripCancel({
    required final DriverTripEntity trip,
    required final String reason,
  }) = _$DriverTripCancelImpl;

  DriverTripEntity get trip;
  String get reason;

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripCancelImplCopyWith<_$DriverTripCancelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripUpdateLocationImplCopyWith<$Res> {
  factory _$$DriverTripUpdateLocationImplCopyWith(
    _$DriverTripUpdateLocationImpl value,
    $Res Function(_$DriverTripUpdateLocationImpl) then,
  ) = __$$DriverTripUpdateLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity trip, LocationEntity currentLocation});
}

/// @nodoc
class __$$DriverTripUpdateLocationImplCopyWithImpl<$Res>
    extends _$DriverTripEventCopyWithImpl<$Res, _$DriverTripUpdateLocationImpl>
    implements _$$DriverTripUpdateLocationImplCopyWith<$Res> {
  __$$DriverTripUpdateLocationImplCopyWithImpl(
    _$DriverTripUpdateLocationImpl _value,
    $Res Function(_$DriverTripUpdateLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? trip = null, Object? currentLocation = null}) {
    return _then(
      _$DriverTripUpdateLocationImpl(
        trip:
            null == trip
                ? _value.trip
                : trip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
        currentLocation:
            null == currentLocation
                ? _value.currentLocation
                : currentLocation // ignore: cast_nullable_to_non_nullable
                    as LocationEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripUpdateLocationImpl
    with DiagnosticableTreeMixin
    implements DriverTripUpdateLocation {
  const _$DriverTripUpdateLocationImpl({
    required this.trip,
    required this.currentLocation,
  });

  @override
  final DriverTripEntity trip;
  @override
  final LocationEntity currentLocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripEvent.updateLocation(trip: $trip, currentLocation: $currentLocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripEvent.updateLocation'))
      ..add(DiagnosticsProperty('trip', trip))
      ..add(DiagnosticsProperty('currentLocation', currentLocation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripUpdateLocationImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, currentLocation);

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripUpdateLocationImplCopyWith<_$DriverTripUpdateLocationImpl>
  get copyWith => __$$DriverTripUpdateLocationImplCopyWithImpl<
    _$DriverTripUpdateLocationImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setIdle,
    required TResult Function(DriverTripEntity trip) tripRequestReceived,
    required TResult Function(DriverTripConfirmationEntity confirmationTrip)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripEntity trip) acceptTrip,
    required TResult Function(DriverTripEntity trip) declineTrip,
    required TResult Function() tripExpired,
    required TResult Function() startTrip,
    required TResult Function() tripStarted,
    required TResult Function() completeTrip,
    required TResult Function() tripCompleted,
    required TResult Function(DriverTripEntity trip, String reason) cancelTrip,
    required TResult Function(
      DriverTripEntity trip,
      LocationEntity currentLocation,
    )
    updateLocation,
  }) {
    return updateLocation(trip, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setIdle,
    TResult? Function(DriverTripEntity trip)? tripRequestReceived,
    TResult? Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripEntity trip)? acceptTrip,
    TResult? Function(DriverTripEntity trip)? declineTrip,
    TResult? Function()? tripExpired,
    TResult? Function()? startTrip,
    TResult? Function()? tripStarted,
    TResult? Function()? completeTrip,
    TResult? Function()? tripCompleted,
    TResult? Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult? Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
  }) {
    return updateLocation?.call(trip, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setIdle,
    TResult Function(DriverTripEntity trip)? tripRequestReceived,
    TResult Function(DriverTripConfirmationEntity confirmationTrip)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripEntity trip)? acceptTrip,
    TResult Function(DriverTripEntity trip)? declineTrip,
    TResult Function()? tripExpired,
    TResult Function()? startTrip,
    TResult Function()? tripStarted,
    TResult Function()? completeTrip,
    TResult Function()? tripCompleted,
    TResult Function(DriverTripEntity trip, String reason)? cancelTrip,
    TResult Function(DriverTripEntity trip, LocationEntity currentLocation)?
    updateLocation,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(trip, currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DriverTripInitialize value) initialize,
    required TResult Function(DriverTripSetIdle value) setIdle,
    required TResult Function(DriverTripRequestReceived value)
    tripRequestReceived,
    required TResult Function(DriverTripAcceptedConfirmation value)
    tripAcceptedConfirmation,
    required TResult Function(DriverTripAcceptTrip value) acceptTrip,
    required TResult Function(DriverTripDeclineTrip value) declineTrip,
    required TResult Function(DriverTripExpired value) tripExpired,
    required TResult Function(DriverTripStart value) startTrip,
    required TResult Function(DriverTripStarted value) tripStarted,
    required TResult Function(DriverTripComplete value) completeTrip,
    required TResult Function(DriverTripCompletedEvent value) tripCompleted,
    required TResult Function(DriverTripCancel value) cancelTrip,
    required TResult Function(DriverTripUpdateLocation value) updateLocation,
  }) {
    return updateLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DriverTripInitialize value)? initialize,
    TResult? Function(DriverTripSetIdle value)? setIdle,
    TResult? Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult? Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult? Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult? Function(DriverTripDeclineTrip value)? declineTrip,
    TResult? Function(DriverTripExpired value)? tripExpired,
    TResult? Function(DriverTripStart value)? startTrip,
    TResult? Function(DriverTripStarted value)? tripStarted,
    TResult? Function(DriverTripComplete value)? completeTrip,
    TResult? Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult? Function(DriverTripCancel value)? cancelTrip,
    TResult? Function(DriverTripUpdateLocation value)? updateLocation,
  }) {
    return updateLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DriverTripInitialize value)? initialize,
    TResult Function(DriverTripSetIdle value)? setIdle,
    TResult Function(DriverTripRequestReceived value)? tripRequestReceived,
    TResult Function(DriverTripAcceptedConfirmation value)?
    tripAcceptedConfirmation,
    TResult Function(DriverTripAcceptTrip value)? acceptTrip,
    TResult Function(DriverTripDeclineTrip value)? declineTrip,
    TResult Function(DriverTripExpired value)? tripExpired,
    TResult Function(DriverTripStart value)? startTrip,
    TResult Function(DriverTripStarted value)? tripStarted,
    TResult Function(DriverTripComplete value)? completeTrip,
    TResult Function(DriverTripCompletedEvent value)? tripCompleted,
    TResult Function(DriverTripCancel value)? cancelTrip,
    TResult Function(DriverTripUpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(this);
    }
    return orElse();
  }
}

abstract class DriverTripUpdateLocation implements DriverTripEvent {
  const factory DriverTripUpdateLocation({
    required final DriverTripEntity trip,
    required final LocationEntity currentLocation,
  }) = _$DriverTripUpdateLocationImpl;

  DriverTripEntity get trip;
  LocationEntity get currentLocation;

  /// Create a copy of DriverTripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripUpdateLocationImplCopyWith<_$DriverTripUpdateLocationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverTripState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTripStateCopyWith<$Res> {
  factory $DriverTripStateCopyWith(
    DriverTripState value,
    $Res Function(DriverTripState) then,
  ) = _$DriverTripStateCopyWithImpl<$Res, DriverTripState>;
}

/// @nodoc
class _$DriverTripStateCopyWithImpl<$Res, $Val extends DriverTripState>
    implements $DriverTripStateCopyWith<$Res> {
  _$DriverTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
    _$IdleImpl value,
    $Res Function(_$IdleImpl) then,
  ) = __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
    : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl with DiagnosticableTreeMixin implements Idle {
  const _$IdleImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DriverTripState.idle'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements DriverTripState {
  const factory Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$DrivverTripRequestReceivedImplCopyWith<$Res> {
  factory _$$DrivverTripRequestReceivedImplCopyWith(
    _$DrivverTripRequestReceivedImpl value,
    $Res Function(_$DrivverTripRequestReceivedImpl) then,
  ) = __$$DrivverTripRequestReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    DriverTripEntity tripRequest,
    DateTime receivedAt,
    int? timeoutSeconds,
  });
}

/// @nodoc
class __$$DrivverTripRequestReceivedImplCopyWithImpl<$Res>
    extends
        _$DriverTripStateCopyWithImpl<$Res, _$DrivverTripRequestReceivedImpl>
    implements _$$DrivverTripRequestReceivedImplCopyWith<$Res> {
  __$$DrivverTripRequestReceivedImplCopyWithImpl(
    _$DrivverTripRequestReceivedImpl _value,
    $Res Function(_$DrivverTripRequestReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripRequest = null,
    Object? receivedAt = null,
    Object? timeoutSeconds = freezed,
  }) {
    return _then(
      _$DrivverTripRequestReceivedImpl(
        tripRequest:
            null == tripRequest
                ? _value.tripRequest
                : tripRequest // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
        receivedAt:
            null == receivedAt
                ? _value.receivedAt
                : receivedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        timeoutSeconds:
            freezed == timeoutSeconds
                ? _value.timeoutSeconds
                : timeoutSeconds // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$DrivverTripRequestReceivedImpl
    with DiagnosticableTreeMixin
    implements DrivverTripRequestReceived {
  const _$DrivverTripRequestReceivedImpl({
    required this.tripRequest,
    required this.receivedAt,
    this.timeoutSeconds,
  });

  @override
  final DriverTripEntity tripRequest;
  @override
  final DateTime receivedAt;
  @override
  final int? timeoutSeconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.requestReceived(tripRequest: $tripRequest, receivedAt: $receivedAt, timeoutSeconds: $timeoutSeconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.requestReceived'))
      ..add(DiagnosticsProperty('tripRequest', tripRequest))
      ..add(DiagnosticsProperty('receivedAt', receivedAt))
      ..add(DiagnosticsProperty('timeoutSeconds', timeoutSeconds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrivverTripRequestReceivedImpl &&
            (identical(other.tripRequest, tripRequest) ||
                other.tripRequest == tripRequest) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt) &&
            (identical(other.timeoutSeconds, timeoutSeconds) ||
                other.timeoutSeconds == timeoutSeconds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tripRequest, receivedAt, timeoutSeconds);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DrivverTripRequestReceivedImplCopyWith<_$DrivverTripRequestReceivedImpl>
  get copyWith => __$$DrivverTripRequestReceivedImplCopyWithImpl<
    _$DrivverTripRequestReceivedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return requestReceived(tripRequest, receivedAt, timeoutSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return requestReceived?.call(tripRequest, receivedAt, timeoutSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (requestReceived != null) {
      return requestReceived(tripRequest, receivedAt, timeoutSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return requestReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return requestReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (requestReceived != null) {
      return requestReceived(this);
    }
    return orElse();
  }
}

abstract class DrivverTripRequestReceived implements DriverTripState {
  const factory DrivverTripRequestReceived({
    required final DriverTripEntity tripRequest,
    required final DateTime receivedAt,
    final int? timeoutSeconds,
  }) = _$DrivverTripRequestReceivedImpl;

  DriverTripEntity get tripRequest;
  DateTime get receivedAt;
  int? get timeoutSeconds;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DrivverTripRequestReceivedImplCopyWith<_$DrivverTripRequestReceivedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripRequestExpiredImplCopyWith<$Res> {
  factory _$$DriverTripRequestExpiredImplCopyWith(
    _$DriverTripRequestExpiredImpl value,
    $Res Function(_$DriverTripRequestExpiredImpl) then,
  ) = __$$DriverTripRequestExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DriverTripRequestExpiredImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripRequestExpiredImpl>
    implements _$$DriverTripRequestExpiredImplCopyWith<$Res> {
  __$$DriverTripRequestExpiredImplCopyWithImpl(
    _$DriverTripRequestExpiredImpl _value,
    $Res Function(_$DriverTripRequestExpiredImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DriverTripRequestExpiredImpl
    with DiagnosticableTreeMixin
    implements DriverTripRequestExpired {
  const _$DriverTripRequestExpiredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.requestExpired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.requestExpired'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripRequestExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return requestExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return requestExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (requestExpired != null) {
      return requestExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return requestExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return requestExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (requestExpired != null) {
      return requestExpired(this);
    }
    return orElse();
  }
}

abstract class DriverTripRequestExpired implements DriverTripState {
  const factory DriverTripRequestExpired() = _$DriverTripRequestExpiredImpl;
}

/// @nodoc
abstract class _$$DriverTripEnRouteToPickupImplCopyWith<$Res> {
  factory _$$DriverTripEnRouteToPickupImplCopyWith(
    _$DriverTripEnRouteToPickupImpl value,
    $Res Function(_$DriverTripEnRouteToPickupImpl) then,
  ) = __$$DriverTripEnRouteToPickupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity activeTrip, RouteEntity routeToPickup});

  $RouteEntityCopyWith<$Res> get routeToPickup;
}

/// @nodoc
class __$$DriverTripEnRouteToPickupImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripEnRouteToPickupImpl>
    implements _$$DriverTripEnRouteToPickupImplCopyWith<$Res> {
  __$$DriverTripEnRouteToPickupImplCopyWithImpl(
    _$DriverTripEnRouteToPickupImpl _value,
    $Res Function(_$DriverTripEnRouteToPickupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? activeTrip = null, Object? routeToPickup = null}) {
    return _then(
      _$DriverTripEnRouteToPickupImpl(
        activeTrip:
            null == activeTrip
                ? _value.activeTrip
                : activeTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
        routeToPickup:
            null == routeToPickup
                ? _value.routeToPickup
                : routeToPickup // ignore: cast_nullable_to_non_nullable
                    as RouteEntity,
      ),
    );
  }

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteEntityCopyWith<$Res> get routeToPickup {
    return $RouteEntityCopyWith<$Res>(_value.routeToPickup, (value) {
      return _then(_value.copyWith(routeToPickup: value));
    });
  }
}

/// @nodoc

class _$DriverTripEnRouteToPickupImpl
    with DiagnosticableTreeMixin
    implements DriverTripEnRouteToPickup {
  const _$DriverTripEnRouteToPickupImpl({
    required this.activeTrip,
    required this.routeToPickup,
  });

  @override
  final DriverTripEntity activeTrip;
  @override
  final RouteEntity routeToPickup;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.enRouteToPickup(activeTrip: $activeTrip, routeToPickup: $routeToPickup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.enRouteToPickup'))
      ..add(DiagnosticsProperty('activeTrip', activeTrip))
      ..add(DiagnosticsProperty('routeToPickup', routeToPickup));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripEnRouteToPickupImpl &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip) &&
            (identical(other.routeToPickup, routeToPickup) ||
                other.routeToPickup == routeToPickup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeTrip, routeToPickup);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripEnRouteToPickupImplCopyWith<_$DriverTripEnRouteToPickupImpl>
  get copyWith => __$$DriverTripEnRouteToPickupImplCopyWithImpl<
    _$DriverTripEnRouteToPickupImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return enRouteToPickup(activeTrip, routeToPickup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return enRouteToPickup?.call(activeTrip, routeToPickup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (enRouteToPickup != null) {
      return enRouteToPickup(activeTrip, routeToPickup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return enRouteToPickup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return enRouteToPickup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (enRouteToPickup != null) {
      return enRouteToPickup(this);
    }
    return orElse();
  }
}

abstract class DriverTripEnRouteToPickup implements DriverTripState {
  const factory DriverTripEnRouteToPickup({
    required final DriverTripEntity activeTrip,
    required final RouteEntity routeToPickup,
  }) = _$DriverTripEnRouteToPickupImpl;

  DriverTripEntity get activeTrip;
  RouteEntity get routeToPickup;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripEnRouteToPickupImplCopyWith<_$DriverTripEnRouteToPickupImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripArrivedAtPickupImplCopyWith<$Res> {
  factory _$$DriverTripArrivedAtPickupImplCopyWith(
    _$DriverTripArrivedAtPickupImpl value,
    $Res Function(_$DriverTripArrivedAtPickupImpl) then,
  ) = __$$DriverTripArrivedAtPickupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    DriverTripEntity activeTrip,
    LocationEntity currentLocation,
    DateTime arrivedAt,
  });
}

/// @nodoc
class __$$DriverTripArrivedAtPickupImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripArrivedAtPickupImpl>
    implements _$$DriverTripArrivedAtPickupImplCopyWith<$Res> {
  __$$DriverTripArrivedAtPickupImplCopyWithImpl(
    _$DriverTripArrivedAtPickupImpl _value,
    $Res Function(_$DriverTripArrivedAtPickupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeTrip = null,
    Object? currentLocation = null,
    Object? arrivedAt = null,
  }) {
    return _then(
      _$DriverTripArrivedAtPickupImpl(
        activeTrip:
            null == activeTrip
                ? _value.activeTrip
                : activeTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
        currentLocation:
            null == currentLocation
                ? _value.currentLocation
                : currentLocation // ignore: cast_nullable_to_non_nullable
                    as LocationEntity,
        arrivedAt:
            null == arrivedAt
                ? _value.arrivedAt
                : arrivedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripArrivedAtPickupImpl
    with DiagnosticableTreeMixin
    implements DriverTripArrivedAtPickup {
  const _$DriverTripArrivedAtPickupImpl({
    required this.activeTrip,
    required this.currentLocation,
    required this.arrivedAt,
  });

  @override
  final DriverTripEntity activeTrip;
  @override
  final LocationEntity currentLocation;
  @override
  final DateTime arrivedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.arrivedAtPickup(activeTrip: $activeTrip, currentLocation: $currentLocation, arrivedAt: $arrivedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.arrivedAtPickup'))
      ..add(DiagnosticsProperty('activeTrip', activeTrip))
      ..add(DiagnosticsProperty('currentLocation', currentLocation))
      ..add(DiagnosticsProperty('arrivedAt', arrivedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripArrivedAtPickupImpl &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, activeTrip, currentLocation, arrivedAt);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripArrivedAtPickupImplCopyWith<_$DriverTripArrivedAtPickupImpl>
  get copyWith => __$$DriverTripArrivedAtPickupImplCopyWithImpl<
    _$DriverTripArrivedAtPickupImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return arrivedAtPickup(activeTrip, currentLocation, arrivedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return arrivedAtPickup?.call(activeTrip, currentLocation, arrivedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (arrivedAtPickup != null) {
      return arrivedAtPickup(activeTrip, currentLocation, arrivedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return arrivedAtPickup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return arrivedAtPickup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (arrivedAtPickup != null) {
      return arrivedAtPickup(this);
    }
    return orElse();
  }
}

abstract class DriverTripArrivedAtPickup implements DriverTripState {
  const factory DriverTripArrivedAtPickup({
    required final DriverTripEntity activeTrip,
    required final LocationEntity currentLocation,
    required final DateTime arrivedAt,
  }) = _$DriverTripArrivedAtPickupImpl;

  DriverTripEntity get activeTrip;
  LocationEntity get currentLocation;
  DateTime get arrivedAt;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripArrivedAtPickupImplCopyWith<_$DriverTripArrivedAtPickupImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripInProgressImplCopyWith<$Res> {
  factory _$$DriverTripInProgressImplCopyWith(
    _$DriverTripInProgressImpl value,
    $Res Function(_$DriverTripInProgressImpl) then,
  ) = __$$DriverTripInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverTripEntity activeTrip});
}

/// @nodoc
class __$$DriverTripInProgressImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripInProgressImpl>
    implements _$$DriverTripInProgressImplCopyWith<$Res> {
  __$$DriverTripInProgressImplCopyWithImpl(
    _$DriverTripInProgressImpl _value,
    $Res Function(_$DriverTripInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? activeTrip = null}) {
    return _then(
      _$DriverTripInProgressImpl(
        activeTrip:
            null == activeTrip
                ? _value.activeTrip
                : activeTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripInProgressImpl
    with DiagnosticableTreeMixin
    implements DriverTripInProgress {
  const _$DriverTripInProgressImpl({required this.activeTrip});

  @override
  final DriverTripEntity activeTrip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.inProgress(activeTrip: $activeTrip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.inProgress'))
      ..add(DiagnosticsProperty('activeTrip', activeTrip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripInProgressImpl &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeTrip);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripInProgressImplCopyWith<_$DriverTripInProgressImpl>
  get copyWith =>
      __$$DriverTripInProgressImplCopyWithImpl<_$DriverTripInProgressImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return inProgress(activeTrip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return inProgress?.call(activeTrip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(activeTrip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class DriverTripInProgress implements DriverTripState {
  const factory DriverTripInProgress({
    required final DriverTripEntity activeTrip,
  }) = _$DriverTripInProgressImpl;

  DriverTripEntity get activeTrip;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripInProgressImplCopyWith<_$DriverTripInProgressImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripArrivedAtDestinationImplCopyWith<$Res> {
  factory _$$DriverTripArrivedAtDestinationImplCopyWith(
    _$DriverTripArrivedAtDestinationImpl value,
    $Res Function(_$DriverTripArrivedAtDestinationImpl) then,
  ) = __$$DriverTripArrivedAtDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    DriverTripEntity activeTrip,
    LocationEntity currentLocation,
    DateTime arrivedAt,
    double finalFare,
  });
}

/// @nodoc
class __$$DriverTripArrivedAtDestinationImplCopyWithImpl<$Res>
    extends
        _$DriverTripStateCopyWithImpl<
          $Res,
          _$DriverTripArrivedAtDestinationImpl
        >
    implements _$$DriverTripArrivedAtDestinationImplCopyWith<$Res> {
  __$$DriverTripArrivedAtDestinationImplCopyWithImpl(
    _$DriverTripArrivedAtDestinationImpl _value,
    $Res Function(_$DriverTripArrivedAtDestinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeTrip = null,
    Object? currentLocation = null,
    Object? arrivedAt = null,
    Object? finalFare = null,
  }) {
    return _then(
      _$DriverTripArrivedAtDestinationImpl(
        activeTrip:
            null == activeTrip
                ? _value.activeTrip
                : activeTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
        currentLocation:
            null == currentLocation
                ? _value.currentLocation
                : currentLocation // ignore: cast_nullable_to_non_nullable
                    as LocationEntity,
        arrivedAt:
            null == arrivedAt
                ? _value.arrivedAt
                : arrivedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        finalFare:
            null == finalFare
                ? _value.finalFare
                : finalFare // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripArrivedAtDestinationImpl
    with DiagnosticableTreeMixin
    implements DriverTripArrivedAtDestination {
  const _$DriverTripArrivedAtDestinationImpl({
    required this.activeTrip,
    required this.currentLocation,
    required this.arrivedAt,
    required this.finalFare,
  });

  @override
  final DriverTripEntity activeTrip;
  @override
  final LocationEntity currentLocation;
  @override
  final DateTime arrivedAt;
  @override
  final double finalFare;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.arrivedAtDestination(activeTrip: $activeTrip, currentLocation: $currentLocation, arrivedAt: $arrivedAt, finalFare: $finalFare)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.arrivedAtDestination'))
      ..add(DiagnosticsProperty('activeTrip', activeTrip))
      ..add(DiagnosticsProperty('currentLocation', currentLocation))
      ..add(DiagnosticsProperty('arrivedAt', arrivedAt))
      ..add(DiagnosticsProperty('finalFare', finalFare));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripArrivedAtDestinationImpl &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt) &&
            (identical(other.finalFare, finalFare) ||
                other.finalFare == finalFare));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    activeTrip,
    currentLocation,
    arrivedAt,
    finalFare,
  );

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripArrivedAtDestinationImplCopyWith<
    _$DriverTripArrivedAtDestinationImpl
  >
  get copyWith => __$$DriverTripArrivedAtDestinationImplCopyWithImpl<
    _$DriverTripArrivedAtDestinationImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return arrivedAtDestination(
      activeTrip,
      currentLocation,
      arrivedAt,
      finalFare,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return arrivedAtDestination?.call(
      activeTrip,
      currentLocation,
      arrivedAt,
      finalFare,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (arrivedAtDestination != null) {
      return arrivedAtDestination(
        activeTrip,
        currentLocation,
        arrivedAt,
        finalFare,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return arrivedAtDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return arrivedAtDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (arrivedAtDestination != null) {
      return arrivedAtDestination(this);
    }
    return orElse();
  }
}

abstract class DriverTripArrivedAtDestination implements DriverTripState {
  const factory DriverTripArrivedAtDestination({
    required final DriverTripEntity activeTrip,
    required final LocationEntity currentLocation,
    required final DateTime arrivedAt,
    required final double finalFare,
  }) = _$DriverTripArrivedAtDestinationImpl;

  DriverTripEntity get activeTrip;
  LocationEntity get currentLocation;
  DateTime get arrivedAt;
  double get finalFare;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripArrivedAtDestinationImplCopyWith<
    _$DriverTripArrivedAtDestinationImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripCompletedImplCopyWith<$Res> {
  factory _$$DriverTripCompletedImplCopyWith(
    _$DriverTripCompletedImpl value,
    $Res Function(_$DriverTripCompletedImpl) then,
  ) = __$$DriverTripCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    double finalFare,
    DateTime completedAt,
    Duration tripDuration,
    double? rating,
  });
}

/// @nodoc
class __$$DriverTripCompletedImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripCompletedImpl>
    implements _$$DriverTripCompletedImplCopyWith<$Res> {
  __$$DriverTripCompletedImplCopyWithImpl(
    _$DriverTripCompletedImpl _value,
    $Res Function(_$DriverTripCompletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalFare = null,
    Object? completedAt = null,
    Object? tripDuration = null,
    Object? rating = freezed,
  }) {
    return _then(
      _$DriverTripCompletedImpl(
        finalFare:
            null == finalFare
                ? _value.finalFare
                : finalFare // ignore: cast_nullable_to_non_nullable
                    as double,
        completedAt:
            null == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        tripDuration:
            null == tripDuration
                ? _value.tripDuration
                : tripDuration // ignore: cast_nullable_to_non_nullable
                    as Duration,
        rating:
            freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripCompletedImpl
    with DiagnosticableTreeMixin
    implements DriverTripCompleted {
  const _$DriverTripCompletedImpl({
    required this.finalFare,
    required this.completedAt,
    required this.tripDuration,
    this.rating,
  });

  @override
  final double finalFare;
  @override
  final DateTime completedAt;
  @override
  final Duration tripDuration;
  @override
  final double? rating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.completed(finalFare: $finalFare, completedAt: $completedAt, tripDuration: $tripDuration, rating: $rating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.completed'))
      ..add(DiagnosticsProperty('finalFare', finalFare))
      ..add(DiagnosticsProperty('completedAt', completedAt))
      ..add(DiagnosticsProperty('tripDuration', tripDuration))
      ..add(DiagnosticsProperty('rating', rating));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripCompletedImpl &&
            (identical(other.finalFare, finalFare) ||
                other.finalFare == finalFare) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.tripDuration, tripDuration) ||
                other.tripDuration == tripDuration) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, finalFare, completedAt, tripDuration, rating);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripCompletedImplCopyWith<_$DriverTripCompletedImpl> get copyWith =>
      __$$DriverTripCompletedImplCopyWithImpl<_$DriverTripCompletedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return completed(finalFare, completedAt, tripDuration, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return completed?.call(finalFare, completedAt, tripDuration, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(finalFare, completedAt, tripDuration, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class DriverTripCompleted implements DriverTripState {
  const factory DriverTripCompleted({
    required final double finalFare,
    required final DateTime completedAt,
    required final Duration tripDuration,
    final double? rating,
  }) = _$DriverTripCompletedImpl;

  double get finalFare;
  DateTime get completedAt;
  Duration get tripDuration;
  double? get rating;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripCompletedImplCopyWith<_$DriverTripCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripCancelledImplCopyWith<$Res> {
  factory _$$DriverTripCancelledImplCopyWith(
    _$DriverTripCancelledImpl value,
    $Res Function(_$DriverTripCancelledImpl) then,
  ) = __$$DriverTripCancelledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    DriverTripEntity cancelledTrip,
    String reason,
    DateTime cancelledAt,
    String? cancellationFee,
  });
}

/// @nodoc
class __$$DriverTripCancelledImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripCancelledImpl>
    implements _$$DriverTripCancelledImplCopyWith<$Res> {
  __$$DriverTripCancelledImplCopyWithImpl(
    _$DriverTripCancelledImpl _value,
    $Res Function(_$DriverTripCancelledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancelledTrip = null,
    Object? reason = null,
    Object? cancelledAt = null,
    Object? cancellationFee = freezed,
  }) {
    return _then(
      _$DriverTripCancelledImpl(
        cancelledTrip:
            null == cancelledTrip
                ? _value.cancelledTrip
                : cancelledTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity,
        reason:
            null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as String,
        cancelledAt:
            null == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        cancellationFee:
            freezed == cancellationFee
                ? _value.cancellationFee
                : cancellationFee // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripCancelledImpl
    with DiagnosticableTreeMixin
    implements DriverTripCancelled {
  const _$DriverTripCancelledImpl({
    required this.cancelledTrip,
    required this.reason,
    required this.cancelledAt,
    this.cancellationFee,
  });

  @override
  final DriverTripEntity cancelledTrip;
  @override
  final String reason;
  @override
  final DateTime cancelledAt;
  @override
  final String? cancellationFee;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.cancelled(cancelledTrip: $cancelledTrip, reason: $reason, cancelledAt: $cancelledAt, cancellationFee: $cancellationFee)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.cancelled'))
      ..add(DiagnosticsProperty('cancelledTrip', cancelledTrip))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('cancelledAt', cancelledAt))
      ..add(DiagnosticsProperty('cancellationFee', cancellationFee));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripCancelledImpl &&
            (identical(other.cancelledTrip, cancelledTrip) ||
                other.cancelledTrip == cancelledTrip) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationFee, cancellationFee) ||
                other.cancellationFee == cancellationFee));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    cancelledTrip,
    reason,
    cancelledAt,
    cancellationFee,
  );

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripCancelledImplCopyWith<_$DriverTripCancelledImpl> get copyWith =>
      __$$DriverTripCancelledImplCopyWithImpl<_$DriverTripCancelledImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return cancelled(cancelledTrip, reason, cancelledAt, cancellationFee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return cancelled?.call(cancelledTrip, reason, cancelledAt, cancellationFee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(cancelledTrip, reason, cancelledAt, cancellationFee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class DriverTripCancelled implements DriverTripState {
  const factory DriverTripCancelled({
    required final DriverTripEntity cancelledTrip,
    required final String reason,
    required final DateTime cancelledAt,
    final String? cancellationFee,
  }) = _$DriverTripCancelledImpl;

  DriverTripEntity get cancelledTrip;
  String get reason;
  DateTime get cancelledAt;
  String? get cancellationFee;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripCancelledImplCopyWith<_$DriverTripCancelledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripErrorImplCopyWith<$Res> {
  factory _$$DriverTripErrorImplCopyWith(
    _$DriverTripErrorImpl value,
    $Res Function(_$DriverTripErrorImpl) then,
  ) = __$$DriverTripErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, DriverTripEntity? activeTrip, String? errorCode});
}

/// @nodoc
class __$$DriverTripErrorImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripErrorImpl>
    implements _$$DriverTripErrorImplCopyWith<$Res> {
  __$$DriverTripErrorImplCopyWithImpl(
    _$DriverTripErrorImpl _value,
    $Res Function(_$DriverTripErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? activeTrip = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(
      _$DriverTripErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        activeTrip:
            freezed == activeTrip
                ? _value.activeTrip
                : activeTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity?,
        errorCode:
            freezed == errorCode
                ? _value.errorCode
                : errorCode // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripErrorImpl
    with DiagnosticableTreeMixin
    implements DriverTripError {
  const _$DriverTripErrorImpl({
    required this.message,
    this.activeTrip,
    this.errorCode,
  });

  @override
  final String message;
  @override
  final DriverTripEntity? activeTrip;
  @override
  final String? errorCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.error(message: $message, activeTrip: $activeTrip, errorCode: $errorCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.error'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('activeTrip', activeTrip))
      ..add(DiagnosticsProperty('errorCode', errorCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, activeTrip, errorCode);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripErrorImplCopyWith<_$DriverTripErrorImpl> get copyWith =>
      __$$DriverTripErrorImplCopyWithImpl<_$DriverTripErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return error(message, activeTrip, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return error?.call(message, activeTrip, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, activeTrip, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DriverTripError implements DriverTripState {
  const factory DriverTripError({
    required final String message,
    final DriverTripEntity? activeTrip,
    final String? errorCode,
  }) = _$DriverTripErrorImpl;

  String get message;
  DriverTripEntity? get activeTrip;
  String? get errorCode;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripErrorImplCopyWith<_$DriverTripErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DriverTripLoadingImplCopyWith<$Res> {
  factory _$$DriverTripLoadingImplCopyWith(
    _$DriverTripLoadingImpl value,
    $Res Function(_$DriverTripLoadingImpl) then,
  ) = __$$DriverTripLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String operation, DriverTripEntity? activeTrip});
}

/// @nodoc
class __$$DriverTripLoadingImplCopyWithImpl<$Res>
    extends _$DriverTripStateCopyWithImpl<$Res, _$DriverTripLoadingImpl>
    implements _$$DriverTripLoadingImplCopyWith<$Res> {
  __$$DriverTripLoadingImplCopyWithImpl(
    _$DriverTripLoadingImpl _value,
    $Res Function(_$DriverTripLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? operation = null, Object? activeTrip = freezed}) {
    return _then(
      _$DriverTripLoadingImpl(
        operation:
            null == operation
                ? _value.operation
                : operation // ignore: cast_nullable_to_non_nullable
                    as String,
        activeTrip:
            freezed == activeTrip
                ? _value.activeTrip
                : activeTrip // ignore: cast_nullable_to_non_nullable
                    as DriverTripEntity?,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripLoadingImpl
    with DiagnosticableTreeMixin
    implements DriverTripLoading {
  const _$DriverTripLoadingImpl({required this.operation, this.activeTrip});

  @override
  final String operation;
  // "accepting", "declining", "completing", etc.
  @override
  final DriverTripEntity? activeTrip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DriverTripState.loading(operation: $operation, activeTrip: $activeTrip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DriverTripState.loading'))
      ..add(DiagnosticsProperty('operation', operation))
      ..add(DiagnosticsProperty('activeTrip', activeTrip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripLoadingImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.activeTrip, activeTrip) ||
                other.activeTrip == activeTrip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operation, activeTrip);

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripLoadingImplCopyWith<_$DriverTripLoadingImpl> get copyWith =>
      __$$DriverTripLoadingImplCopyWithImpl<_$DriverTripLoadingImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )
    requestReceived,
    required TResult Function() requestExpired,
    required TResult Function(
      DriverTripEntity activeTrip,
      RouteEntity routeToPickup,
    )
    enRouteToPickup,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )
    arrivedAtPickup,
    required TResult Function(DriverTripEntity activeTrip) inProgress,
    required TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )
    arrivedAtDestination,
    required TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )
    completed,
    required TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )
    cancelled,
    required TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )
    error,
    required TResult Function(String operation, DriverTripEntity? activeTrip)
    loading,
  }) {
    return loading(operation, activeTrip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult? Function()? requestExpired,
    TResult? Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult? Function(DriverTripEntity activeTrip)? inProgress,
    TResult? Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult? Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult? Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult? Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult? Function(String operation, DriverTripEntity? activeTrip)? loading,
  }) {
    return loading?.call(operation, activeTrip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      DriverTripEntity tripRequest,
      DateTime receivedAt,
      int? timeoutSeconds,
    )?
    requestReceived,
    TResult Function()? requestExpired,
    TResult Function(DriverTripEntity activeTrip, RouteEntity routeToPickup)?
    enRouteToPickup,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
    )?
    arrivedAtPickup,
    TResult Function(DriverTripEntity activeTrip)? inProgress,
    TResult Function(
      DriverTripEntity activeTrip,
      LocationEntity currentLocation,
      DateTime arrivedAt,
      double finalFare,
    )?
    arrivedAtDestination,
    TResult Function(
      double finalFare,
      DateTime completedAt,
      Duration tripDuration,
      double? rating,
    )?
    completed,
    TResult Function(
      DriverTripEntity cancelledTrip,
      String reason,
      DateTime cancelledAt,
      String? cancellationFee,
    )?
    cancelled,
    TResult Function(
      String message,
      DriverTripEntity? activeTrip,
      String? errorCode,
    )?
    error,
    TResult Function(String operation, DriverTripEntity? activeTrip)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(operation, activeTrip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(DrivverTripRequestReceived value) requestReceived,
    required TResult Function(DriverTripRequestExpired value) requestExpired,
    required TResult Function(DriverTripEnRouteToPickup value) enRouteToPickup,
    required TResult Function(DriverTripArrivedAtPickup value) arrivedAtPickup,
    required TResult Function(DriverTripInProgress value) inProgress,
    required TResult Function(DriverTripArrivedAtDestination value)
    arrivedAtDestination,
    required TResult Function(DriverTripCompleted value) completed,
    required TResult Function(DriverTripCancelled value) cancelled,
    required TResult Function(DriverTripError value) error,
    required TResult Function(DriverTripLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(DrivverTripRequestReceived value)? requestReceived,
    TResult? Function(DriverTripRequestExpired value)? requestExpired,
    TResult? Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult? Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult? Function(DriverTripInProgress value)? inProgress,
    TResult? Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult? Function(DriverTripCompleted value)? completed,
    TResult? Function(DriverTripCancelled value)? cancelled,
    TResult? Function(DriverTripError value)? error,
    TResult? Function(DriverTripLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(DrivverTripRequestReceived value)? requestReceived,
    TResult Function(DriverTripRequestExpired value)? requestExpired,
    TResult Function(DriverTripEnRouteToPickup value)? enRouteToPickup,
    TResult Function(DriverTripArrivedAtPickup value)? arrivedAtPickup,
    TResult Function(DriverTripInProgress value)? inProgress,
    TResult Function(DriverTripArrivedAtDestination value)?
    arrivedAtDestination,
    TResult Function(DriverTripCompleted value)? completed,
    TResult Function(DriverTripCancelled value)? cancelled,
    TResult Function(DriverTripError value)? error,
    TResult Function(DriverTripLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DriverTripLoading implements DriverTripState {
  const factory DriverTripLoading({
    required final String operation,
    final DriverTripEntity? activeTrip,
  }) = _$DriverTripLoadingImpl;

  String get operation; // "accepting", "declining", "completing", etc.
  DriverTripEntity? get activeTrip;

  /// Create a copy of DriverTripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripLoadingImplCopyWith<_$DriverTripLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
