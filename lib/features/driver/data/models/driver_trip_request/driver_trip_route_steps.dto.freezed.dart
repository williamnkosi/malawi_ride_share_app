// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_trip_route_steps.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RoutesStepsDto _$RoutesStepsDtoFromJson(Map<String, dynamic> json) {
  return _RoutesStepsDto.fromJson(json);
}

/// @nodoc
mixin _$RoutesStepsDto {
  double get distanceKm => throw _privateConstructorUsedError;
  double get durationMin => throw _privateConstructorUsedError;
  String get instruction => throw _privateConstructorUsedError;
  String get polylineEncoded => throw _privateConstructorUsedError;

  /// Serializes this RoutesStepsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutesStepsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutesStepsDtoCopyWith<RoutesStepsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesStepsDtoCopyWith<$Res> {
  factory $RoutesStepsDtoCopyWith(
    RoutesStepsDto value,
    $Res Function(RoutesStepsDto) then,
  ) = _$RoutesStepsDtoCopyWithImpl<$Res, RoutesStepsDto>;
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String instruction,
    String polylineEncoded,
  });
}

/// @nodoc
class _$RoutesStepsDtoCopyWithImpl<$Res, $Val extends RoutesStepsDto>
    implements $RoutesStepsDtoCopyWith<$Res> {
  _$RoutesStepsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutesStepsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? instruction = null,
    Object? polylineEncoded = null,
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
            polylineEncoded:
                null == polylineEncoded
                    ? _value.polylineEncoded
                    : polylineEncoded // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoutesStepsDtoImplCopyWith<$Res>
    implements $RoutesStepsDtoCopyWith<$Res> {
  factory _$$RoutesStepsDtoImplCopyWith(
    _$RoutesStepsDtoImpl value,
    $Res Function(_$RoutesStepsDtoImpl) then,
  ) = __$$RoutesStepsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double distanceKm,
    double durationMin,
    String instruction,
    String polylineEncoded,
  });
}

/// @nodoc
class __$$RoutesStepsDtoImplCopyWithImpl<$Res>
    extends _$RoutesStepsDtoCopyWithImpl<$Res, _$RoutesStepsDtoImpl>
    implements _$$RoutesStepsDtoImplCopyWith<$Res> {
  __$$RoutesStepsDtoImplCopyWithImpl(
    _$RoutesStepsDtoImpl _value,
    $Res Function(_$RoutesStepsDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoutesStepsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceKm = null,
    Object? durationMin = null,
    Object? instruction = null,
    Object? polylineEncoded = null,
  }) {
    return _then(
      _$RoutesStepsDtoImpl(
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
        polylineEncoded:
            null == polylineEncoded
                ? _value.polylineEncoded
                : polylineEncoded // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutesStepsDtoImpl extends _RoutesStepsDto {
  const _$RoutesStepsDtoImpl({
    required this.distanceKm,
    required this.durationMin,
    required this.instruction,
    required this.polylineEncoded,
  }) : super._();

  factory _$RoutesStepsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutesStepsDtoImplFromJson(json);

  @override
  final double distanceKm;
  @override
  final double durationMin;
  @override
  final String instruction;
  @override
  final String polylineEncoded;

  @override
  String toString() {
    return 'RoutesStepsDto(distanceKm: $distanceKm, durationMin: $durationMin, instruction: $instruction, polylineEncoded: $polylineEncoded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutesStepsDtoImpl &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationMin, durationMin) ||
                other.durationMin == durationMin) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.polylineEncoded, polylineEncoded) ||
                other.polylineEncoded == polylineEncoded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    distanceKm,
    durationMin,
    instruction,
    polylineEncoded,
  );

  /// Create a copy of RoutesStepsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutesStepsDtoImplCopyWith<_$RoutesStepsDtoImpl> get copyWith =>
      __$$RoutesStepsDtoImplCopyWithImpl<_$RoutesStepsDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutesStepsDtoImplToJson(this);
  }
}

abstract class _RoutesStepsDto extends RoutesStepsDto {
  const factory _RoutesStepsDto({
    required final double distanceKm,
    required final double durationMin,
    required final String instruction,
    required final String polylineEncoded,
  }) = _$RoutesStepsDtoImpl;
  const _RoutesStepsDto._() : super._();

  factory _RoutesStepsDto.fromJson(Map<String, dynamic> json) =
      _$RoutesStepsDtoImpl.fromJson;

  @override
  double get distanceKm;
  @override
  double get durationMin;
  @override
  String get instruction;
  @override
  String get polylineEncoded;

  /// Create a copy of RoutesStepsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutesStepsDtoImplCopyWith<_$RoutesStepsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
