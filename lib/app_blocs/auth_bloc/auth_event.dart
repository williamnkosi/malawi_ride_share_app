part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = _Initial;
  const factory AuthEvent.login() = _Login;
  const factory AuthEvent.signUp(
      {required String email, required String password}) = _SignUp;
  const factory AuthEvent.signOut() = _SignOut;
}
