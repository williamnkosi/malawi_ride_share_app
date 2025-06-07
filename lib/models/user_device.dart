enum DevicePlatform {
  android("android"),
  ios("ios");

  final String value;
  const DevicePlatform(this.value);
}

class UserDevice {
  final String firebaseUserId;
  final String fcmToken;
  final DevicePlatform platform;
  final String deviceVersion;

  UserDevice({
    required this.firebaseUserId,
    required this.fcmToken,
    required this.platform,
    required this.deviceVersion,
  });

  Map<String, dynamic> toJson() => {
        "firebaseUserId": firebaseUserId,
        "fcmToken": fcmToken,
        "platform": platform.name, // converts enum to "ANDROID"/"IOS"
        "deviceVersion": deviceVersion,
      };
}
