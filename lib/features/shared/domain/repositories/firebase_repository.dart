import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseRepository {
  Future<String?> initializeMessaging();
  Future<String?> getFCMToken();
  Future<String?> getIdToken(); // Firebase Auth ID token for authentication
  Future<User> getCurrentUser();
  String? getFirebaseId();
  Future<void> registerDevice();
}
