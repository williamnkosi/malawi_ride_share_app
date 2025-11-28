import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/models/user_device.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';

class FirebaseRepositoryImpl implements FirebaseRepository {
  late FirebaseMessaging _firebaseMessaging;
  final logger = Logger('FirebaseRepository');
  final ApiService apiService;
  FirebaseRepositoryImpl({required this.apiService});
  FirebaseApp get app => Firebase.app();

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

  @override
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

  @override
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

  @override
  String? getFirebaseId() {
    return FirebaseAuth.instanceFor(app: app).currentUser?.uid;
  }

  @override
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

  @override
  Future<void> registerDevice() async {
    try {
      final firebaseUserId = (await getCurrentUser()).uid;
      logger.info('📱 Registering device for user: $firebaseUserId');

      var phoneFcmToken = await getFCMToken();
      if (phoneFcmToken == null) {
        throw Exception('Failed to get FCM token');
      }

      final device = UserDevice(
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
}
