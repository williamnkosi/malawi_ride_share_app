import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/auth/data/models/auth_create_user_data_dto.dart';
import 'package:malawi_ride_share_app/features/auth/data/models/auth_user_data.dart';
import 'package:malawi_ride_share_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/email_password_params.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/signup_user.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/pages/signup_user_page/signup_user_page.dart';
import 'package:equatable/equatable.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final Logger _logger = Logger('SignUpCubit');
  final SignUpUserUseCase signUpUserUseCase;
  final AuthRepositoryImp authRepositoryImp;

  SignUpCubit({
    required this.signUpUserUseCase,
    required this.authRepositoryImp,
  }) : super(const SignUpState());

  Future<void> signUp({
    required String email,
    required String password,
    required UserType userType,
  }) async {
    try {
      emit(state.copyWith(status: SignUpStatus.loading));
      var params = EmailPasswordParams(email: email, password: password);
      var userCredential = await signUpUserUseCase(params);
      emit(
        state.copyWith(
          status: SignUpStatus.success,
          userCredential: userCredential,
          userType: userType,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: SignUpStatus.error, error: e.toString()));
    }
  }

  Future<void> updateUserData({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required Gender gender,
    required DateTime dateOfBirth,
    required UserCredential userCredential,
    required UserType userType,
  }) async {
    try {
      emit(state.copyWith(status: SignUpStatus.loading));
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        throw Exception('No current Firebase user found');
      }

      final createUserDto = AuthCreateUserDataDto(
        firebaseId: currentUser.uid,
        firstName: firstName,
        lastName: lastName,
        email: currentUser.email ?? '',
        phoneNumber: phoneNumber,
        gender: gender.name.toLowerCase(),
        dateOfBirth: dateOfBirth.toString(),
      );

      await authRepositoryImp.createUserInDatabase(
        createUserDto: createUserDto,
      );

      final userData = await _getUserDataFromBackend();
      emit(
        state.copyWith(status: SignUpStatus.success, authUserData: userData),
      );
    } catch (e) {
      _logger.severe('Error updating user data: $e');
      emit(state.copyWith(status: SignUpStatus.error, error: e.toString()));
    }
  }

  Future<AuthUserDataEntity?> _getUserDataFromBackend() async {
    try {
      _logger.info('Fetching user data from backend');
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        _logger.warning('Firebase currentUser was null during user data fetch');
        throw Exception('No current Firebase user found');
      }

      final userData = await authRepositoryImp.getUserData(currentUser.uid);
      _logger.info('Backend user data fetched successfully');
      return userData;
    } catch (e) {
      _logger.severe('Error fetching user data from backend: $e');
      return null;
    }
  }
}
