import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessageRepository {
  late FirebaseMessaging _firebaseMessaging;

  Future<void> initNotifications() async {
    _firebaseMessaging = FirebaseMessaging.instance;
    await _firebaseMessaging.requestPermission();
    _firebaseMessaging.getToken().then((token) {
      print('Token: $token');
    });
  }
}
