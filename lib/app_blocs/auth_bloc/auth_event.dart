part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

final class AuthBlocStartUp extends AuthEvent {
  const AuthBlocStartUp();
}

final class AuthBlocLogin extends AuthEvent {
  const AuthBlocLogin();
}

final class AuthBlocSignUp extends AuthEvent {
  const AuthBlocSignUp();
}

final class AuthBlocSignOut extends AuthEvent {
  const AuthBlocSignOut();
}
