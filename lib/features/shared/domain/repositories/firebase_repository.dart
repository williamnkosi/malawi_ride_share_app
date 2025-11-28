import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseRepository {
  Future<String?> initializeMessaging();
  Future<String?> getFCMToken();
  Future<User> getCurrentUser();
  String? getFirebaseId();
  Future<void> registerDevice();
}
