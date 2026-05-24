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
  const factory AuthEvent.authEventsignUp({
    required String email,
    required String password,
    required UserType userType,
  }) = AuthEventSignUp;
  const factory AuthEvent.authEventsignOut() = AuthEventSignOut;
  const factory AuthEvent.authEventSetToUnauthenticated() =
      AuthEventSetToUnauthenticated;
  const factory AuthEvent.authEventSetAuthenticated({
    required UserCredential userCredential,
    required UserType userType,
  }) = AuthEventSetAuthenticated;
  const factory AuthEvent.authGetUserData() = AuthEventGetUserData;
  const factory AuthEvent.authUpdateUserData({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required Gender gender,
    required DateTime dateOfBirth,
  }) = AuthEventUpdateUserData;

  const factory AuthEvent.authSuccess({
    required UserCredential userCredential,
    required UserType userType,
    AuthUserDataEntity? authUserData,
  }) = AuthEventAuthSuccess;
}
