// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_trip_route.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverTripRouteDto _$DriverTripRouteDtoFromJson(Map<String, dynamic> json) {
  return _DriverTripRouteDto.fromJson(json);
}

/// @nodoc
mixin _$DriverTripRouteDto {
  double get distanceKm => throw _privateConstructorUsedError;
  double get durationMin => throw _privateConstructorUsedError;
  String get polylineEncoded => throw _privateConstructorUsedError;
  RoutesStepsDto get routesStepsDto => throw _privateConstructorUsedError;

  /// Serializes this DriverTripRouteDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverTripRouteDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverTripRouteDtoCopyWith<DriverTripRouteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTripRouteDtoCopyWith<$Res> {
  factory $DriverTripRouteDtoCopyWith(
    DriverTripRouteDto value,
    $Res Function(DriverTripRouteDto) then,
  ) = _$DriverTripRouteDtoCopyWithImpl<$Res, DriverTripRouteDto>;
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String polylineEncoded,
    RoutesStepsDto routesStepsDto,
  });

  $RoutesStepsDtoCopyWith<$Res> get routesStepsDto;
}

/// @nodoc
class _$DriverTripRouteDtoCopyWithImpl<$Res, $Val extends DriverTripRouteDto>
    implements $DriverTripRouteDtoCopyWith<$Res> {
  _$DriverTripRouteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTripRouteDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? polylineEncoded = null,
    Object? routesStepsDto = null,
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
            polylineEncoded:
                null == polylineEncoded
                    ? _value.polylineEncoded
                    : polylineEncoded // ignore: cast_nullable_to_non_nullable
                        as String,
            routesStepsDto:
                null == routesStepsDto
                    ? _value.routesStepsDto
                    : routesStepsDto // ignore: cast_nullable_to_non_nullable
                        as RoutesStepsDto,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverTripRouteDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutesStepsDtoCopyWith<$Res> get routesStepsDto {
    return $RoutesStepsDtoCopyWith<$Res>(_value.routesStepsDto, (value) {
      return _then(_value.copyWith(routesStepsDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverTripRouteDtoImplCopyWith<$Res>
    implements $DriverTripRouteDtoCopyWith<$Res> {
  factory _$$DriverTripRouteDtoImplCopyWith(
    _$DriverTripRouteDtoImpl value,
    $Res Function(_$DriverTripRouteDtoImpl) then,
  ) = __$$DriverTripRouteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String polylineEncoded,
    RoutesStepsDto routesStepsDto,
  });

  @override
  $RoutesStepsDtoCopyWith<$Res> get routesStepsDto;
}

/// @nodoc
class __$$DriverTripRouteDtoImplCopyWithImpl<$Res>
    extends _$DriverTripRouteDtoCopyWithImpl<$Res, _$DriverTripRouteDtoImpl>
    implements _$$DriverTripRouteDtoImplCopyWith<$Res> {
  __$$DriverTripRouteDtoImplCopyWithImpl(
    _$DriverTripRouteDtoImpl _value,
    $Res Function(_$DriverTripRouteDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripRouteDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? polylineEncoded = null,
    Object? routesStepsDto = null,
  }) {
    return _then(
      _$DriverTripRouteDtoImpl(
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
        polylineEncoded:
            null == polylineEncoded
                ? _value.polylineEncoded
                : polylineEncoded // ignore: cast_nullable_to_non_nullable
                    as String,
        routesStepsDto:
            null == routesStepsDto
                ? _value.routesStepsDto
                : routesStepsDto // ignore: cast_nullable_to_non_nullable
                    as RoutesStepsDto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverTripRouteDtoImpl extends _DriverTripRouteDto {
  const _$DriverTripRouteDtoImpl({
    required this.distanceKm,
    required this.durationMin,
    required this.polylineEncoded,
    required this.routesStepsDto,
  }) : super._();

  factory _$DriverTripRouteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverTripRouteDtoImplFromJson(json);

  @override
  final double distanceKm;
  @override
  final double durationMin;
  @override
  final String polylineEncoded;
  @override
  final RoutesStepsDto routesStepsDto;

  @override
  String toString() {
    return 'DriverTripRouteDto(distanceKm: $distanceKm, durationMin: $durationMin, polylineEncoded: $polylineEncoded, routesStepsDto: $routesStepsDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripRouteDtoImpl &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationMin, durationMin) ||
                other.durationMin == durationMin) &&
            (identical(other.polylineEncoded, polylineEncoded) ||
                other.polylineEncoded == polylineEncoded) &&
            (identical(other.routesStepsDto, routesStepsDto) ||
                other.routesStepsDto == routesStepsDto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    distanceKm,
    durationMin,
    polylineEncoded,
    routesStepsDto,
  );

  /// Create a copy of DriverTripRouteDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripRouteDtoImplCopyWith<_$DriverTripRouteDtoImpl> get copyWith =>
      __$$DriverTripRouteDtoImplCopyWithImpl<_$DriverTripRouteDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverTripRouteDtoImplToJson(this);
  }
}

abstract class _DriverTripRouteDto extends DriverTripRouteDto {
  const factory _DriverTripRouteDto({
    required final double distanceKm,
    required final double durationMin,
    required final String polylineEncoded,
    required final RoutesStepsDto routesStepsDto,
  }) = _$DriverTripRouteDtoImpl;
  const _DriverTripRouteDto._() : super._();

  factory _DriverTripRouteDto.fromJson(Map<String, dynamic> json) =
      _$DriverTripRouteDtoImpl.fromJson;

  @override
  double get distanceKm;
  @override
  double get durationMin;
  @override
  String get polylineEncoded;
  @override
  RoutesStepsDto get routesStepsDto;

  /// Create a copy of DriverTripRouteDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripRouteDtoImplCopyWith<_$DriverTripRouteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
