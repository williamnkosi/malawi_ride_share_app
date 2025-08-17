// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDevice _$UserDeviceFromJson(Map<String, dynamic> json) {
  return _UserDevice.fromJson(json);
}

/// @nodoc
mixin _$UserDevice {
  String get fcmToken => throw _privateConstructorUsedError;
  DevicePlatform get platform => throw _privateConstructorUsedError;
  String get deviceVersion => throw _privateConstructorUsedError;

  /// Serializes this UserDevice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDeviceCopyWith<UserDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDeviceCopyWith<$Res> {
  factory $UserDeviceCopyWith(
          UserDevice value, $Res Function(UserDevice) then) =
      _$UserDeviceCopyWithImpl<$Res, UserDevice>;
  @useResult
  $Res call({String fcmToken, DevicePlatform platform, String deviceVersion});
}

/// @nodoc
class _$UserDeviceCopyWithImpl<$Res, $Val extends UserDevice>
    implements $UserDeviceCopyWith<$Res> {
  _$UserDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? platform = null,
    Object? deviceVersion = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as DevicePlatform,
      deviceVersion: null == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDeviceImplCopyWith<$Res>
    implements $UserDeviceCopyWith<$Res> {
  factory _$$UserDeviceImplCopyWith(
          _$UserDeviceImpl value, $Res Function(_$UserDeviceImpl) then) =
      __$$UserDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fcmToken, DevicePlatform platform, String deviceVersion});
}

/// @nodoc
class __$$UserDeviceImplCopyWithImpl<$Res>
    extends _$UserDeviceCopyWithImpl<$Res, _$UserDeviceImpl>
    implements _$$UserDeviceImplCopyWith<$Res> {
  __$$UserDeviceImplCopyWithImpl(
      _$UserDeviceImpl _value, $Res Function(_$UserDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? platform = null,
    Object? deviceVersion = null,
  }) {
    return _then(_$UserDeviceImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as DevicePlatform,
      deviceVersion: null == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDeviceImpl implements _UserDevice {
  const _$UserDeviceImpl(
      {required this.fcmToken,
      required this.platform,
      required this.deviceVersion});

  factory _$UserDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDeviceImplFromJson(json);

  @override
  final String fcmToken;
  @override
  final DevicePlatform platform;
  @override
  final String deviceVersion;

  @override
  String toString() {
    return 'UserDevice(fcmToken: $fcmToken, platform: $platform, deviceVersion: $deviceVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeviceImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.deviceVersion, deviceVersion) ||
                other.deviceVersion == deviceVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fcmToken, platform, deviceVersion);

  /// Create a copy of UserDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeviceImplCopyWith<_$UserDeviceImpl> get copyWith =>
      __$$UserDeviceImplCopyWithImpl<_$UserDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDeviceImplToJson(
      this,
    );
  }
}

abstract class _UserDevice implements UserDevice {
  const factory _UserDevice(
      {required final String fcmToken,
      required final DevicePlatform platform,
      required final String deviceVersion}) = _$UserDeviceImpl;

  factory _UserDevice.fromJson(Map<String, dynamic> json) =
      _$UserDeviceImpl.fromJson;

  @override
  String get fcmToken;
  @override
  DevicePlatform get platform;
  @override
  String get deviceVersion;

  /// Create a copy of UserDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDeviceImplCopyWith<_$UserDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
