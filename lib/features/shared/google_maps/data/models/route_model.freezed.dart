// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RouteModel _$RouteModelFromJson(Map<String, dynamic> json) {
  return _RouteModel.fromJson(json);
}

/// @nodoc
mixin _$RouteModel {
  List<RouteResponseRoute> get routes => throw _privateConstructorUsedError;

  /// Serializes this RouteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteModelCopyWith<RouteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteModelCopyWith<$Res> {
  factory $RouteModelCopyWith(
    RouteModel value,
    $Res Function(RouteModel) then,
  ) = _$RouteModelCopyWithImpl<$Res, RouteModel>;
  @useResult
  $Res call({List<RouteResponseRoute> routes});
}

/// @nodoc
class _$RouteModelCopyWithImpl<$Res, $Val extends RouteModel>
    implements $RouteModelCopyWith<$Res> {
  _$RouteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? routes = null}) {
    return _then(
      _value.copyWith(
            routes:
                null == routes
                    ? _value.routes
                    : routes // ignore: cast_nullable_to_non_nullable
                        as List<RouteResponseRoute>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteModelImplCopyWith<$Res>
    implements $RouteModelCopyWith<$Res> {
  factory _$$RouteModelImplCopyWith(
    _$RouteModelImpl value,
    $Res Function(_$RouteModelImpl) then,
  ) = __$$RouteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RouteResponseRoute> routes});
}

/// @nodoc
class __$$RouteModelImplCopyWithImpl<$Res>
    extends _$RouteModelCopyWithImpl<$Res, _$RouteModelImpl>
    implements _$$RouteModelImplCopyWith<$Res> {
  __$$RouteModelImplCopyWithImpl(
    _$RouteModelImpl _value,
    $Res Function(_$RouteModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? routes = null}) {
    return _then(
      _$RouteModelImpl(
        routes:
            null == routes
                ? _value._routes
                : routes // ignore: cast_nullable_to_non_nullable
                    as List<RouteResponseRoute>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteModelImpl extends _RouteModel {
  const _$RouteModelImpl({required final List<RouteResponseRoute> routes})
    : _routes = routes,
      super._();

  factory _$RouteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteModelImplFromJson(json);

  final List<RouteResponseRoute> _routes;
  @override
  List<RouteResponseRoute> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  String toString() {
    return 'RouteModel(routes: $routes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteModelImpl &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_routes));

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteModelImplCopyWith<_$RouteModelImpl> get copyWith =>
      __$$RouteModelImplCopyWithImpl<_$RouteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteModelImplToJson(this);
  }
}

abstract class _RouteModel extends RouteModel {
  const factory _RouteModel({required final List<RouteResponseRoute> routes}) =
      _$RouteModelImpl;
  const _RouteModel._() : super._();

  factory _RouteModel.fromJson(Map<String, dynamic> json) =
      _$RouteModelImpl.fromJson;

  @override
  List<RouteResponseRoute> get routes;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteModelImplCopyWith<_$RouteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RouteResponseRoute _$RouteResponseRouteFromJson(Map<String, dynamic> json) {
  return _RouteResponseRoute.fromJson(json);
}

/// @nodoc
mixin _$RouteResponseRoute {
  List<RouteLeg> get legs => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview_polyline')
  OverviewPolyline get overviewPolyline => throw _privateConstructorUsedError;

  /// Serializes this RouteResponseRoute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteResponseRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteResponseRouteCopyWith<RouteResponseRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteResponseRouteCopyWith<$Res> {
  factory $RouteResponseRouteCopyWith(
    RouteResponseRoute value,
    $Res Function(RouteResponseRoute) then,
  ) = _$RouteResponseRouteCopyWithImpl<$Res, RouteResponseRoute>;
  @useResult
  $Res call({
    List<RouteLeg> legs,
    @JsonKey(name: 'overview_polyline') OverviewPolyline overviewPolyline,
  });

  $OverviewPolylineCopyWith<$Res> get overviewPolyline;
}

/// @nodoc
class _$RouteResponseRouteCopyWithImpl<$Res, $Val extends RouteResponseRoute>
    implements $RouteResponseRouteCopyWith<$Res> {
  _$RouteResponseRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteResponseRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? legs = null, Object? overviewPolyline = null}) {
    return _then(
      _value.copyWith(
            legs:
                null == legs
                    ? _value.legs
                    : legs // ignore: cast_nullable_to_non_nullable
                        as List<RouteLeg>,
            overviewPolyline:
                null == overviewPolyline
                    ? _value.overviewPolyline
                    : overviewPolyline // ignore: cast_nullable_to_non_nullable
                        as OverviewPolyline,
          )
          as $Val,
    );
  }

  /// Create a copy of RouteResponseRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverviewPolylineCopyWith<$Res> get overviewPolyline {
    return $OverviewPolylineCopyWith<$Res>(_value.overviewPolyline, (value) {
      return _then(_value.copyWith(overviewPolyline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteResponseRouteImplCopyWith<$Res>
    implements $RouteResponseRouteCopyWith<$Res> {
  factory _$$RouteResponseRouteImplCopyWith(
    _$RouteResponseRouteImpl value,
    $Res Function(_$RouteResponseRouteImpl) then,
  ) = __$$RouteResponseRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<RouteLeg> legs,
    @JsonKey(name: 'overview_polyline') OverviewPolyline overviewPolyline,
  });

  @override
  $OverviewPolylineCopyWith<$Res> get overviewPolyline;
}

/// @nodoc
class __$$RouteResponseRouteImplCopyWithImpl<$Res>
    extends _$RouteResponseRouteCopyWithImpl<$Res, _$RouteResponseRouteImpl>
    implements _$$RouteResponseRouteImplCopyWith<$Res> {
  __$$RouteResponseRouteImplCopyWithImpl(
    _$RouteResponseRouteImpl _value,
    $Res Function(_$RouteResponseRouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteResponseRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? legs = null, Object? overviewPolyline = null}) {
    return _then(
      _$RouteResponseRouteImpl(
        legs:
            null == legs
                ? _value._legs
                : legs // ignore: cast_nullable_to_non_nullable
                    as List<RouteLeg>,
        overviewPolyline:
            null == overviewPolyline
                ? _value.overviewPolyline
                : overviewPolyline // ignore: cast_nullable_to_non_nullable
                    as OverviewPolyline,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteResponseRouteImpl implements _RouteResponseRoute {
  const _$RouteResponseRouteImpl({
    required final List<RouteLeg> legs,
    @JsonKey(name: 'overview_polyline') required this.overviewPolyline,
  }) : _legs = legs;

  factory _$RouteResponseRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteResponseRouteImplFromJson(json);

  final List<RouteLeg> _legs;
  @override
  List<RouteLeg> get legs {
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_legs);
  }

  @override
  @JsonKey(name: 'overview_polyline')
  final OverviewPolyline overviewPolyline;

  @override
  String toString() {
    return 'RouteResponseRoute(legs: $legs, overviewPolyline: $overviewPolyline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteResponseRouteImpl &&
            const DeepCollectionEquality().equals(other._legs, _legs) &&
            (identical(other.overviewPolyline, overviewPolyline) ||
                other.overviewPolyline == overviewPolyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_legs),
    overviewPolyline,
  );

  /// Create a copy of RouteResponseRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteResponseRouteImplCopyWith<_$RouteResponseRouteImpl> get copyWith =>
      __$$RouteResponseRouteImplCopyWithImpl<_$RouteResponseRouteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteResponseRouteImplToJson(this);
  }
}

abstract class _RouteResponseRoute implements RouteResponseRoute {
  const factory _RouteResponseRoute({
    required final List<RouteLeg> legs,
    @JsonKey(name: 'overview_polyline')
    required final OverviewPolyline overviewPolyline,
  }) = _$RouteResponseRouteImpl;

  factory _RouteResponseRoute.fromJson(Map<String, dynamic> json) =
      _$RouteResponseRouteImpl.fromJson;

  @override
  List<RouteLeg> get legs;
  @override
  @JsonKey(name: 'overview_polyline')
  OverviewPolyline get overviewPolyline;

  /// Create a copy of RouteResponseRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteResponseRouteImplCopyWith<_$RouteResponseRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RouteLeg _$RouteLegFromJson(Map<String, dynamic> json) {
  return _RouteLeg.fromJson(json);
}

/// @nodoc
mixin _$RouteLeg {
  DistanceValue get distance => throw _privateConstructorUsedError;
  DurationValue get duration => throw _privateConstructorUsedError;
  List<RouteStep> get steps => throw _privateConstructorUsedError;

  /// Serializes this RouteLeg to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteLeg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteLegCopyWith<RouteLeg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteLegCopyWith<$Res> {
  factory $RouteLegCopyWith(RouteLeg value, $Res Function(RouteLeg) then) =
      _$RouteLegCopyWithImpl<$Res, RouteLeg>;
  @useResult
  $Res call({
    DistanceValue distance,
    DurationValue duration,
    List<RouteStep> steps,
  });

  $DistanceValueCopyWith<$Res> get distance;
  $DurationValueCopyWith<$Res> get duration;
}

/// @nodoc
class _$RouteLegCopyWithImpl<$Res, $Val extends RouteLeg>
    implements $RouteLegCopyWith<$Res> {
  _$RouteLegCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteLeg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? steps = null,
  }) {
    return _then(
      _value.copyWith(
            distance:
                null == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as DistanceValue,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as DurationValue,
            steps:
                null == steps
                    ? _value.steps
                    : steps // ignore: cast_nullable_to_non_nullable
                        as List<RouteStep>,
          )
          as $Val,
    );
  }

  /// Create a copy of RouteLeg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceValueCopyWith<$Res> get distance {
    return $DistanceValueCopyWith<$Res>(_value.distance, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  /// Create a copy of RouteLeg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DurationValueCopyWith<$Res> get duration {
    return $DurationValueCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteLegImplCopyWith<$Res>
    implements $RouteLegCopyWith<$Res> {
  factory _$$RouteLegImplCopyWith(
    _$RouteLegImpl value,
    $Res Function(_$RouteLegImpl) then,
  ) = __$$RouteLegImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DistanceValue distance,
    DurationValue duration,
    List<RouteStep> steps,
  });

  @override
  $DistanceValueCopyWith<$Res> get distance;
  @override
  $DurationValueCopyWith<$Res> get duration;
}

/// @nodoc
class __$$RouteLegImplCopyWithImpl<$Res>
    extends _$RouteLegCopyWithImpl<$Res, _$RouteLegImpl>
    implements _$$RouteLegImplCopyWith<$Res> {
  __$$RouteLegImplCopyWithImpl(
    _$RouteLegImpl _value,
    $Res Function(_$RouteLegImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteLeg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? steps = null,
  }) {
    return _then(
      _$RouteLegImpl(
        distance:
            null == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as DistanceValue,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as DurationValue,
        steps:
            null == steps
                ? _value._steps
                : steps // ignore: cast_nullable_to_non_nullable
                    as List<RouteStep>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteLegImpl implements _RouteLeg {
  const _$RouteLegImpl({
    required this.distance,
    required this.duration,
    required final List<RouteStep> steps,
  }) : _steps = steps;

  factory _$RouteLegImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteLegImplFromJson(json);

  @override
  final DistanceValue distance;
  @override
  final DurationValue duration;
  final List<RouteStep> _steps;
  @override
  List<RouteStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'RouteLeg(distance: $distance, duration: $duration, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteLegImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    distance,
    duration,
    const DeepCollectionEquality().hash(_steps),
  );

  /// Create a copy of RouteLeg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteLegImplCopyWith<_$RouteLegImpl> get copyWith =>
      __$$RouteLegImplCopyWithImpl<_$RouteLegImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteLegImplToJson(this);
  }
}

abstract class _RouteLeg implements RouteLeg {
  const factory _RouteLeg({
    required final DistanceValue distance,
    required final DurationValue duration,
    required final List<RouteStep> steps,
  }) = _$RouteLegImpl;

  factory _RouteLeg.fromJson(Map<String, dynamic> json) =
      _$RouteLegImpl.fromJson;

  @override
  DistanceValue get distance;
  @override
  DurationValue get duration;
  @override
  List<RouteStep> get steps;

  /// Create a copy of RouteLeg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteLegImplCopyWith<_$RouteLegImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistanceValue _$DistanceValueFromJson(Map<String, dynamic> json) {
  return _DistanceValue.fromJson(json);
}

/// @nodoc
mixin _$DistanceValue {
  int get value => throw _privateConstructorUsedError; // in meters
  String get text => throw _privateConstructorUsedError;

  /// Serializes this DistanceValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistanceValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistanceValueCopyWith<DistanceValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceValueCopyWith<$Res> {
  factory $DistanceValueCopyWith(
    DistanceValue value,
    $Res Function(DistanceValue) then,
  ) = _$DistanceValueCopyWithImpl<$Res, DistanceValue>;
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class _$DistanceValueCopyWithImpl<$Res, $Val extends DistanceValue>
    implements $DistanceValueCopyWith<$Res> {
  _$DistanceValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistanceValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? text = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as int,
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DistanceValueImplCopyWith<$Res>
    implements $DistanceValueCopyWith<$Res> {
  factory _$$DistanceValueImplCopyWith(
    _$DistanceValueImpl value,
    $Res Function(_$DistanceValueImpl) then,
  ) = __$$DistanceValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class __$$DistanceValueImplCopyWithImpl<$Res>
    extends _$DistanceValueCopyWithImpl<$Res, _$DistanceValueImpl>
    implements _$$DistanceValueImplCopyWith<$Res> {
  __$$DistanceValueImplCopyWithImpl(
    _$DistanceValueImpl _value,
    $Res Function(_$DistanceValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DistanceValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? text = null}) {
    return _then(
      _$DistanceValueImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as int,
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DistanceValueImpl implements _DistanceValue {
  const _$DistanceValueImpl({required this.value, required this.text});

  factory _$DistanceValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistanceValueImplFromJson(json);

  @override
  final int value;
  // in meters
  @override
  final String text;

  @override
  String toString() {
    return 'DistanceValue(value: $value, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistanceValueImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, text);

  /// Create a copy of DistanceValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistanceValueImplCopyWith<_$DistanceValueImpl> get copyWith =>
      __$$DistanceValueImplCopyWithImpl<_$DistanceValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistanceValueImplToJson(this);
  }
}

abstract class _DistanceValue implements DistanceValue {
  const factory _DistanceValue({
    required final int value,
    required final String text,
  }) = _$DistanceValueImpl;

  factory _DistanceValue.fromJson(Map<String, dynamic> json) =
      _$DistanceValueImpl.fromJson;

  @override
  int get value; // in meters
  @override
  String get text;

  /// Create a copy of DistanceValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistanceValueImplCopyWith<_$DistanceValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DurationValue _$DurationValueFromJson(Map<String, dynamic> json) {
  return _DurationValue.fromJson(json);
}

/// @nodoc
mixin _$DurationValue {
  int get value => throw _privateConstructorUsedError; // in seconds
  String get text => throw _privateConstructorUsedError;

  /// Serializes this DurationValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DurationValueCopyWith<DurationValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationValueCopyWith<$Res> {
  factory $DurationValueCopyWith(
    DurationValue value,
    $Res Function(DurationValue) then,
  ) = _$DurationValueCopyWithImpl<$Res, DurationValue>;
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class _$DurationValueCopyWithImpl<$Res, $Val extends DurationValue>
    implements $DurationValueCopyWith<$Res> {
  _$DurationValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? text = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as int,
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DurationValueImplCopyWith<$Res>
    implements $DurationValueCopyWith<$Res> {
  factory _$$DurationValueImplCopyWith(
    _$DurationValueImpl value,
    $Res Function(_$DurationValueImpl) then,
  ) = __$$DurationValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class __$$DurationValueImplCopyWithImpl<$Res>
    extends _$DurationValueCopyWithImpl<$Res, _$DurationValueImpl>
    implements _$$DurationValueImplCopyWith<$Res> {
  __$$DurationValueImplCopyWithImpl(
    _$DurationValueImpl _value,
    $Res Function(_$DurationValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? text = null}) {
    return _then(
      _$DurationValueImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as int,
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DurationValueImpl implements _DurationValue {
  const _$DurationValueImpl({required this.value, required this.text});

  factory _$DurationValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationValueImplFromJson(json);

  @override
  final int value;
  // in seconds
  @override
  final String text;

  @override
  String toString() {
    return 'DurationValue(value: $value, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationValueImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, text);

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationValueImplCopyWith<_$DurationValueImpl> get copyWith =>
      __$$DurationValueImplCopyWithImpl<_$DurationValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationValueImplToJson(this);
  }
}

abstract class _DurationValue implements DurationValue {
  const factory _DurationValue({
    required final int value,
    required final String text,
  }) = _$DurationValueImpl;

  factory _DurationValue.fromJson(Map<String, dynamic> json) =
      _$DurationValueImpl.fromJson;

  @override
  int get value; // in seconds
  @override
  String get text;

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationValueImplCopyWith<_$DurationValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OverviewPolyline _$OverviewPolylineFromJson(Map<String, dynamic> json) {
  return _OverviewPolyline.fromJson(json);
}

/// @nodoc
mixin _$OverviewPolyline {
  String get points => throw _privateConstructorUsedError;

  /// Serializes this OverviewPolyline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OverviewPolyline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewPolylineCopyWith<OverviewPolyline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewPolylineCopyWith<$Res> {
  factory $OverviewPolylineCopyWith(
    OverviewPolyline value,
    $Res Function(OverviewPolyline) then,
  ) = _$OverviewPolylineCopyWithImpl<$Res, OverviewPolyline>;
  @useResult
  $Res call({String points});
}

/// @nodoc
class _$OverviewPolylineCopyWithImpl<$Res, $Val extends OverviewPolyline>
    implements $OverviewPolylineCopyWith<$Res> {
  _$OverviewPolylineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewPolyline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? points = null}) {
    return _then(
      _value.copyWith(
            points:
                null == points
                    ? _value.points
                    : points // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverviewPolylineImplCopyWith<$Res>
    implements $OverviewPolylineCopyWith<$Res> {
  factory _$$OverviewPolylineImplCopyWith(
    _$OverviewPolylineImpl value,
    $Res Function(_$OverviewPolylineImpl) then,
  ) = __$$OverviewPolylineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String points});
}

/// @nodoc
class __$$OverviewPolylineImplCopyWithImpl<$Res>
    extends _$OverviewPolylineCopyWithImpl<$Res, _$OverviewPolylineImpl>
    implements _$$OverviewPolylineImplCopyWith<$Res> {
  __$$OverviewPolylineImplCopyWithImpl(
    _$OverviewPolylineImpl _value,
    $Res Function(_$OverviewPolylineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewPolyline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? points = null}) {
    return _then(
      _$OverviewPolylineImpl(
        points:
            null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewPolylineImpl implements _OverviewPolyline {
  const _$OverviewPolylineImpl({required this.points});

  factory _$OverviewPolylineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewPolylineImplFromJson(json);

  @override
  final String points;

  @override
  String toString() {
    return 'OverviewPolyline(points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewPolylineImpl &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, points);

  /// Create a copy of OverviewPolyline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewPolylineImplCopyWith<_$OverviewPolylineImpl> get copyWith =>
      __$$OverviewPolylineImplCopyWithImpl<_$OverviewPolylineImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewPolylineImplToJson(this);
  }
}

abstract class _OverviewPolyline implements OverviewPolyline {
  const factory _OverviewPolyline({required final String points}) =
      _$OverviewPolylineImpl;

  factory _OverviewPolyline.fromJson(Map<String, dynamic> json) =
      _$OverviewPolylineImpl.fromJson;

  @override
  String get points;

  /// Create a copy of OverviewPolyline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewPolylineImplCopyWith<_$OverviewPolylineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RouteStep _$RouteStepFromJson(Map<String, dynamic> json) {
  return _RouteStep.fromJson(json);
}

/// @nodoc
mixin _$RouteStep {
  DistanceValue get distance => throw _privateConstructorUsedError;
  DurationValue get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_instructions')
  String get htmlInstructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_location')
  LatLngModel get startLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_location')
  LatLngModel get endLocation => throw _privateConstructorUsedError;

  /// Serializes this RouteStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteStepCopyWith<RouteStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStepCopyWith<$Res> {
  factory $RouteStepCopyWith(RouteStep value, $Res Function(RouteStep) then) =
      _$RouteStepCopyWithImpl<$Res, RouteStep>;
  @useResult
  $Res call({
    DistanceValue distance,
    DurationValue duration,
    @JsonKey(name: 'html_instructions') String htmlInstructions,
    @JsonKey(name: 'start_location') LatLngModel startLocation,
    @JsonKey(name: 'end_location') LatLngModel endLocation,
  });

  $DistanceValueCopyWith<$Res> get distance;
  $DurationValueCopyWith<$Res> get duration;
  $LatLngModelCopyWith<$Res> get startLocation;
  $LatLngModelCopyWith<$Res> get endLocation;
}

/// @nodoc
class _$RouteStepCopyWithImpl<$Res, $Val extends RouteStep>
    implements $RouteStepCopyWith<$Res> {
  _$RouteStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? htmlInstructions = null,
    Object? startLocation = null,
    Object? endLocation = null,
  }) {
    return _then(
      _value.copyWith(
            distance:
                null == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as DistanceValue,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as DurationValue,
            htmlInstructions:
                null == htmlInstructions
                    ? _value.htmlInstructions
                    : htmlInstructions // ignore: cast_nullable_to_non_nullable
                        as String,
            startLocation:
                null == startLocation
                    ? _value.startLocation
                    : startLocation // ignore: cast_nullable_to_non_nullable
                        as LatLngModel,
            endLocation:
                null == endLocation
                    ? _value.endLocation
                    : endLocation // ignore: cast_nullable_to_non_nullable
                        as LatLngModel,
          )
          as $Val,
    );
  }

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceValueCopyWith<$Res> get distance {
    return $DistanceValueCopyWith<$Res>(_value.distance, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DurationValueCopyWith<$Res> get duration {
    return $DurationValueCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngModelCopyWith<$Res> get startLocation {
    return $LatLngModelCopyWith<$Res>(_value.startLocation, (value) {
      return _then(_value.copyWith(startLocation: value) as $Val);
    });
  }

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngModelCopyWith<$Res> get endLocation {
    return $LatLngModelCopyWith<$Res>(_value.endLocation, (value) {
      return _then(_value.copyWith(endLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteStepImplCopyWith<$Res>
    implements $RouteStepCopyWith<$Res> {
  factory _$$RouteStepImplCopyWith(
    _$RouteStepImpl value,
    $Res Function(_$RouteStepImpl) then,
  ) = __$$RouteStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DistanceValue distance,
    DurationValue duration,
    @JsonKey(name: 'html_instructions') String htmlInstructions,
    @JsonKey(name: 'start_location') LatLngModel startLocation,
    @JsonKey(name: 'end_location') LatLngModel endLocation,
  });

  @override
  $DistanceValueCopyWith<$Res> get distance;
  @override
  $DurationValueCopyWith<$Res> get duration;
  @override
  $LatLngModelCopyWith<$Res> get startLocation;
  @override
  $LatLngModelCopyWith<$Res> get endLocation;
}

/// @nodoc
class __$$RouteStepImplCopyWithImpl<$Res>
    extends _$RouteStepCopyWithImpl<$Res, _$RouteStepImpl>
    implements _$$RouteStepImplCopyWith<$Res> {
  __$$RouteStepImplCopyWithImpl(
    _$RouteStepImpl _value,
    $Res Function(_$RouteStepImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? htmlInstructions = null,
    Object? startLocation = null,
    Object? endLocation = null,
  }) {
    return _then(
      _$RouteStepImpl(
        distance:
            null == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as DistanceValue,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as DurationValue,
        htmlInstructions:
            null == htmlInstructions
                ? _value.htmlInstructions
                : htmlInstructions // ignore: cast_nullable_to_non_nullable
                    as String,
        startLocation:
            null == startLocation
                ? _value.startLocation
                : startLocation // ignore: cast_nullable_to_non_nullable
                    as LatLngModel,
        endLocation:
            null == endLocation
                ? _value.endLocation
                : endLocation // ignore: cast_nullable_to_non_nullable
                    as LatLngModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteStepImpl extends _RouteStep {
  const _$RouteStepImpl({
    required this.distance,
    required this.duration,
    @JsonKey(name: 'html_instructions') required this.htmlInstructions,
    @JsonKey(name: 'start_location') required this.startLocation,
    @JsonKey(name: 'end_location') required this.endLocation,
  }) : super._();

  factory _$RouteStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteStepImplFromJson(json);

  @override
  final DistanceValue distance;
  @override
  final DurationValue duration;
  @override
  @JsonKey(name: 'html_instructions')
  final String htmlInstructions;
  @override
  @JsonKey(name: 'start_location')
  final LatLngModel startLocation;
  @override
  @JsonKey(name: 'end_location')
  final LatLngModel endLocation;

  @override
  String toString() {
    return 'RouteStep(distance: $distance, duration: $duration, htmlInstructions: $htmlInstructions, startLocation: $startLocation, endLocation: $endLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteStepImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.htmlInstructions, htmlInstructions) ||
                other.htmlInstructions == htmlInstructions) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    distance,
    duration,
    htmlInstructions,
    startLocation,
    endLocation,
  );

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteStepImplCopyWith<_$RouteStepImpl> get copyWith =>
      __$$RouteStepImplCopyWithImpl<_$RouteStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteStepImplToJson(this);
  }
}

abstract class _RouteStep extends RouteStep {
  const factory _RouteStep({
    required final DistanceValue distance,
    required final DurationValue duration,
    @JsonKey(name: 'html_instructions') required final String htmlInstructions,
    @JsonKey(name: 'start_location') required final LatLngModel startLocation,
    @JsonKey(name: 'end_location') required final LatLngModel endLocation,
  }) = _$RouteStepImpl;
  const _RouteStep._() : super._();

  factory _RouteStep.fromJson(Map<String, dynamic> json) =
      _$RouteStepImpl.fromJson;

  @override
  DistanceValue get distance;
  @override
  DurationValue get duration;
  @override
  @JsonKey(name: 'html_instructions')
  String get htmlInstructions;
  @override
  @JsonKey(name: 'start_location')
  LatLngModel get startLocation;
  @override
  @JsonKey(name: 'end_location')
  LatLngModel get endLocation;

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteStepImplCopyWith<_$RouteStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LatLngModel _$LatLngModelFromJson(Map<String, dynamic> json) {
  return _LatLngModel.fromJson(json);
}

/// @nodoc
mixin _$LatLngModel {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this LatLngModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LatLngModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatLngModelCopyWith<LatLngModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngModelCopyWith<$Res> {
  factory $LatLngModelCopyWith(
    LatLngModel value,
    $Res Function(LatLngModel) then,
  ) = _$LatLngModelCopyWithImpl<$Res, LatLngModel>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLngModelCopyWithImpl<$Res, $Val extends LatLngModel>
    implements $LatLngModelCopyWith<$Res> {
  _$LatLngModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatLngModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _value.copyWith(
            lat:
                null == lat
                    ? _value.lat
                    : lat // ignore: cast_nullable_to_non_nullable
                        as double,
            lng:
                null == lng
                    ? _value.lng
                    : lng // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LatLngModelImplCopyWith<$Res>
    implements $LatLngModelCopyWith<$Res> {
  factory _$$LatLngModelImplCopyWith(
    _$LatLngModelImpl value,
    $Res Function(_$LatLngModelImpl) then,
  ) = __$$LatLngModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$LatLngModelImplCopyWithImpl<$Res>
    extends _$LatLngModelCopyWithImpl<$Res, _$LatLngModelImpl>
    implements _$$LatLngModelImplCopyWith<$Res> {
  __$$LatLngModelImplCopyWithImpl(
    _$LatLngModelImpl _value,
    $Res Function(_$LatLngModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LatLngModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$LatLngModelImpl(
        lat:
            null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                    as double,
        lng:
            null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LatLngModelImpl implements _LatLngModel {
  const _$LatLngModelImpl({required this.lat, required this.lng});

  factory _$LatLngModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLngModelImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLngModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of LatLngModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngModelImplCopyWith<_$LatLngModelImpl> get copyWith =>
      __$$LatLngModelImplCopyWithImpl<_$LatLngModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLngModelImplToJson(this);
  }
}

abstract class _LatLngModel implements LatLngModel {
  const factory _LatLngModel({
    required final double lat,
    required final double lng,
  }) = _$LatLngModelImpl;

  factory _LatLngModel.fromJson(Map<String, dynamic> json) =
      _$LatLngModelImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of LatLngModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LatLngModelImplCopyWith<_$LatLngModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
