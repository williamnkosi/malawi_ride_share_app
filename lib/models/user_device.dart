import 'package:dio/dio.dart';

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

Future<void> sendUserDevice(UserDevice device) async {
  final dio = Dio();

  try {
    final response = await dio.post(
      'http://<YOUR_LOCAL_IP>:3000/user-devices', // replace with actual IP or domain
      data: device.toJson(),
    );

    print('✅ Success: ${response.statusCode}');
  } on DioException catch (e) {
    print('❌ Dio error: ${e.response?.data ?? e.message}');
  } catch (e) {
    print('❌ Unexpected error: $e');
  }
}
