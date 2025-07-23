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
