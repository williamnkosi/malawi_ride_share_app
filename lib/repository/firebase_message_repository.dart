import 'dart:async';
import 'dart:io';

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
        logger.info(' $_name - Firebase token: $value /n');
      });

      return FirebaseMessaging.onMessage;
    } catch (e) {
      logger.severe('$_name - Error initializing Firebase notifications', e,
          StackTrace.current);
      throw Exception('Failed to initialize notifications');
    }
  }

  Future<void> registerDevice({required firebaseUserId}) async {
    try {
      var phoneFcmToken = await _firebaseMessaging.getToken();
      final device = UserDevice(
        firebaseUserId: firebaseUserId,
        fcmToken: phoneFcmToken!,
        platform:
            Platform.isAndroid ? DevicePlatform.android : DevicePlatform.ios,
        deviceVersion: "1.0.0",
      );
      final response = await dio.post(
        'http://192.168.1.211:3000/notifications/register-device',
        data: device.toJson(),
      );
      print('test: Device registered: ${response.statusCode}');
    } catch (e) {}
  }
}
