import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_bottom_sheet.dart';

class FirebaseMessageRepository {
  late FirebaseMessaging _firebaseMessaging;

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
}
