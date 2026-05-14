import 'package:firebase_auth/firebase_auth.dart';
import 'package:malawi_ride_share_app/features/auth/data/models/auth_user_data.dart';
import '../data/models/auth_user_data.dart';

abstract class AuthRepositoryInterfaces {
  Future<UserCredential> loginInUserWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<UserCredential> signUpUserEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> signOutUser();
  Future<AuthUserDataEntity> getUserData(String firebaseUserId);
  Future<void> createUserData(CreateUserDto createUserDto);
}
