import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessageRepository {
  late FirebaseMessaging _firebaseMessaging;

  Future<void> initNotifications() async {
    try {
      _firebaseMessaging = FirebaseMessaging.instance;
      await _firebaseMessaging.requestPermission();
      _firebaseMessaging.getToken().then((token) {
        print('Token: $token');

        FirebaseMessaging.onMessage.listen((RemoteMessage message) {
          if (message.notification != null) {
            print("Notification Message: ${message.notification!.title}");
          } else if (message.data.isNotEmpty) {
            print("Data Message: ${message.data}");
          }
        });
      });
    } catch (e) {
      print("-----");
      print(e);
    }
  }
}
