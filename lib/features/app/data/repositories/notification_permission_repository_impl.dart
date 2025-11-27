import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/notification_permission_interface.dart';

class NotificationPermissionRepositoryImpl
    implements NotificationPermissionRepository {
  final logger = Logger('NotificationPermissionRepositoryImpl');
  @override
  Future<bool> isPermissionGranted() async {
    try {
      logger.info('🔔 Checking notification permission status...');

      var firebaseMessaging = FirebaseMessaging.instance;
      final settings = await firebaseMessaging.getNotificationSettings();

      final isGranted =
          settings.authorizationStatus == AuthorizationStatus.authorized;
      logger.info('📱 Notification permission granted: $isGranted');

      return isGranted;
    } catch (e) {
      logger.severe('❌ Error checking notification permission: $e');
      return false;
    }
  }

  @override
  Future<void> openSettings() {
    // TODO: implement openSettings
    throw UnimplementedError();
  }

  @override
  Future<bool> requestPermission() async {
    try {
      logger.info('🔐 Requesting notification permissions...');

      var firebaseMessaging = FirebaseMessaging.instance;
      final settings = await firebaseMessaging.requestPermission(
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
        final token = await firebaseMessaging.getToken();
        logger.info('🔑 Firebase token: $token\n');
      }

      return isGranted;
    } catch (e) {
      logger.severe(
          '❌ Error requesting notification permissions', e, StackTrace.current);
      return false;
    }
  }
}
