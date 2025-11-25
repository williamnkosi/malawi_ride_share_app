import 'package:firebase_auth/firebase_auth.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/email_password_params.dart';

class SignInUserUseCase
    implements UseCase<UserCredential, EmailPasswordParams> {
  final AuthRepositoryInterfaces authRepository;

  SignInUserUseCase(this.authRepository);

  @override
  Future<UserCredential> call(EmailPasswordParams params) async {
    return await authRepository.loginInUserWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}
