import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  Future<User?> getUser() async {
    return FirebaseAuth.instance.currentUser;
  }

  Future<String?> getUserToken() {
    User? user = FirebaseAuth.instance.currentUser;
    print("*******");
    print(user!.getIdToken());
    return user!.getIdToken();
  }

  Future<String> getUserId() async {
    User? user = FirebaseAuth.instance.currentUser;
    return user!.uid;
  }

  Future<void> createUser() async {}
  Future<void> createDriver() async {}
  Future<void> updateUser() async {}
  Future<void> updateDriver() async {}
  Future<void> deleteUser() async {}
}
