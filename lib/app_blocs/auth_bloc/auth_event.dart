part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authEventInitial() = AuthEventInitial;
  const factory AuthEvent.authEventlogin(
      {required String email, required String password}) = AuthEventLogin;
  const factory AuthEvent.authEventsignUp(
      {required String email, required String password}) = AuthEventSignUp;
  const factory AuthEvent.authEventsignOut() = AuthEventSignOut;
}
