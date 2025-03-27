import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';

final _name = 'FirebaseMessageRepository';

class FirebaseMessageRepository {
  late FirebaseMessaging _firebaseMessaging;
  final Logger logger = Logger(_name);
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
}
