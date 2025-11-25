import 'package:firebase_auth/firebase_auth.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/email_password_params.dart';

class SignUpUserUseCase
    implements UseCase<UserCredential, EmailPasswordParams> {
  final FirebaseAuthRepositoryImp authRepository;

  SignUpUserUseCase(this.authRepository);
  @override
  Future<UserCredential> call(EmailPasswordParams params) async {
    return await authRepository.signUpUserEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}
