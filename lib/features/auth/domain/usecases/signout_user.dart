import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/auth/domain/repositories/auth_repository.dart';

class SignOutUserUseCase implements UseCase<void, void> {
  final AuthRepositoryInterfaces authRepository;
  SignOutUserUseCase(this.authRepository);

  @override
  Future<void> call(void _) async {
    return await authRepository.signOutUser();
  }
}
