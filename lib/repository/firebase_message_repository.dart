import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/models/user_device.dart';

class FirebaseMessageRepository {
  late FirebaseMessaging _firebaseMessaging;
  final logger = Logger('FirebaseMessageRepository');

  Future<Stream<RemoteMessage>> initNotifications() async {
    try {
      _firebaseMessaging = FirebaseMessaging.instance;
      await _firebaseMessaging.requestPermission();
      _firebaseMessaging.getToken().then((value) {
        logger.info('Firebase token: $value /n');
      });

      return FirebaseMessaging.onMessage;
    } catch (e) {
      logger.severe(
          'Error initializing Firebase notifications', e, StackTrace.current);
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
      // Optional test ping

      final response = await http.post(
        Uri.parse('http://192.168.1.211:3000/notifications/register-device'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(device.toJson()),
      );

      logger.info('Registered ${response.statusCode}');
    } catch (e) {
      logger.severe('Error registering device', e, StackTrace.current);
    }
  }
}
