// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rider_operations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RiderOperationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )
    requestTrip,
    required TResult Function(String tripId, String? reason) cancelTrip,
    required TResult Function(String tripId, int rating, String? feedback)
    rateTrip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult? Function(String tripId, String? reason)? cancelTrip,
    TResult? Function(String tripId, int rating, String? feedback)? rateTrip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult Function(String tripId, String? reason)? cancelTrip,
    TResult Function(String tripId, int rating, String? feedback)? rateTrip,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitialize value) initialize,
    required TResult Function(RequestTripEvent value) requestTrip,
    required TResult Function(CancelTripEvent value) cancelTrip,
    required TResult Function(RateTripEvent value) rateTrip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitialize value)? initialize,
    TResult? Function(RequestTripEvent value)? requestTrip,
    TResult? Function(CancelTripEvent value)? cancelTrip,
    TResult? Function(RateTripEvent value)? rateTrip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitialize value)? initialize,
    TResult Function(RequestTripEvent value)? requestTrip,
    TResult Function(CancelTripEvent value)? cancelTrip,
    TResult Function(RateTripEvent value)? rateTrip,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderOperationsEventCopyWith<$Res> {
  factory $RiderOperationsEventCopyWith(
    RiderOperationsEvent value,
    $Res Function(RiderOperationsEvent) then,
  ) = _$RiderOperationsEventCopyWithImpl<$Res, RiderOperationsEvent>;
}

/// @nodoc
class _$RiderOperationsEventCopyWithImpl<
  $Res,
  $Val extends RiderOperationsEvent
>
    implements $RiderOperationsEventCopyWith<$Res> {
  _$RiderOperationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RiderOperationsInitializeImplCopyWith<$Res> {
  factory _$$RiderOperationsInitializeImplCopyWith(
    _$RiderOperationsInitializeImpl value,
    $Res Function(_$RiderOperationsInitializeImpl) then,
  ) = __$$RiderOperationsInitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RiderOperationsInitializeImplCopyWithImpl<$Res>
    extends
        _$RiderOperationsEventCopyWithImpl<
          $Res,
          _$RiderOperationsInitializeImpl
        >
    implements _$$RiderOperationsInitializeImplCopyWith<$Res> {
  __$$RiderOperationsInitializeImplCopyWithImpl(
    _$RiderOperationsInitializeImpl _value,
    $Res Function(_$RiderOperationsInitializeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RiderOperationsInitializeImpl implements RiderOperationsInitialize {
  const _$RiderOperationsInitializeImpl();

  @override
  String toString() {
    return 'RiderOperationsEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderOperationsInitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )
    requestTrip,
    required TResult Function(String tripId, String? reason) cancelTrip,
    required TResult Function(String tripId, int rating, String? feedback)
    rateTrip,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult? Function(String tripId, String? reason)? cancelTrip,
    TResult? Function(String tripId, int rating, String? feedback)? rateTrip,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult Function(String tripId, String? reason)? cancelTrip,
    TResult Function(String tripId, int rating, String? feedback)? rateTrip,
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
    required TResult Function(RiderOperationsInitialize value) initialize,
    required TResult Function(RequestTripEvent value) requestTrip,
    required TResult Function(CancelTripEvent value) cancelTrip,
    required TResult Function(RateTripEvent value) rateTrip,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitialize value)? initialize,
    TResult? Function(RequestTripEvent value)? requestTrip,
    TResult? Function(CancelTripEvent value)? cancelTrip,
    TResult? Function(RateTripEvent value)? rateTrip,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitialize value)? initialize,
    TResult Function(RequestTripEvent value)? requestTrip,
    TResult Function(CancelTripEvent value)? cancelTrip,
    TResult Function(RateTripEvent value)? rateTrip,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class RiderOperationsInitialize implements RiderOperationsEvent {
  const factory RiderOperationsInitialize() = _$RiderOperationsInitializeImpl;
}

/// @nodoc
abstract class _$$RequestTripEventImplCopyWith<$Res> {
  factory _$$RequestTripEventImplCopyWith(
    _$RequestTripEventImpl value,
    $Res Function(_$RequestTripEventImpl) then,
  ) = __$$RequestTripEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String pickupAddress,
    String destinationAddress,
    double pickupLat,
    double pickupLng,
    double destinationLat,
    double destinationLng,
  });
}

/// @nodoc
class __$$RequestTripEventImplCopyWithImpl<$Res>
    extends _$RiderOperationsEventCopyWithImpl<$Res, _$RequestTripEventImpl>
    implements _$$RequestTripEventImplCopyWith<$Res> {
  __$$RequestTripEventImplCopyWithImpl(
    _$RequestTripEventImpl _value,
    $Res Function(_$RequestTripEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupAddress = null,
    Object? destinationAddress = null,
    Object? pickupLat = null,
    Object? pickupLng = null,
    Object? destinationLat = null,
    Object? destinationLng = null,
  }) {
    return _then(
      _$RequestTripEventImpl(
        pickupAddress:
            null == pickupAddress
                ? _value.pickupAddress
                : pickupAddress // ignore: cast_nullable_to_non_nullable
                    as String,
        destinationAddress:
            null == destinationAddress
                ? _value.destinationAddress
                : destinationAddress // ignore: cast_nullable_to_non_nullable
                    as String,
        pickupLat:
            null == pickupLat
                ? _value.pickupLat
                : pickupLat // ignore: cast_nullable_to_non_nullable
                    as double,
        pickupLng:
            null == pickupLng
                ? _value.pickupLng
                : pickupLng // ignore: cast_nullable_to_non_nullable
                    as double,
        destinationLat:
            null == destinationLat
                ? _value.destinationLat
                : destinationLat // ignore: cast_nullable_to_non_nullable
                    as double,
        destinationLng:
            null == destinationLng
                ? _value.destinationLng
                : destinationLng // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$RequestTripEventImpl implements RequestTripEvent {
  const _$RequestTripEventImpl({
    required this.pickupAddress,
    required this.destinationAddress,
    required this.pickupLat,
    required this.pickupLng,
    required this.destinationLat,
    required this.destinationLng,
  });

  @override
  final String pickupAddress;
  @override
  final String destinationAddress;
  @override
  final double pickupLat;
  @override
  final double pickupLng;
  @override
  final double destinationLat;
  @override
  final double destinationLng;

  @override
  String toString() {
    return 'RiderOperationsEvent.requestTrip(pickupAddress: $pickupAddress, destinationAddress: $destinationAddress, pickupLat: $pickupLat, pickupLng: $pickupLng, destinationLat: $destinationLat, destinationLng: $destinationLng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestTripEventImpl &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.destinationAddress, destinationAddress) ||
                other.destinationAddress == destinationAddress) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            (identical(other.destinationLat, destinationLat) ||
                other.destinationLat == destinationLat) &&
            (identical(other.destinationLng, destinationLng) ||
                other.destinationLng == destinationLng));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    pickupAddress,
    destinationAddress,
    pickupLat,
    pickupLng,
    destinationLat,
    destinationLng,
  );

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTripEventImplCopyWith<_$RequestTripEventImpl> get copyWith =>
      __$$RequestTripEventImplCopyWithImpl<_$RequestTripEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )
    requestTrip,
    required TResult Function(String tripId, String? reason) cancelTrip,
    required TResult Function(String tripId, int rating, String? feedback)
    rateTrip,
  }) {
    return requestTrip(
      pickupAddress,
      destinationAddress,
      pickupLat,
      pickupLng,
      destinationLat,
      destinationLng,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult? Function(String tripId, String? reason)? cancelTrip,
    TResult? Function(String tripId, int rating, String? feedback)? rateTrip,
  }) {
    return requestTrip?.call(
      pickupAddress,
      destinationAddress,
      pickupLat,
      pickupLng,
      destinationLat,
      destinationLng,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult Function(String tripId, String? reason)? cancelTrip,
    TResult Function(String tripId, int rating, String? feedback)? rateTrip,
    required TResult orElse(),
  }) {
    if (requestTrip != null) {
      return requestTrip(
        pickupAddress,
        destinationAddress,
        pickupLat,
        pickupLng,
        destinationLat,
        destinationLng,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitialize value) initialize,
    required TResult Function(RequestTripEvent value) requestTrip,
    required TResult Function(CancelTripEvent value) cancelTrip,
    required TResult Function(RateTripEvent value) rateTrip,
  }) {
    return requestTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitialize value)? initialize,
    TResult? Function(RequestTripEvent value)? requestTrip,
    TResult? Function(CancelTripEvent value)? cancelTrip,
    TResult? Function(RateTripEvent value)? rateTrip,
  }) {
    return requestTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitialize value)? initialize,
    TResult Function(RequestTripEvent value)? requestTrip,
    TResult Function(CancelTripEvent value)? cancelTrip,
    TResult Function(RateTripEvent value)? rateTrip,
    required TResult orElse(),
  }) {
    if (requestTrip != null) {
      return requestTrip(this);
    }
    return orElse();
  }
}

abstract class RequestTripEvent implements RiderOperationsEvent {
  const factory RequestTripEvent({
    required final String pickupAddress,
    required final String destinationAddress,
    required final double pickupLat,
    required final double pickupLng,
    required final double destinationLat,
    required final double destinationLng,
  }) = _$RequestTripEventImpl;

  String get pickupAddress;
  String get destinationAddress;
  double get pickupLat;
  double get pickupLng;
  double get destinationLat;
  double get destinationLng;

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestTripEventImplCopyWith<_$RequestTripEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelTripEventImplCopyWith<$Res> {
  factory _$$CancelTripEventImplCopyWith(
    _$CancelTripEventImpl value,
    $Res Function(_$CancelTripEventImpl) then,
  ) = __$$CancelTripEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tripId, String? reason});
}

/// @nodoc
class __$$CancelTripEventImplCopyWithImpl<$Res>
    extends _$RiderOperationsEventCopyWithImpl<$Res, _$CancelTripEventImpl>
    implements _$$CancelTripEventImplCopyWith<$Res> {
  __$$CancelTripEventImplCopyWithImpl(
    _$CancelTripEventImpl _value,
    $Res Function(_$CancelTripEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tripId = null, Object? reason = freezed}) {
    return _then(
      _$CancelTripEventImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        reason:
            freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$CancelTripEventImpl implements CancelTripEvent {
  const _$CancelTripEventImpl({required this.tripId, this.reason});

  @override
  final String tripId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'RiderOperationsEvent.cancelTrip(tripId: $tripId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelTripEventImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripId, reason);

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelTripEventImplCopyWith<_$CancelTripEventImpl> get copyWith =>
      __$$CancelTripEventImplCopyWithImpl<_$CancelTripEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )
    requestTrip,
    required TResult Function(String tripId, String? reason) cancelTrip,
    required TResult Function(String tripId, int rating, String? feedback)
    rateTrip,
  }) {
    return cancelTrip(tripId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult? Function(String tripId, String? reason)? cancelTrip,
    TResult? Function(String tripId, int rating, String? feedback)? rateTrip,
  }) {
    return cancelTrip?.call(tripId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult Function(String tripId, String? reason)? cancelTrip,
    TResult Function(String tripId, int rating, String? feedback)? rateTrip,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip(tripId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitialize value) initialize,
    required TResult Function(RequestTripEvent value) requestTrip,
    required TResult Function(CancelTripEvent value) cancelTrip,
    required TResult Function(RateTripEvent value) rateTrip,
  }) {
    return cancelTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitialize value)? initialize,
    TResult? Function(RequestTripEvent value)? requestTrip,
    TResult? Function(CancelTripEvent value)? cancelTrip,
    TResult? Function(RateTripEvent value)? rateTrip,
  }) {
    return cancelTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitialize value)? initialize,
    TResult Function(RequestTripEvent value)? requestTrip,
    TResult Function(CancelTripEvent value)? cancelTrip,
    TResult Function(RateTripEvent value)? rateTrip,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip(this);
    }
    return orElse();
  }
}

abstract class CancelTripEvent implements RiderOperationsEvent {
  const factory CancelTripEvent({
    required final String tripId,
    final String? reason,
  }) = _$CancelTripEventImpl;

  String get tripId;
  String? get reason;

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelTripEventImplCopyWith<_$CancelTripEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateTripEventImplCopyWith<$Res> {
  factory _$$RateTripEventImplCopyWith(
    _$RateTripEventImpl value,
    $Res Function(_$RateTripEventImpl) then,
  ) = __$$RateTripEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tripId, int rating, String? feedback});
}

/// @nodoc
class __$$RateTripEventImplCopyWithImpl<$Res>
    extends _$RiderOperationsEventCopyWithImpl<$Res, _$RateTripEventImpl>
    implements _$$RateTripEventImplCopyWith<$Res> {
  __$$RateTripEventImplCopyWithImpl(
    _$RateTripEventImpl _value,
    $Res Function(_$RateTripEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? rating = null,
    Object? feedback = freezed,
  }) {
    return _then(
      _$RateTripEventImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as int,
        feedback:
            freezed == feedback
                ? _value.feedback
                : feedback // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$RateTripEventImpl implements RateTripEvent {
  const _$RateTripEventImpl({
    required this.tripId,
    required this.rating,
    this.feedback,
  });

  @override
  final String tripId;
  @override
  final int rating;
  @override
  final String? feedback;

  @override
  String toString() {
    return 'RiderOperationsEvent.rateTrip(tripId: $tripId, rating: $rating, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripEventImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripId, rating, feedback);

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripEventImplCopyWith<_$RateTripEventImpl> get copyWith =>
      __$$RateTripEventImplCopyWithImpl<_$RateTripEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )
    requestTrip,
    required TResult Function(String tripId, String? reason) cancelTrip,
    required TResult Function(String tripId, int rating, String? feedback)
    rateTrip,
  }) {
    return rateTrip(tripId, rating, feedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult? Function(String tripId, String? reason)? cancelTrip,
    TResult? Function(String tripId, int rating, String? feedback)? rateTrip,
  }) {
    return rateTrip?.call(tripId, rating, feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
      String pickupAddress,
      String destinationAddress,
      double pickupLat,
      double pickupLng,
      double destinationLat,
      double destinationLng,
    )?
    requestTrip,
    TResult Function(String tripId, String? reason)? cancelTrip,
    TResult Function(String tripId, int rating, String? feedback)? rateTrip,
    required TResult orElse(),
  }) {
    if (rateTrip != null) {
      return rateTrip(tripId, rating, feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitialize value) initialize,
    required TResult Function(RequestTripEvent value) requestTrip,
    required TResult Function(CancelTripEvent value) cancelTrip,
    required TResult Function(RateTripEvent value) rateTrip,
  }) {
    return rateTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitialize value)? initialize,
    TResult? Function(RequestTripEvent value)? requestTrip,
    TResult? Function(CancelTripEvent value)? cancelTrip,
    TResult? Function(RateTripEvent value)? rateTrip,
  }) {
    return rateTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitialize value)? initialize,
    TResult Function(RequestTripEvent value)? requestTrip,
    TResult Function(CancelTripEvent value)? cancelTrip,
    TResult Function(RateTripEvent value)? rateTrip,
    required TResult orElse(),
  }) {
    if (rateTrip != null) {
      return rateTrip(this);
    }
    return orElse();
  }
}

abstract class RateTripEvent implements RiderOperationsEvent {
  const factory RateTripEvent({
    required final String tripId,
    required final int rating,
    final String? feedback,
  }) = _$RateTripEventImpl;

  String get tripId;
  int get rating;
  String? get feedback;

  /// Create a copy of RiderOperationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripEventImplCopyWith<_$RateTripEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RiderOperationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderOperationsStateCopyWith<$Res> {
  factory $RiderOperationsStateCopyWith(
    RiderOperationsState value,
    $Res Function(RiderOperationsState) then,
  ) = _$RiderOperationsStateCopyWithImpl<$Res, RiderOperationsState>;
}

/// @nodoc
class _$RiderOperationsStateCopyWithImpl<
  $Res,
  $Val extends RiderOperationsState
>
    implements $RiderOperationsStateCopyWith<$Res> {
  _$RiderOperationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RiderOperationsInitialImplCopyWith<$Res> {
  factory _$$RiderOperationsInitialImplCopyWith(
    _$RiderOperationsInitialImpl value,
    $Res Function(_$RiderOperationsInitialImpl) then,
  ) = __$$RiderOperationsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RiderOperationsInitialImplCopyWithImpl<$Res>
    extends
        _$RiderOperationsStateCopyWithImpl<$Res, _$RiderOperationsInitialImpl>
    implements _$$RiderOperationsInitialImplCopyWith<$Res> {
  __$$RiderOperationsInitialImplCopyWithImpl(
    _$RiderOperationsInitialImpl _value,
    $Res Function(_$RiderOperationsInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RiderOperationsInitialImpl implements RiderOperationsInitial {
  const _$RiderOperationsInitialImpl();

  @override
  String toString() {
    return 'RiderOperationsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderOperationsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
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
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RiderOperationsInitial implements RiderOperationsState {
  const factory RiderOperationsInitial() = _$RiderOperationsInitialImpl;
}

/// @nodoc
abstract class _$$RiderOperationsSearchingImplCopyWith<$Res> {
  factory _$$RiderOperationsSearchingImplCopyWith(
    _$RiderOperationsSearchingImpl value,
    $Res Function(_$RiderOperationsSearchingImpl) then,
  ) = __$$RiderOperationsSearchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pickupAddress, String destinationAddress});
}

/// @nodoc
class __$$RiderOperationsSearchingImplCopyWithImpl<$Res>
    extends
        _$RiderOperationsStateCopyWithImpl<$Res, _$RiderOperationsSearchingImpl>
    implements _$$RiderOperationsSearchingImplCopyWith<$Res> {
  __$$RiderOperationsSearchingImplCopyWithImpl(
    _$RiderOperationsSearchingImpl _value,
    $Res Function(_$RiderOperationsSearchingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pickupAddress = null, Object? destinationAddress = null}) {
    return _then(
      _$RiderOperationsSearchingImpl(
        pickupAddress:
            null == pickupAddress
                ? _value.pickupAddress
                : pickupAddress // ignore: cast_nullable_to_non_nullable
                    as String,
        destinationAddress:
            null == destinationAddress
                ? _value.destinationAddress
                : destinationAddress // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$RiderOperationsSearchingImpl implements RiderOperationsSearching {
  const _$RiderOperationsSearchingImpl({
    required this.pickupAddress,
    required this.destinationAddress,
  });

  @override
  final String pickupAddress;
  @override
  final String destinationAddress;

  @override
  String toString() {
    return 'RiderOperationsState.searching(pickupAddress: $pickupAddress, destinationAddress: $destinationAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderOperationsSearchingImpl &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.destinationAddress, destinationAddress) ||
                other.destinationAddress == destinationAddress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pickupAddress, destinationAddress);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderOperationsSearchingImplCopyWith<_$RiderOperationsSearchingImpl>
  get copyWith => __$$RiderOperationsSearchingImplCopyWithImpl<
    _$RiderOperationsSearchingImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return searching(pickupAddress, destinationAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return searching?.call(pickupAddress, destinationAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(pickupAddress, destinationAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class RiderOperationsSearching implements RiderOperationsState {
  const factory RiderOperationsSearching({
    required final String pickupAddress,
    required final String destinationAddress,
  }) = _$RiderOperationsSearchingImpl;

  String get pickupAddress;
  String get destinationAddress;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderOperationsSearchingImplCopyWith<_$RiderOperationsSearchingImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RideOfferedStateImplCopyWith<$Res> {
  factory _$$RideOfferedStateImplCopyWith(
    _$RideOfferedStateImpl value,
    $Res Function(_$RideOfferedStateImpl) then,
  ) = __$$RideOfferedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String tripId,
    String driverName,
    String driverPhone,
    String vehicleDetails,
    double estimatedCost,
    int estimatedMinutes,
  });
}

/// @nodoc
class __$$RideOfferedStateImplCopyWithImpl<$Res>
    extends _$RiderOperationsStateCopyWithImpl<$Res, _$RideOfferedStateImpl>
    implements _$$RideOfferedStateImplCopyWith<$Res> {
  __$$RideOfferedStateImplCopyWithImpl(
    _$RideOfferedStateImpl _value,
    $Res Function(_$RideOfferedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? driverName = null,
    Object? driverPhone = null,
    Object? vehicleDetails = null,
    Object? estimatedCost = null,
    Object? estimatedMinutes = null,
  }) {
    return _then(
      _$RideOfferedStateImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        driverName:
            null == driverName
                ? _value.driverName
                : driverName // ignore: cast_nullable_to_non_nullable
                    as String,
        driverPhone:
            null == driverPhone
                ? _value.driverPhone
                : driverPhone // ignore: cast_nullable_to_non_nullable
                    as String,
        vehicleDetails:
            null == vehicleDetails
                ? _value.vehicleDetails
                : vehicleDetails // ignore: cast_nullable_to_non_nullable
                    as String,
        estimatedCost:
            null == estimatedCost
                ? _value.estimatedCost
                : estimatedCost // ignore: cast_nullable_to_non_nullable
                    as double,
        estimatedMinutes:
            null == estimatedMinutes
                ? _value.estimatedMinutes
                : estimatedMinutes // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$RideOfferedStateImpl implements RideOfferedState {
  const _$RideOfferedStateImpl({
    required this.tripId,
    required this.driverName,
    required this.driverPhone,
    required this.vehicleDetails,
    required this.estimatedCost,
    required this.estimatedMinutes,
  });

  @override
  final String tripId;
  @override
  final String driverName;
  @override
  final String driverPhone;
  @override
  final String vehicleDetails;
  @override
  final double estimatedCost;
  @override
  final int estimatedMinutes;

  @override
  String toString() {
    return 'RiderOperationsState.rideOffered(tripId: $tripId, driverName: $driverName, driverPhone: $driverPhone, vehicleDetails: $vehicleDetails, estimatedCost: $estimatedCost, estimatedMinutes: $estimatedMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideOfferedStateImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.driverPhone, driverPhone) ||
                other.driverPhone == driverPhone) &&
            (identical(other.vehicleDetails, vehicleDetails) ||
                other.vehicleDetails == vehicleDetails) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.estimatedMinutes, estimatedMinutes) ||
                other.estimatedMinutes == estimatedMinutes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    driverName,
    driverPhone,
    vehicleDetails,
    estimatedCost,
    estimatedMinutes,
  );

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideOfferedStateImplCopyWith<_$RideOfferedStateImpl> get copyWith =>
      __$$RideOfferedStateImplCopyWithImpl<_$RideOfferedStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return rideOffered(
      tripId,
      driverName,
      driverPhone,
      vehicleDetails,
      estimatedCost,
      estimatedMinutes,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return rideOffered?.call(
      tripId,
      driverName,
      driverPhone,
      vehicleDetails,
      estimatedCost,
      estimatedMinutes,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (rideOffered != null) {
      return rideOffered(
        tripId,
        driverName,
        driverPhone,
        vehicleDetails,
        estimatedCost,
        estimatedMinutes,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return rideOffered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return rideOffered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (rideOffered != null) {
      return rideOffered(this);
    }
    return orElse();
  }
}

abstract class RideOfferedState implements RiderOperationsState {
  const factory RideOfferedState({
    required final String tripId,
    required final String driverName,
    required final String driverPhone,
    required final String vehicleDetails,
    required final double estimatedCost,
    required final int estimatedMinutes,
  }) = _$RideOfferedStateImpl;

  String get tripId;
  String get driverName;
  String get driverPhone;
  String get vehicleDetails;
  double get estimatedCost;
  int get estimatedMinutes;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideOfferedStateImplCopyWith<_$RideOfferedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WaitingForPickupStateImplCopyWith<$Res> {
  factory _$$WaitingForPickupStateImplCopyWith(
    _$WaitingForPickupStateImpl value,
    $Res Function(_$WaitingForPickupStateImpl) then,
  ) = __$$WaitingForPickupStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String tripId,
    String driverName,
    double driverLat,
    double driverLng,
    int minutesAway,
  });
}

/// @nodoc
class __$$WaitingForPickupStateImplCopyWithImpl<$Res>
    extends
        _$RiderOperationsStateCopyWithImpl<$Res, _$WaitingForPickupStateImpl>
    implements _$$WaitingForPickupStateImplCopyWith<$Res> {
  __$$WaitingForPickupStateImplCopyWithImpl(
    _$WaitingForPickupStateImpl _value,
    $Res Function(_$WaitingForPickupStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? driverName = null,
    Object? driverLat = null,
    Object? driverLng = null,
    Object? minutesAway = null,
  }) {
    return _then(
      _$WaitingForPickupStateImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        driverName:
            null == driverName
                ? _value.driverName
                : driverName // ignore: cast_nullable_to_non_nullable
                    as String,
        driverLat:
            null == driverLat
                ? _value.driverLat
                : driverLat // ignore: cast_nullable_to_non_nullable
                    as double,
        driverLng:
            null == driverLng
                ? _value.driverLng
                : driverLng // ignore: cast_nullable_to_non_nullable
                    as double,
        minutesAway:
            null == minutesAway
                ? _value.minutesAway
                : minutesAway // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$WaitingForPickupStateImpl implements WaitingForPickupState {
  const _$WaitingForPickupStateImpl({
    required this.tripId,
    required this.driverName,
    required this.driverLat,
    required this.driverLng,
    required this.minutesAway,
  });

  @override
  final String tripId;
  @override
  final String driverName;
  @override
  final double driverLat;
  @override
  final double driverLng;
  @override
  final int minutesAway;

  @override
  String toString() {
    return 'RiderOperationsState.waitingForPickup(tripId: $tripId, driverName: $driverName, driverLat: $driverLat, driverLng: $driverLng, minutesAway: $minutesAway)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingForPickupStateImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.driverLat, driverLat) ||
                other.driverLat == driverLat) &&
            (identical(other.driverLng, driverLng) ||
                other.driverLng == driverLng) &&
            (identical(other.minutesAway, minutesAway) ||
                other.minutesAway == minutesAway));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    driverName,
    driverLat,
    driverLng,
    minutesAway,
  );

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingForPickupStateImplCopyWith<_$WaitingForPickupStateImpl>
  get copyWith =>
      __$$WaitingForPickupStateImplCopyWithImpl<_$WaitingForPickupStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return waitingForPickup(
      tripId,
      driverName,
      driverLat,
      driverLng,
      minutesAway,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return waitingForPickup?.call(
      tripId,
      driverName,
      driverLat,
      driverLng,
      minutesAway,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (waitingForPickup != null) {
      return waitingForPickup(
        tripId,
        driverName,
        driverLat,
        driverLng,
        minutesAway,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return waitingForPickup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return waitingForPickup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (waitingForPickup != null) {
      return waitingForPickup(this);
    }
    return orElse();
  }
}

abstract class WaitingForPickupState implements RiderOperationsState {
  const factory WaitingForPickupState({
    required final String tripId,
    required final String driverName,
    required final double driverLat,
    required final double driverLng,
    required final int minutesAway,
  }) = _$WaitingForPickupStateImpl;

  String get tripId;
  String get driverName;
  double get driverLat;
  double get driverLng;
  int get minutesAway;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitingForPickupStateImplCopyWith<_$WaitingForPickupStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RideInProgressStateImplCopyWith<$Res> {
  factory _$$RideInProgressStateImplCopyWith(
    _$RideInProgressStateImpl value,
    $Res Function(_$RideInProgressStateImpl) then,
  ) = __$$RideInProgressStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String tripId,
    String driverName,
    double currentLat,
    double currentLng,
    double destinationLat,
    double destinationLng,
  });
}

/// @nodoc
class __$$RideInProgressStateImplCopyWithImpl<$Res>
    extends _$RiderOperationsStateCopyWithImpl<$Res, _$RideInProgressStateImpl>
    implements _$$RideInProgressStateImplCopyWith<$Res> {
  __$$RideInProgressStateImplCopyWithImpl(
    _$RideInProgressStateImpl _value,
    $Res Function(_$RideInProgressStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? driverName = null,
    Object? currentLat = null,
    Object? currentLng = null,
    Object? destinationLat = null,
    Object? destinationLng = null,
  }) {
    return _then(
      _$RideInProgressStateImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        driverName:
            null == driverName
                ? _value.driverName
                : driverName // ignore: cast_nullable_to_non_nullable
                    as String,
        currentLat:
            null == currentLat
                ? _value.currentLat
                : currentLat // ignore: cast_nullable_to_non_nullable
                    as double,
        currentLng:
            null == currentLng
                ? _value.currentLng
                : currentLng // ignore: cast_nullable_to_non_nullable
                    as double,
        destinationLat:
            null == destinationLat
                ? _value.destinationLat
                : destinationLat // ignore: cast_nullable_to_non_nullable
                    as double,
        destinationLng:
            null == destinationLng
                ? _value.destinationLng
                : destinationLng // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$RideInProgressStateImpl implements RideInProgressState {
  const _$RideInProgressStateImpl({
    required this.tripId,
    required this.driverName,
    required this.currentLat,
    required this.currentLng,
    required this.destinationLat,
    required this.destinationLng,
  });

  @override
  final String tripId;
  @override
  final String driverName;
  @override
  final double currentLat;
  @override
  final double currentLng;
  @override
  final double destinationLat;
  @override
  final double destinationLng;

  @override
  String toString() {
    return 'RiderOperationsState.rideInProgress(tripId: $tripId, driverName: $driverName, currentLat: $currentLat, currentLng: $currentLng, destinationLat: $destinationLat, destinationLng: $destinationLng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideInProgressStateImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.currentLat, currentLat) ||
                other.currentLat == currentLat) &&
            (identical(other.currentLng, currentLng) ||
                other.currentLng == currentLng) &&
            (identical(other.destinationLat, destinationLat) ||
                other.destinationLat == destinationLat) &&
            (identical(other.destinationLng, destinationLng) ||
                other.destinationLng == destinationLng));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    driverName,
    currentLat,
    currentLng,
    destinationLat,
    destinationLng,
  );

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideInProgressStateImplCopyWith<_$RideInProgressStateImpl> get copyWith =>
      __$$RideInProgressStateImplCopyWithImpl<_$RideInProgressStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return rideInProgress(
      tripId,
      driverName,
      currentLat,
      currentLng,
      destinationLat,
      destinationLng,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return rideInProgress?.call(
      tripId,
      driverName,
      currentLat,
      currentLng,
      destinationLat,
      destinationLng,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (rideInProgress != null) {
      return rideInProgress(
        tripId,
        driverName,
        currentLat,
        currentLng,
        destinationLat,
        destinationLng,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return rideInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return rideInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (rideInProgress != null) {
      return rideInProgress(this);
    }
    return orElse();
  }
}

abstract class RideInProgressState implements RiderOperationsState {
  const factory RideInProgressState({
    required final String tripId,
    required final String driverName,
    required final double currentLat,
    required final double currentLng,
    required final double destinationLat,
    required final double destinationLng,
  }) = _$RideInProgressStateImpl;

  String get tripId;
  String get driverName;
  double get currentLat;
  double get currentLng;
  double get destinationLat;
  double get destinationLng;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideInProgressStateImplCopyWith<_$RideInProgressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RideCompletedStateImplCopyWith<$Res> {
  factory _$$RideCompletedStateImplCopyWith(
    _$RideCompletedStateImpl value,
    $Res Function(_$RideCompletedStateImpl) then,
  ) = __$$RideCompletedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String tripId,
    String driverName,
    double finalCost,
    int tripDurationMinutes,
  });
}

/// @nodoc
class __$$RideCompletedStateImplCopyWithImpl<$Res>
    extends _$RiderOperationsStateCopyWithImpl<$Res, _$RideCompletedStateImpl>
    implements _$$RideCompletedStateImplCopyWith<$Res> {
  __$$RideCompletedStateImplCopyWithImpl(
    _$RideCompletedStateImpl _value,
    $Res Function(_$RideCompletedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? driverName = null,
    Object? finalCost = null,
    Object? tripDurationMinutes = null,
  }) {
    return _then(
      _$RideCompletedStateImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        driverName:
            null == driverName
                ? _value.driverName
                : driverName // ignore: cast_nullable_to_non_nullable
                    as String,
        finalCost:
            null == finalCost
                ? _value.finalCost
                : finalCost // ignore: cast_nullable_to_non_nullable
                    as double,
        tripDurationMinutes:
            null == tripDurationMinutes
                ? _value.tripDurationMinutes
                : tripDurationMinutes // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$RideCompletedStateImpl implements RideCompletedState {
  const _$RideCompletedStateImpl({
    required this.tripId,
    required this.driverName,
    required this.finalCost,
    required this.tripDurationMinutes,
  });

  @override
  final String tripId;
  @override
  final String driverName;
  @override
  final double finalCost;
  @override
  final int tripDurationMinutes;

  @override
  String toString() {
    return 'RiderOperationsState.rideCompleted(tripId: $tripId, driverName: $driverName, finalCost: $finalCost, tripDurationMinutes: $tripDurationMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideCompletedStateImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.finalCost, finalCost) ||
                other.finalCost == finalCost) &&
            (identical(other.tripDurationMinutes, tripDurationMinutes) ||
                other.tripDurationMinutes == tripDurationMinutes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    driverName,
    finalCost,
    tripDurationMinutes,
  );

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideCompletedStateImplCopyWith<_$RideCompletedStateImpl> get copyWith =>
      __$$RideCompletedStateImplCopyWithImpl<_$RideCompletedStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return rideCompleted(tripId, driverName, finalCost, tripDurationMinutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return rideCompleted?.call(
      tripId,
      driverName,
      finalCost,
      tripDurationMinutes,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (rideCompleted != null) {
      return rideCompleted(tripId, driverName, finalCost, tripDurationMinutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return rideCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return rideCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (rideCompleted != null) {
      return rideCompleted(this);
    }
    return orElse();
  }
}

abstract class RideCompletedState implements RiderOperationsState {
  const factory RideCompletedState({
    required final String tripId,
    required final String driverName,
    required final double finalCost,
    required final int tripDurationMinutes,
  }) = _$RideCompletedStateImpl;

  String get tripId;
  String get driverName;
  double get finalCost;
  int get tripDurationMinutes;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideCompletedStateImplCopyWith<_$RideCompletedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RatingPendingStateImplCopyWith<$Res> {
  factory _$$RatingPendingStateImplCopyWith(
    _$RatingPendingStateImpl value,
    $Res Function(_$RatingPendingStateImpl) then,
  ) = __$$RatingPendingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tripId, String driverName});
}

/// @nodoc
class __$$RatingPendingStateImplCopyWithImpl<$Res>
    extends _$RiderOperationsStateCopyWithImpl<$Res, _$RatingPendingStateImpl>
    implements _$$RatingPendingStateImplCopyWith<$Res> {
  __$$RatingPendingStateImplCopyWithImpl(
    _$RatingPendingStateImpl _value,
    $Res Function(_$RatingPendingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tripId = null, Object? driverName = null}) {
    return _then(
      _$RatingPendingStateImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        driverName:
            null == driverName
                ? _value.driverName
                : driverName // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$RatingPendingStateImpl implements RatingPendingState {
  const _$RatingPendingStateImpl({
    required this.tripId,
    required this.driverName,
  });

  @override
  final String tripId;
  @override
  final String driverName;

  @override
  String toString() {
    return 'RiderOperationsState.ratingPending(tripId: $tripId, driverName: $driverName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingPendingStateImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripId, driverName);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingPendingStateImplCopyWith<_$RatingPendingStateImpl> get copyWith =>
      __$$RatingPendingStateImplCopyWithImpl<_$RatingPendingStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return ratingPending(tripId, driverName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return ratingPending?.call(tripId, driverName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ratingPending != null) {
      return ratingPending(tripId, driverName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return ratingPending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return ratingPending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (ratingPending != null) {
      return ratingPending(this);
    }
    return orElse();
  }
}

abstract class RatingPendingState implements RiderOperationsState {
  const factory RatingPendingState({
    required final String tripId,
    required final String driverName,
  }) = _$RatingPendingStateImpl;

  String get tripId;
  String get driverName;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingPendingStateImplCopyWith<_$RatingPendingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripCancelledStateImplCopyWith<$Res> {
  factory _$$TripCancelledStateImplCopyWith(
    _$TripCancelledStateImpl value,
    $Res Function(_$TripCancelledStateImpl) then,
  ) = __$$TripCancelledStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$TripCancelledStateImplCopyWithImpl<$Res>
    extends _$RiderOperationsStateCopyWithImpl<$Res, _$TripCancelledStateImpl>
    implements _$$TripCancelledStateImplCopyWith<$Res> {
  __$$TripCancelledStateImplCopyWithImpl(
    _$TripCancelledStateImpl _value,
    $Res Function(_$TripCancelledStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _$TripCancelledStateImpl(
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

class _$TripCancelledStateImpl implements TripCancelledState {
  const _$TripCancelledStateImpl({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'RiderOperationsState.tripCancelled(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripCancelledStateImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripCancelledStateImplCopyWith<_$TripCancelledStateImpl> get copyWith =>
      __$$TripCancelledStateImplCopyWithImpl<_$TripCancelledStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return tripCancelled(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return tripCancelled?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (tripCancelled != null) {
      return tripCancelled(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return tripCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return tripCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (tripCancelled != null) {
      return tripCancelled(this);
    }
    return orElse();
  }
}

abstract class TripCancelledState implements RiderOperationsState {
  const factory TripCancelledState({required final String reason}) =
      _$TripCancelledStateImpl;

  String get reason;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripCancelledStateImplCopyWith<_$TripCancelledStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RiderOperationsErrorImplCopyWith<$Res> {
  factory _$$RiderOperationsErrorImplCopyWith(
    _$RiderOperationsErrorImpl value,
    $Res Function(_$RiderOperationsErrorImpl) then,
  ) = __$$RiderOperationsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RiderOperationsErrorImplCopyWithImpl<$Res>
    extends _$RiderOperationsStateCopyWithImpl<$Res, _$RiderOperationsErrorImpl>
    implements _$$RiderOperationsErrorImplCopyWith<$Res> {
  __$$RiderOperationsErrorImplCopyWithImpl(
    _$RiderOperationsErrorImpl _value,
    $Res Function(_$RiderOperationsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$RiderOperationsErrorImpl(
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

class _$RiderOperationsErrorImpl implements RiderOperationsError {
  const _$RiderOperationsErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RiderOperationsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderOperationsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderOperationsErrorImplCopyWith<_$RiderOperationsErrorImpl>
  get copyWith =>
      __$$RiderOperationsErrorImplCopyWithImpl<_$RiderOperationsErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pickupAddress, String destinationAddress)
    searching,
    required TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )
    rideOffered,
    required TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )
    waitingForPickup,
    required TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )
    rideInProgress,
    required TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )
    rideCompleted,
    required TResult Function(String tripId, String driverName) ratingPending,
    required TResult Function(String reason) tripCancelled,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult? Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult? Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult? Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult? Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult? Function(String tripId, String driverName)? ratingPending,
    TResult? Function(String reason)? tripCancelled,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pickupAddress, String destinationAddress)?
    searching,
    TResult Function(
      String tripId,
      String driverName,
      String driverPhone,
      String vehicleDetails,
      double estimatedCost,
      int estimatedMinutes,
    )?
    rideOffered,
    TResult Function(
      String tripId,
      String driverName,
      double driverLat,
      double driverLng,
      int minutesAway,
    )?
    waitingForPickup,
    TResult Function(
      String tripId,
      String driverName,
      double currentLat,
      double currentLng,
      double destinationLat,
      double destinationLng,
    )?
    rideInProgress,
    TResult Function(
      String tripId,
      String driverName,
      double finalCost,
      int tripDurationMinutes,
    )?
    rideCompleted,
    TResult Function(String tripId, String driverName)? ratingPending,
    TResult Function(String reason)? tripCancelled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiderOperationsInitial value) initial,
    required TResult Function(RiderOperationsSearching value) searching,
    required TResult Function(RideOfferedState value) rideOffered,
    required TResult Function(WaitingForPickupState value) waitingForPickup,
    required TResult Function(RideInProgressState value) rideInProgress,
    required TResult Function(RideCompletedState value) rideCompleted,
    required TResult Function(RatingPendingState value) ratingPending,
    required TResult Function(TripCancelledState value) tripCancelled,
    required TResult Function(RiderOperationsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiderOperationsInitial value)? initial,
    TResult? Function(RiderOperationsSearching value)? searching,
    TResult? Function(RideOfferedState value)? rideOffered,
    TResult? Function(WaitingForPickupState value)? waitingForPickup,
    TResult? Function(RideInProgressState value)? rideInProgress,
    TResult? Function(RideCompletedState value)? rideCompleted,
    TResult? Function(RatingPendingState value)? ratingPending,
    TResult? Function(TripCancelledState value)? tripCancelled,
    TResult? Function(RiderOperationsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiderOperationsInitial value)? initial,
    TResult Function(RiderOperationsSearching value)? searching,
    TResult Function(RideOfferedState value)? rideOffered,
    TResult Function(WaitingForPickupState value)? waitingForPickup,
    TResult Function(RideInProgressState value)? rideInProgress,
    TResult Function(RideCompletedState value)? rideCompleted,
    TResult Function(RatingPendingState value)? ratingPending,
    TResult Function(TripCancelledState value)? tripCancelled,
    TResult Function(RiderOperationsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RiderOperationsError implements RiderOperationsState {
  const factory RiderOperationsError({required final String message}) =
      _$RiderOperationsErrorImpl;

  String get message;

  /// Create a copy of RiderOperationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderOperationsErrorImplCopyWith<_$RiderOperationsErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}
