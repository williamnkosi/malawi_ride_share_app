// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState1 {
  dynamic get currentLocation => throw _privateConstructorUsedError;
  bool get isPermissionEnabled => throw _privateConstructorUsedError;
  Map<PolylineId, Polyline>? get polyLine => throw _privateConstructorUsedError;

  /// Create a copy of HomePageState1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageState1CopyWith<HomePageState1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageState1CopyWith<$Res> {
  factory $HomePageState1CopyWith(
          HomePageState1 value, $Res Function(HomePageState1) then) =
      _$HomePageState1CopyWithImpl<$Res, HomePageState1>;
  @useResult
  $Res call(
      {dynamic currentLocation,
      bool isPermissionEnabled,
      Map<PolylineId, Polyline>? polyLine});
}

/// @nodoc
class _$HomePageState1CopyWithImpl<$Res, $Val extends HomePageState1>
    implements $HomePageState1CopyWith<$Res> {
  _$HomePageState1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageState1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? isPermissionEnabled = null,
    Object? polyLine = freezed,
  }) {
    return _then(_value.copyWith(
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPermissionEnabled: null == isPermissionEnabled
          ? _value.isPermissionEnabled
          : isPermissionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      polyLine: freezed == polyLine
          ? _value.polyLine
          : polyLine // ignore: cast_nullable_to_non_nullable
              as Map<PolylineId, Polyline>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageState1ImplCopyWith<$Res>
    implements $HomePageState1CopyWith<$Res> {
  factory _$$HomePageState1ImplCopyWith(_$HomePageState1Impl value,
          $Res Function(_$HomePageState1Impl) then) =
      __$$HomePageState1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic currentLocation,
      bool isPermissionEnabled,
      Map<PolylineId, Polyline>? polyLine});
}

/// @nodoc
class __$$HomePageState1ImplCopyWithImpl<$Res>
    extends _$HomePageState1CopyWithImpl<$Res, _$HomePageState1Impl>
    implements _$$HomePageState1ImplCopyWith<$Res> {
  __$$HomePageState1ImplCopyWithImpl(
      _$HomePageState1Impl _value, $Res Function(_$HomePageState1Impl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? isPermissionEnabled = null,
    Object? polyLine = freezed,
  }) {
    return _then(_$HomePageState1Impl(
      currentLocation: freezed == currentLocation
          ? _value.currentLocation!
          : currentLocation,
      isPermissionEnabled: null == isPermissionEnabled
          ? _value.isPermissionEnabled
          : isPermissionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      polyLine: freezed == polyLine
          ? _value._polyLine
          : polyLine // ignore: cast_nullable_to_non_nullable
              as Map<PolylineId, Polyline>?,
    ));
  }
}

/// @nodoc

class _$HomePageState1Impl implements _HomePageState1 {
  const _$HomePageState1Impl(
      {this.currentLocation = const LatLng(37.4223, -122.0848),
      this.isPermissionEnabled = false,
      final Map<PolylineId, Polyline>? polyLine = const {}})
      : _polyLine = polyLine;

  @override
  @JsonKey()
  final dynamic currentLocation;
  @override
  @JsonKey()
  final bool isPermissionEnabled;
  final Map<PolylineId, Polyline>? _polyLine;
  @override
  @JsonKey()
  Map<PolylineId, Polyline>? get polyLine {
    final value = _polyLine;
    if (value == null) return null;
    if (_polyLine is EqualUnmodifiableMapView) return _polyLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HomePageState1(currentLocation: $currentLocation, isPermissionEnabled: $isPermissionEnabled, polyLine: $polyLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageState1Impl &&
            const DeepCollectionEquality()
                .equals(other.currentLocation, currentLocation) &&
            (identical(other.isPermissionEnabled, isPermissionEnabled) ||
                other.isPermissionEnabled == isPermissionEnabled) &&
            const DeepCollectionEquality().equals(other._polyLine, _polyLine));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentLocation),
      isPermissionEnabled,
      const DeepCollectionEquality().hash(_polyLine));

  /// Create a copy of HomePageState1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageState1ImplCopyWith<_$HomePageState1Impl> get copyWith =>
      __$$HomePageState1ImplCopyWithImpl<_$HomePageState1Impl>(
          this, _$identity);
}

abstract class _HomePageState1 implements HomePageState1 {
  const factory _HomePageState1(
      {final dynamic currentLocation,
      final bool isPermissionEnabled,
      final Map<PolylineId, Polyline>? polyLine}) = _$HomePageState1Impl;

  @override
  dynamic get currentLocation;
  @override
  bool get isPermissionEnabled;
  @override
  Map<PolylineId, Polyline>? get polyLine;

  /// Create a copy of HomePageState1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageState1ImplCopyWith<_$HomePageState1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
