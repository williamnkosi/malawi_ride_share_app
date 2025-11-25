import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/shared/custom_exception.dart';
import 'package:malawi_ride_share_app/shared/dtos/create_user_dto/create_user_dto.dart';

class AuthRepository {
  final logger = Logger('AuthRepository');
  final ApiService apiService;

  AuthRepository({required this.apiService});

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
      } else {
        // Handle other FirebaseAuthException cases
        throw CustomException("Authentication failed: ${e.message}");
      }
    } catch (e) {
      throw CustomException("Couldn't complete request -- $e");
    }
  }

  Future<UserCredential> signUpUserEmailAndPassword(
      {required String email, required String password}) async {
    try {
      logger.info('Attempting to create user with email: $email');

      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      logger.info('User created successfully: ${user.user?.uid}');
      logger.info('User email verified: ${user.user?.emailVerified}');

      return user;
    } on FirebaseAuthException catch (e) {
      logger.severe('FirebaseAuthException: ${e.code} - ${e.message}');

      switch (e.code) {
        case 'weak-password':
          throw CustomException("The password provided is too weak");
        case 'email-already-in-use':
          throw CustomException('An account already exists with that email');
        case 'invalid-email':
          throw CustomException('The email address is not valid');
        case 'operation-not-allowed':
          throw CustomException('Email/password accounts are not enabled');
        case 'admin-restricted-operation':
          throw CustomException(
              'This operation is restricted by the administrator');
        default:
          throw CustomException('Sign up failed: ${e.message}');
      }
    } catch (e) {
      logger.severe('Unexpected error during sign up: $e');
      throw CustomException("Couldn't complete request: $e");
    }
  }

  Future<void> signOutUser() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      throw CustomException("Couldn't complete request");
    }
  }

  Future<Map<String, dynamic>> createUserInDatabase(
      {required CreateUserDto createUserDto}) async {
    try {
      var response = await apiService.post(ApiConstants.createUser,
          body: createUserDto.toJson());

      return response;
    } catch (e) {
      logger.severe('Error retrieving user data: $e');
      throw CustomException("Couldn't complete request");
    }
  }
}
