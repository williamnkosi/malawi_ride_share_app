import 'package:firebase_auth/firebase_auth.dart';
import 'package:malawi_ride_share_app/shared/custom_exception.dart';

class AuthRepository {
  Future<UserCredential> loginInUserWithEmailAndPassword(
      {required email, required password}) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException("No user found for that email");
      } else if (e.code == 'wrong-password') {
        throw CustomException("Wrong password provided for that user");
      }
    } catch (e) {
      throw CustomException("Couldn't complete request");
    }
    throw CustomException("Couldn't complete request");
  }

  Future<UserCredential> signUpUserEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException("The password provided is too weak");
      } else if (e.code == "email-already-in-use") {
        throw CustomException('An account already exists with that email');
      }
    } catch (e) {
      throw CustomException("Couldn't complete request");
    }
    throw CustomException("Unexpected error occurred");
  }

  Future<void> signOutUser() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      throw CustomException("Couldn't complete request");
    }
  }
}
