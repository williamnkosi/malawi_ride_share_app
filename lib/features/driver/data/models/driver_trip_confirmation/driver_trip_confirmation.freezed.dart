// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_trip_confirmation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverTripConfirmation _$DriverTripConfirmationFromJson(
  Map<String, dynamic> json,
) {
  return _DriverTripConfirmation.fromJson(json);
}

/// @nodoc
mixin _$DriverTripConfirmation {
  String get tripId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  Route get routeToPickup => throw _privateConstructorUsedError;
  LocationDetails get pickup => throw _privateConstructorUsedError;
  LocationDetails get destination => throw _privateConstructorUsedError;
  RiderInfo get rider => throw _privateConstructorUsedError;
  int get passengerCount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String get acceptedAt => throw _privateConstructorUsedError;
  String get estimatedPickupTime => throw _privateConstructorUsedError;

  /// Serializes this DriverTripConfirmation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverTripConfirmationCopyWith<DriverTripConfirmation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTripConfirmationCopyWith<$Res> {
  factory $DriverTripConfirmationCopyWith(
    DriverTripConfirmation value,
    $Res Function(DriverTripConfirmation) then,
  ) = _$DriverTripConfirmationCopyWithImpl<$Res, DriverTripConfirmation>;
  @useResult
  $Res call({
    String tripId,
    String status,
    Route routeToPickup,
    LocationDetails pickup,
    LocationDetails destination,
    RiderInfo rider,
    int passengerCount,
    String? notes,
    String acceptedAt,
    String estimatedPickupTime,
  });

  $RouteCopyWith<$Res> get routeToPickup;
  $LocationDetailsCopyWith<$Res> get pickup;
  $LocationDetailsCopyWith<$Res> get destination;
  $RiderInfoCopyWith<$Res> get rider;
}

/// @nodoc
class _$DriverTripConfirmationCopyWithImpl<
  $Res,
  $Val extends DriverTripConfirmation
>
    implements $DriverTripConfirmationCopyWith<$Res> {
  _$DriverTripConfirmationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? status = null,
    Object? routeToPickup = null,
    Object? pickup = null,
    Object? destination = null,
    Object? rider = null,
    Object? passengerCount = null,
    Object? notes = freezed,
    Object? acceptedAt = null,
    Object? estimatedPickupTime = null,
  }) {
    return _then(
      _value.copyWith(
            tripId:
                null == tripId
                    ? _value.tripId
                    : tripId // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            routeToPickup:
                null == routeToPickup
                    ? _value.routeToPickup
                    : routeToPickup // ignore: cast_nullable_to_non_nullable
                        as Route,
            pickup:
                null == pickup
                    ? _value.pickup
                    : pickup // ignore: cast_nullable_to_non_nullable
                        as LocationDetails,
            destination:
                null == destination
                    ? _value.destination
                    : destination // ignore: cast_nullable_to_non_nullable
                        as LocationDetails,
            rider:
                null == rider
                    ? _value.rider
                    : rider // ignore: cast_nullable_to_non_nullable
                        as RiderInfo,
            passengerCount:
                null == passengerCount
                    ? _value.passengerCount
                    : passengerCount // ignore: cast_nullable_to_non_nullable
                        as int,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
            acceptedAt:
                null == acceptedAt
                    ? _value.acceptedAt
                    : acceptedAt // ignore: cast_nullable_to_non_nullable
                        as String,
            estimatedPickupTime:
                null == estimatedPickupTime
                    ? _value.estimatedPickupTime
                    : estimatedPickupTime // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteCopyWith<$Res> get routeToPickup {
    return $RouteCopyWith<$Res>(_value.routeToPickup, (value) {
      return _then(_value.copyWith(routeToPickup: value) as $Val);
    });
  }

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDetailsCopyWith<$Res> get pickup {
    return $LocationDetailsCopyWith<$Res>(_value.pickup, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
  }

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDetailsCopyWith<$Res> get destination {
    return $LocationDetailsCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RiderInfoCopyWith<$Res> get rider {
    return $RiderInfoCopyWith<$Res>(_value.rider, (value) {
      return _then(_value.copyWith(rider: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverTripConfirmationImplCopyWith<$Res>
    implements $DriverTripConfirmationCopyWith<$Res> {
  factory _$$DriverTripConfirmationImplCopyWith(
    _$DriverTripConfirmationImpl value,
    $Res Function(_$DriverTripConfirmationImpl) then,
  ) = __$$DriverTripConfirmationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String tripId,
    String status,
    Route routeToPickup,
    LocationDetails pickup,
    LocationDetails destination,
    RiderInfo rider,
    int passengerCount,
    String? notes,
    String acceptedAt,
    String estimatedPickupTime,
  });

  @override
  $RouteCopyWith<$Res> get routeToPickup;
  @override
  $LocationDetailsCopyWith<$Res> get pickup;
  @override
  $LocationDetailsCopyWith<$Res> get destination;
  @override
  $RiderInfoCopyWith<$Res> get rider;
}

/// @nodoc
class __$$DriverTripConfirmationImplCopyWithImpl<$Res>
    extends
        _$DriverTripConfirmationCopyWithImpl<$Res, _$DriverTripConfirmationImpl>
    implements _$$DriverTripConfirmationImplCopyWith<$Res> {
  __$$DriverTripConfirmationImplCopyWithImpl(
    _$DriverTripConfirmationImpl _value,
    $Res Function(_$DriverTripConfirmationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? status = null,
    Object? routeToPickup = null,
    Object? pickup = null,
    Object? destination = null,
    Object? rider = null,
    Object? passengerCount = null,
    Object? notes = freezed,
    Object? acceptedAt = null,
    Object? estimatedPickupTime = null,
  }) {
    return _then(
      _$DriverTripConfirmationImpl(
        tripId:
            null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        routeToPickup:
            null == routeToPickup
                ? _value.routeToPickup
                : routeToPickup // ignore: cast_nullable_to_non_nullable
                    as Route,
        pickup:
            null == pickup
                ? _value.pickup
                : pickup // ignore: cast_nullable_to_non_nullable
                    as LocationDetails,
        destination:
            null == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                    as LocationDetails,
        rider:
            null == rider
                ? _value.rider
                : rider // ignore: cast_nullable_to_non_nullable
                    as RiderInfo,
        passengerCount:
            null == passengerCount
                ? _value.passengerCount
                : passengerCount // ignore: cast_nullable_to_non_nullable
                    as int,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
        acceptedAt:
            null == acceptedAt
                ? _value.acceptedAt
                : acceptedAt // ignore: cast_nullable_to_non_nullable
                    as String,
        estimatedPickupTime:
            null == estimatedPickupTime
                ? _value.estimatedPickupTime
                : estimatedPickupTime // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverTripConfirmationImpl implements _DriverTripConfirmation {
  const _$DriverTripConfirmationImpl({
    required this.tripId,
    required this.status,
    required this.routeToPickup,
    required this.pickup,
    required this.destination,
    required this.rider,
    required this.passengerCount,
    this.notes,
    required this.acceptedAt,
    required this.estimatedPickupTime,
  });

  factory _$DriverTripConfirmationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverTripConfirmationImplFromJson(json);

  @override
  final String tripId;
  @override
  final String status;
  @override
  final Route routeToPickup;
  @override
  final LocationDetails pickup;
  @override
  final LocationDetails destination;
  @override
  final RiderInfo rider;
  @override
  final int passengerCount;
  @override
  final String? notes;
  @override
  final String acceptedAt;
  @override
  final String estimatedPickupTime;

  @override
  String toString() {
    return 'DriverTripConfirmation(tripId: $tripId, status: $status, routeToPickup: $routeToPickup, pickup: $pickup, destination: $destination, rider: $rider, passengerCount: $passengerCount, notes: $notes, acceptedAt: $acceptedAt, estimatedPickupTime: $estimatedPickupTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripConfirmationImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.routeToPickup, routeToPickup) ||
                other.routeToPickup == routeToPickup) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.rider, rider) || other.rider == rider) &&
            (identical(other.passengerCount, passengerCount) ||
                other.passengerCount == passengerCount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.estimatedPickupTime, estimatedPickupTime) ||
                other.estimatedPickupTime == estimatedPickupTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    status,
    routeToPickup,
    pickup,
    destination,
    rider,
    passengerCount,
    notes,
    acceptedAt,
    estimatedPickupTime,
  );

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripConfirmationImplCopyWith<_$DriverTripConfirmationImpl>
  get copyWith =>
      __$$DriverTripConfirmationImplCopyWithImpl<_$DriverTripConfirmationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverTripConfirmationImplToJson(this);
  }
}

abstract class _DriverTripConfirmation implements DriverTripConfirmation {
  const factory _DriverTripConfirmation({
    required final String tripId,
    required final String status,
    required final Route routeToPickup,
    required final LocationDetails pickup,
    required final LocationDetails destination,
    required final RiderInfo rider,
    required final int passengerCount,
    final String? notes,
    required final String acceptedAt,
    required final String estimatedPickupTime,
  }) = _$DriverTripConfirmationImpl;

  factory _DriverTripConfirmation.fromJson(Map<String, dynamic> json) =
      _$DriverTripConfirmationImpl.fromJson;

  @override
  String get tripId;
  @override
  String get status;
  @override
  Route get routeToPickup;
  @override
  LocationDetails get pickup;
  @override
  LocationDetails get destination;
  @override
  RiderInfo get rider;
  @override
  int get passengerCount;
  @override
  String? get notes;
  @override
  String get acceptedAt;
  @override
  String get estimatedPickupTime;

  /// Create a copy of DriverTripConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripConfirmationImplCopyWith<_$DriverTripConfirmationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  double get distanceKm => throw _privateConstructorUsedError;
  double get durationMin => throw _privateConstructorUsedError;
  String get polyline => throw _privateConstructorUsedError;
  List<RoutesStepsDto> get steps => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String polyline,
    List<RoutesStepsDto> steps,
  });
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? polyline = null,
    Object? steps = null,
  }) {
    return _then(
      _value.copyWith(
            distanceKm:
                null == distanceKm
                    ? _value.distanceKm
                    : distanceKm // ignore: cast_nullable_to_non_nullable
                        as double,
            durationMin:
                null == durationMin
                    ? _value.durationMin
                    : durationMin // ignore: cast_nullable_to_non_nullable
                        as double,
            polyline:
                null == polyline
                    ? _value.polyline
                    : polyline // ignore: cast_nullable_to_non_nullable
                        as String,
            steps:
                null == steps
                    ? _value.steps
                    : steps // ignore: cast_nullable_to_non_nullable
                        as List<RoutesStepsDto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
    _$RouteImpl value,
    $Res Function(_$RouteImpl) then,
  ) = __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String polyline,
    List<RoutesStepsDto> steps,
  });
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
    _$RouteImpl _value,
    $Res Function(_$RouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? polyline = null,
    Object? steps = null,
  }) {
    return _then(
      _$RouteImpl(
        distanceKm:
            null == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                    as double,
        durationMin:
            null == durationMin
                ? _value.durationMin
                : durationMin // ignore: cast_nullable_to_non_nullable
                    as double,
        polyline:
            null == polyline
                ? _value.polyline
                : polyline // ignore: cast_nullable_to_non_nullable
                    as String,
        steps:
            null == steps
                ? _value._steps
                : steps // ignore: cast_nullable_to_non_nullable
                    as List<RoutesStepsDto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl implements _Route {
  const _$RouteImpl({
    required this.distanceKm,
    required this.durationMin,
    required this.polyline,
    required final List<RoutesStepsDto> steps,
  }) : _steps = steps;

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  final double distanceKm;
  @override
  final double durationMin;
  @override
  final String polyline;
  final List<RoutesStepsDto> _steps;
  @override
  List<RoutesStepsDto> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'Route(distanceKm: $distanceKm, durationMin: $durationMin, polyline: $polyline, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteImpl &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationMin, durationMin) ||
                other.durationMin == durationMin) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    distanceKm,
    durationMin,
    polyline,
    const DeepCollectionEquality().hash(_steps),
  );

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(this);
  }
}

abstract class _Route implements Route {
  const factory _Route({
    required final double distanceKm,
    required final double durationMin,
    required final String polyline,
    required final List<RoutesStepsDto> steps,
  }) = _$RouteImpl;

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  double get distanceKm;
  @override
  double get durationMin;
  @override
  String get polyline;
  @override
  List<RoutesStepsDto> get steps;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationDetails _$LocationDetailsFromJson(Map<String, dynamic> json) {
  return _LocationDetails.fromJson(json);
}

/// @nodoc
mixin _$LocationDetails {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this LocationDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDetailsCopyWith<LocationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsCopyWith<$Res> {
  factory $LocationDetailsCopyWith(
    LocationDetails value,
    $Res Function(LocationDetails) then,
  ) = _$LocationDetailsCopyWithImpl<$Res, LocationDetails>;
  @useResult
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class _$LocationDetailsCopyWithImpl<$Res, $Val extends LocationDetails>
    implements $LocationDetailsCopyWith<$Res> {
  _$LocationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationDetailsImplCopyWith<$Res>
    implements $LocationDetailsCopyWith<$Res> {
  factory _$$LocationDetailsImplCopyWith(
    _$LocationDetailsImpl value,
    $Res Function(_$LocationDetailsImpl) then,
  ) = __$$LocationDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class __$$LocationDetailsImplCopyWithImpl<$Res>
    extends _$LocationDetailsCopyWithImpl<$Res, _$LocationDetailsImpl>
    implements _$$LocationDetailsImplCopyWith<$Res> {
  __$$LocationDetailsImplCopyWithImpl(
    _$LocationDetailsImpl _value,
    $Res Function(_$LocationDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(
      _$LocationDetailsImpl(
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDetailsImpl implements _LocationDetails {
  const _$LocationDetailsImpl({
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  factory _$LocationDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDetailsImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String address;

  @override
  String toString() {
    return 'LocationDetails(latitude: $latitude, longitude: $longitude, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailsImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, address);

  /// Create a copy of LocationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailsImplCopyWith<_$LocationDetailsImpl> get copyWith =>
      __$$LocationDetailsImplCopyWithImpl<_$LocationDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDetailsImplToJson(this);
  }
}

abstract class _LocationDetails implements LocationDetails {
  const factory _LocationDetails({
    required final double latitude,
    required final double longitude,
    required final String address,
  }) = _$LocationDetailsImpl;

  factory _LocationDetails.fromJson(Map<String, dynamic> json) =
      _$LocationDetailsImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get address;

  /// Create a copy of LocationDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailsImplCopyWith<_$LocationDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiderInfo _$RiderInfoFromJson(Map<String, dynamic> json) {
  return _RiderInfo.fromJson(json);
}

/// @nodoc
mixin _$RiderInfo {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;

  /// Serializes this RiderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiderInfoCopyWith<RiderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderInfoCopyWith<$Res> {
  factory $RiderInfoCopyWith(RiderInfo value, $Res Function(RiderInfo) then) =
      _$RiderInfoCopyWithImpl<$Res, RiderInfo>;
  @useResult
  $Res call({String? firstName, String? lastName});
}

/// @nodoc
class _$RiderInfoCopyWithImpl<$Res, $Val extends RiderInfo>
    implements $RiderInfoCopyWith<$Res> {
  _$RiderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? firstName = freezed, Object? lastName = freezed}) {
    return _then(
      _value.copyWith(
            firstName:
                freezed == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastName:
                freezed == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RiderInfoImplCopyWith<$Res>
    implements $RiderInfoCopyWith<$Res> {
  factory _$$RiderInfoImplCopyWith(
    _$RiderInfoImpl value,
    $Res Function(_$RiderInfoImpl) then,
  ) = __$$RiderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? firstName, String? lastName});
}

/// @nodoc
class __$$RiderInfoImplCopyWithImpl<$Res>
    extends _$RiderInfoCopyWithImpl<$Res, _$RiderInfoImpl>
    implements _$$RiderInfoImplCopyWith<$Res> {
  __$$RiderInfoImplCopyWithImpl(
    _$RiderInfoImpl _value,
    $Res Function(_$RiderInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? firstName = freezed, Object? lastName = freezed}) {
    return _then(
      _$RiderInfoImpl(
        firstName:
            freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastName:
            freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RiderInfoImpl implements _RiderInfo {
  const _$RiderInfoImpl({this.firstName, this.lastName});

  factory _$RiderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiderInfoImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;

  @override
  String toString() {
    return 'RiderInfo(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderInfoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName);

  /// Create a copy of RiderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderInfoImplCopyWith<_$RiderInfoImpl> get copyWith =>
      __$$RiderInfoImplCopyWithImpl<_$RiderInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiderInfoImplToJson(this);
  }
}

abstract class _RiderInfo implements RiderInfo {
  const factory _RiderInfo({final String? firstName, final String? lastName}) =
      _$RiderInfoImpl;

  factory _RiderInfo.fromJson(Map<String, dynamic> json) =
      _$RiderInfoImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;

  /// Create a copy of RiderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderInfoImplCopyWith<_$RiderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
