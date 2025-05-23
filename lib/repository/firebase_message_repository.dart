import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:malawi_ride_share_app/models/user_device.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_bottom_sheet.dart';

class FirebaseMessageRepository {
  late FirebaseMessaging _firebaseMessaging;
  final dio = Dio();

  Future<Stream<RemoteMessage>> initNotifications() async {
    try {
      _firebaseMessaging = FirebaseMessaging.instance;
      await _firebaseMessaging.requestPermission();
      _firebaseMessaging.getToken().then((value) {
        print('Token: $value');
      });
      return FirebaseMessaging.onMessage;
    } catch (e) {
      print("-----");
      print(e);
      throw Exception('Failed to initialize notifications');
    }
  }

  Future<void> registerDevice({required firebaseUserId}) async {
    try {
      var phoneFcmToken = await _firebaseMessaging.getToken();
      final device = UserDevice(
        firebaseUserId: firebaseUserId,
        fcmToken: phoneFcmToken!,
        platform: DevicePlatform.android,
        deviceVersion: "1.0.0",
      );
      final response = await dio.get(
          'http://192.168.1.211:3000/notifications/register-device',
          queryParameters: {
            'deviceId': '1234567890',
            'deviceType': 'android',
            'token': await _firebaseMessaging.getToken(),
          });
    } catch (e) {}
  }
}
