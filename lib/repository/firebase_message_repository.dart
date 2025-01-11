import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessageRepository {
  late FirebaseMessaging _firebaseMessaging;

  Future<StreamSubscription<RemoteMessage>> initNotifications() async {
    try {
      _firebaseMessaging = FirebaseMessaging.instance;
      await _firebaseMessaging.requestPermission();
      return FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print('Message received: ${message.messageId}');
      });
    } catch (e) {
      print("-----");
      print(e);
      throw Exception('Failed to initialize notifications');
    }
  }
}
