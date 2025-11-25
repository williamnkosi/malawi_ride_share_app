import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepositoryInterfaces {
  Future<UserCredential> loginInUserWithEmailAndPassword(
      {required String email, required String password});
  Future<UserCredential> signUpUserEmailAndPassword(
      {required String email, required String password});
  Future<void> signOutUser();
}
