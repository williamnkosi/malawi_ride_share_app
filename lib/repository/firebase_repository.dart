import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'dart:async';
import 'dart:io';
import 'package:malawi_ride_share_app/models/user_device.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';

class FirebaseRepository {
  late FirebaseMessaging _firebaseMessaging;
  final logger = Logger('FirebaseRepository');
  final ApiService apiService;
  FirebaseRepository({required this.apiService});

  FirebaseApp get app => Firebase.app();

  /// Check if notification permission is granted
  Future<bool> isNotificationPermissionGranted() async {
    try {
      logger.info('🔔 Checking notification permission status...');

      _firebaseMessaging = FirebaseMessaging.instance;
      final settings = await _firebaseMessaging.getNotificationSettings();

      final isGranted =
          settings.authorizationStatus == AuthorizationStatus.authorized;
      logger.info('📱 Notification permission granted: $isGranted');

      return isGranted;
    } catch (e) {
      logger.severe('❌ Error checking notification permission: $e');
      return false;
    }
  }

  /// Request notification permissions
  Future<bool> requestNotificationPermissions() async {
    try {
      logger.info('🔐 Requesting notification permissions...');

      _firebaseMessaging = FirebaseMessaging.instance;
      final settings = await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      final isGranted =
          settings.authorizationStatus == AuthorizationStatus.authorized;
      logger.info('✅ Notification permission granted: $isGranted');

      if (isGranted) {
        final token = await _firebaseMessaging.getToken();
        logger.info('🔑 Firebase token: $token\n');
      }

      return isGranted;
    } catch (e) {
      logger.severe(
          '❌ Error requesting notification permissions', e, StackTrace.current);
      return false;
    }
  }

  /// Get the stream of incoming messages
  Stream<RemoteMessage> get messageStream {
    logger.info('👂 Getting message stream...');
    return FirebaseMessaging.onMessage;
  }

  /// Get the stream of messages when app is opened from notification
  Stream<RemoteMessage> get messageOpenedAppStream {
    logger.info('👂 Getting message opened app stream...');
    return FirebaseMessaging.onMessageOpenedApp;
  }

  /// Initialize Firebase messaging and get FCM token
  Future<String?> initializeMessaging() async {
    try {
      logger.info('🚀 Initializing Firebase messaging...');

      _firebaseMessaging = FirebaseMessaging.instance;
      final token = await _firebaseMessaging.getToken();

      if (token != null) {
        logger.info('🔑 FCM Token obtained: ${token.substring(0, 20)}...');
      } else {
        logger.warning('⚠️ Failed to get FCM token');
      }

      return token;
    } catch (e) {
      logger.severe(
          '❌ Error initializing Firebase messaging', e, StackTrace.current);
      return null;
    }
  }

  /// Get current FCM token
  Future<String?> getFCMToken() async {
    try {
      final token = await _firebaseMessaging.getToken();
      logger.info('🔑 Current FCM token: ${token?.substring(0, 20)}...');
      return token;
    } catch (e) {
      logger.severe('❌ Error getting FCM token', e, StackTrace.current);
      return null;
    }
  }

  Future<void> registerDevice({required firebaseUserId}) async {
    try {
      logger.info('📱 Registering device for user: $firebaseUserId');

      var phoneFcmToken = await getFCMToken();
      if (phoneFcmToken == null) {
        throw Exception('Failed to get FCM token');
      }

      final device = UserDevice(
        firebaseUserId: firebaseUserId,
        fcmToken: phoneFcmToken,
        platform:
            Platform.isAndroid ? DevicePlatform.android : DevicePlatform.ios,
        deviceVersion: "1.0.0",
      );

      await apiService.post(ApiConstants.registerDevice, body: device.toJson());
      logger.info('✅ Device registered successfully');
    } catch (e) {
      logger.severe('❌ Error registering device', e, StackTrace.current);
      rethrow;
    }
  }

  Future<User> getCurrentUser() async {
    try {
      final user = FirebaseAuth.instanceFor(app: app).currentUser;
      if (user == null) {
        throw Exception('No user is currently signed in');
      }
      return user;
    } catch (e) {
      logger.severe('Error getting current user', e, StackTrace.current);
      throw Exception('Failed to get current user');
    }
  }
}
