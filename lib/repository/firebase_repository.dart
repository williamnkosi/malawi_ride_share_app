import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'dart:async';
import 'dart:io';
import 'package:malawi_ride_share_app/models/user_device.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';

final _name = 'FirebaseRepository';

class FirebaseRepository {
  late FirebaseMessaging _firebaseMessaging;
  final logger = Logger('FirebaseRepository');
  final ApiService apiService;
  FirebaseRepository({required this.apiService});

  FirebaseApp get app => Firebase.app();

  void initializeAuth() {
    try {
      FirebaseAuth.instanceFor(app: app);
    } catch (e) {
      logger.severe(
          "$_name - Error initializing Firebase Auth", e, StackTrace.current);
      rethrow;
    }
  }

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

      // var response = GetIt.instance<ApiService>()
      //     .post('/notifications/register-device', body: device.toJson());

      // logger.info('Registered ${response.toString()}');
    } catch (e) {
      logger.severe('Error registering device', e, StackTrace.current);
    }
  }
}
