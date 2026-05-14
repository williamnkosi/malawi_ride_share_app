import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/auth/data/models/auth_create_user_data_dto.dart';
import 'package:malawi_ride_share_app/features/auth/data/models/auth_user_data.dart';
import 'package:malawi_ride_share_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/shared/custom_exception.dart';

class AuthRepositoryImp implements AuthRepositoryInterfaces {
  final logger = Logger('AuthRepository');
  final ApiService apiService;

  AuthRepositoryImp({required this.apiService});
  @override
  Future<UserCredential> loginInUserWithEmailAndPassword({
    required email,
    required password,
  }) async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return user;
  }

  @override
  Future<UserCredential> signUpUserEmailAndPassword({
    required String email,
    required String password,
  }) async {
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
            'This operation is restricted by the administrator',
          );
        default:
          throw CustomException('Sign up failed: ${e.message}');
      }
    }
  }

  @override
  Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<AuthUserDataEntity> createUserInDatabase({
    required AuthCreateUserDataDto createUserDto,
  }) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        throw CustomException('User not authenticated');
      }

      final dio = Dio();

      logger.info(
        'Creating user in database with firebaseId: ${createUserDto.firebaseId}',
      );
      logger.info('link: ${ApiConstants.baseUrl}${ApiConstants.createUser}');

      final response = await dio.post(
        '${ApiConstants.baseUrl}${ApiConstants.createUser}',
        data: createUserDto.toJson(),
      );

      logger.info('User created in database successfully');
      return AuthUserDataEntity.fromJson(response.data);
    } on DioException catch (e) {
      logger.severe('Dio error creating user: ${e.response?.data}');
      final errorMessage =
          e.response?.data['message'] ?? e.message ?? 'Failed to create user';
      throw CustomException(errorMessage.toString());
    } catch (e) {
      logger.severe('Error creating user in database: $e');
      throw CustomException('Failed to create user: $e');
    }
  }

  @override
  Future<void> createUserData(createUserDto) {
    // TODO: implement createUserData
    throw UnimplementedError();
  }

  @override
  getUserData(String firebaseUserId) {
    // TODO: implement getUserData
    throw UnimplementedError();
  }
}
