import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/shared/custom_exception.dart';
import 'package:malawi_ride_share_app/shared/dtos/create_user_dto/create_user_dto.dart';

class AuthRepository implements FirebaseAuthRepositoryInterfaces {
  final logger = Logger('AuthRepository');
  final ApiService apiService;

  AuthRepository({required this.apiService});

  @override
  Future<UserCredential> loginInUserWithEmailAndPassword(
      {required email, required password}) async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return user;
  }

  @override
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
    }
  }

  @override
  Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<Map<String, dynamic>> createUserInDatabase(
      {required CreateUserDto createUserDto}) async {
    var response = await apiService.post(ApiConstants.createUser,
        body: createUserDto.toJson());

    return response;
  }
}
