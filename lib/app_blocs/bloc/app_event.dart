part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

final class StartUp extends AppEvent {
  const StartUp();
}

final class Login extends AppEvent {
  const Login();
}

final class SignOut extends AppEvent {
  const SignOut();
}

final class RequestLocationPermission extends AppEvent {}
