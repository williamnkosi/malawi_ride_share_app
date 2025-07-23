part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authEventInitial() = AuthEventInitial;
  const factory AuthEvent.authRiderEventlogin({
    required String email,
    required String password,
  }) = AuthRiderEventLogin;
  const factory AuthEvent.authEventDriverlogin({
    required String email,
    required String password,
  }) = AuthDriverEventLogin;
  const factory AuthEvent.authEventsignUp(
      {required String email, required String password}) = AuthEventSignUp;
  const factory AuthEvent.authEventsignOut() = AuthEventSignOut;
  const factory AuthEvent.authEventSetToUnauthenticated() =
      AuthEventSetToUnauthenticated;
  const factory AuthEvent.authEventSetAuthenticated({
    required UserCredential userCredential,
    required UserType userType,
  }) = AuthEventSetAuthenticated;
}
