import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_device.freezed.dart';
part 'user_device.g.dart';

enum DevicePlatform {
  android("android"),
  ios("ios");

  final String value;
  const DevicePlatform(this.value);
}

@freezed
class UserDevice with _$UserDevice {
  const factory UserDevice({
    required String fcmToken,
    required DevicePlatform platform,
    required String deviceVersion,
  }) = _UserDevice;

  factory UserDevice.fromJson(Map<String, dynamic> json) =>
      _$UserDeviceFromJson(json);
}
