// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RouteEntity {
  double get distanceKm => throw _privateConstructorUsedError;
  double get durationMin => throw _privateConstructorUsedError;
  String get polyline => throw _privateConstructorUsedError;
  List<RouteStepEntity> get steps => throw _privateConstructorUsedError;

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteEntityCopyWith<RouteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteEntityCopyWith<$Res> {
  factory $RouteEntityCopyWith(
    RouteEntity value,
    $Res Function(RouteEntity) then,
  ) = _$RouteEntityCopyWithImpl<$Res, RouteEntity>;
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String polyline,
    List<RouteStepEntity> steps,
  });
}

/// @nodoc
class _$RouteEntityCopyWithImpl<$Res, $Val extends RouteEntity>
    implements $RouteEntityCopyWith<$Res> {
  _$RouteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteEntity
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
                        as List<RouteStepEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteEntityImplCopyWith<$Res>
    implements $RouteEntityCopyWith<$Res> {
  factory _$$RouteEntityImplCopyWith(
    _$RouteEntityImpl value,
    $Res Function(_$RouteEntityImpl) then,
  ) = __$$RouteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String polyline,
    List<RouteStepEntity> steps,
  });
}

/// @nodoc
class __$$RouteEntityImplCopyWithImpl<$Res>
    extends _$RouteEntityCopyWithImpl<$Res, _$RouteEntityImpl>
    implements _$$RouteEntityImplCopyWith<$Res> {
  __$$RouteEntityImplCopyWithImpl(
    _$RouteEntityImpl _value,
    $Res Function(_$RouteEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteEntity
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
      _$RouteEntityImpl(
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
                    as List<RouteStepEntity>,
      ),
    );
  }
}

/// @nodoc

class _$RouteEntityImpl implements _RouteEntity {
  const _$RouteEntityImpl({
    required this.distanceKm,
    required this.durationMin,
    required this.polyline,
    required final List<RouteStepEntity> steps,
  }) : _steps = steps;

  @override
  final double distanceKm;
  @override
  final double durationMin;
  @override
  final String polyline;
  final List<RouteStepEntity> _steps;
  @override
  List<RouteStepEntity> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'RouteEntity(distanceKm: $distanceKm, durationMin: $durationMin, polyline: $polyline, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteEntityImpl &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationMin, durationMin) ||
                other.durationMin == durationMin) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    distanceKm,
    durationMin,
    polyline,
    const DeepCollectionEquality().hash(_steps),
  );

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteEntityImplCopyWith<_$RouteEntityImpl> get copyWith =>
      __$$RouteEntityImplCopyWithImpl<_$RouteEntityImpl>(this, _$identity);
}

abstract class _RouteEntity implements RouteEntity {
  const factory _RouteEntity({
    required final double distanceKm,
    required final double durationMin,
    required final String polyline,
    required final List<RouteStepEntity> steps,
  }) = _$RouteEntityImpl;

  @override
  double get distanceKm;
  @override
  double get durationMin;
  @override
  String get polyline;
  @override
  List<RouteStepEntity> get steps;

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteEntityImplCopyWith<_$RouteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RouteStepEntity {
  double get distanceKm => throw _privateConstructorUsedError;
  double get durationMin => throw _privateConstructorUsedError;
  String get instruction => throw _privateConstructorUsedError;
  double get startLat => throw _privateConstructorUsedError;
  double get startLng => throw _privateConstructorUsedError;
  double get endLat => throw _privateConstructorUsedError;
  double get endLng => throw _privateConstructorUsedError;

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteStepEntityCopyWith<RouteStepEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStepEntityCopyWith<$Res> {
  factory $RouteStepEntityCopyWith(
    RouteStepEntity value,
    $Res Function(RouteStepEntity) then,
  ) = _$RouteStepEntityCopyWithImpl<$Res, RouteStepEntity>;
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String instruction,
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  });
}

/// @nodoc
class _$RouteStepEntityCopyWithImpl<$Res, $Val extends RouteStepEntity>
    implements $RouteStepEntityCopyWith<$Res> {
  _$RouteStepEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? instruction = null,
    Object? startLat = null,
    Object? startLng = null,
    Object? endLat = null,
    Object? endLng = null,
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
            instruction:
                null == instruction
                    ? _value.instruction
                    : instruction // ignore: cast_nullable_to_non_nullable
                        as String,
            startLat:
                null == startLat
                    ? _value.startLat
                    : startLat // ignore: cast_nullable_to_non_nullable
                        as double,
            startLng:
                null == startLng
                    ? _value.startLng
                    : startLng // ignore: cast_nullable_to_non_nullable
                        as double,
            endLat:
                null == endLat
                    ? _value.endLat
                    : endLat // ignore: cast_nullable_to_non_nullable
                        as double,
            endLng:
                null == endLng
                    ? _value.endLng
                    : endLng // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteStepEntityImplCopyWith<$Res>
    implements $RouteStepEntityCopyWith<$Res> {
  factory _$$RouteStepEntityImplCopyWith(
    _$RouteStepEntityImpl value,
    $Res Function(_$RouteStepEntityImpl) then,
  ) = __$$RouteStepEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String instruction,
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  });
}

/// @nodoc
class __$$RouteStepEntityImplCopyWithImpl<$Res>
    extends _$RouteStepEntityCopyWithImpl<$Res, _$RouteStepEntityImpl>
    implements _$$RouteStepEntityImplCopyWith<$Res> {
  __$$RouteStepEntityImplCopyWithImpl(
    _$RouteStepEntityImpl _value,
    $Res Function(_$RouteStepEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? instruction = null,
    Object? startLat = null,
    Object? startLng = null,
    Object? endLat = null,
    Object? endLng = null,
  }) {
    return _then(
      _$RouteStepEntityImpl(
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
        instruction:
            null == instruction
                ? _value.instruction
                : instruction // ignore: cast_nullable_to_non_nullable
                    as String,
        startLat:
            null == startLat
                ? _value.startLat
                : startLat // ignore: cast_nullable_to_non_nullable
                    as double,
        startLng:
            null == startLng
                ? _value.startLng
                : startLng // ignore: cast_nullable_to_non_nullable
                    as double,
        endLat:
            null == endLat
                ? _value.endLat
                : endLat // ignore: cast_nullable_to_non_nullable
                    as double,
        endLng:
            null == endLng
                ? _value.endLng
                : endLng // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$RouteStepEntityImpl implements _RouteStepEntity {
  const _$RouteStepEntityImpl({
    required this.distanceKm,
    required this.durationMin,
    required this.instruction,
    required this.startLat,
    required this.startLng,
    required this.endLat,
    required this.endLng,
  });

  @override
  final double distanceKm;
  @override
  final double durationMin;
  @override
  final String instruction;
  @override
  final double startLat;
  @override
  final double startLng;
  @override
  final double endLat;
  @override
  final double endLng;

  @override
  String toString() {
    return 'RouteStepEntity(distanceKm: $distanceKm, durationMin: $durationMin, instruction: $instruction, startLat: $startLat, startLng: $startLng, endLat: $endLat, endLng: $endLng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteStepEntityImpl &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationMin, durationMin) ||
                other.durationMin == durationMin) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.startLat, startLat) ||
                other.startLat == startLat) &&
            (identical(other.startLng, startLng) ||
                other.startLng == startLng) &&
            (identical(other.endLat, endLat) || other.endLat == endLat) &&
            (identical(other.endLng, endLng) || other.endLng == endLng));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    distanceKm,
    durationMin,
    instruction,
    startLat,
    startLng,
    endLat,
    endLng,
  );

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteStepEntityImplCopyWith<_$RouteStepEntityImpl> get copyWith =>
      __$$RouteStepEntityImplCopyWithImpl<_$RouteStepEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RouteStepEntity implements RouteStepEntity {
  const factory _RouteStepEntity({
    required final double distanceKm,
    required final double durationMin,
    required final String instruction,
    required final double startLat,
    required final double startLng,
    required final double endLat,
    required final double endLng,
  }) = _$RouteStepEntityImpl;

  @override
  double get distanceKm;
  @override
  double get durationMin;
  @override
  String get instruction;
  @override
  double get startLat;
  @override
  double get startLng;
  @override
  double get endLat;
  @override
  double get endLng;

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteStepEntityImplCopyWith<_$RouteStepEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
