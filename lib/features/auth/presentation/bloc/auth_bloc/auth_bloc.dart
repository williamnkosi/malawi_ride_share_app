import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/email_password_params.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/signout_user.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/signup_user.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/singin_user.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Logger _logger = Logger('AuthBloc');

  final SignInUserUseCase signInUserUseCase;
  final SignUpUserUseCase signUpUserUseCase;
  final SignOutUserUseCase signOutUserUseCase;
  AuthBloc(
      {required this.signInUserUseCase,
      required this.signUpUserUseCase,
      required this.signOutUserUseCase})
      : super(const AuthState.start()) {
    on<AuthEventInitial>(_onIntial);
    on<AuthRiderEventLogin>(_onRiderLogin);
    on<AuthDriverEventLogin>(_onDriverLogin);
    on<AuthEventSignUp>(_onsignUp);
    on<AuthEventSignOut>(_onSignOut);
    on<AuthEventSetToUnauthenticated>(_onSetToUnauthenticated);
    on<AuthEventSetAuthenticated>(_onSetAuthenticated);
  }

  _onIntial(event, emit) async {
    try {
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  _onRiderLogin(AuthRiderEventLogin event, emit) async {
    final email = event.email;
    final password = event.password;
    try {
      emit(const AuthState.loading());
      var params = EmailPasswordParams(email: email, password: password);
      var userCredential = await signInUserUseCase(params);
      emit(AuthState.authenticated(userCredential, UserType.rider));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  _onDriverLogin(AuthDriverEventLogin event, emit) async {
    final email = event.email;
    final password = event.password;
    try {
      emit(const AuthState.loading());
      var params = EmailPasswordParams(email: email, password: password);
      var userCredential = await signInUserUseCase(params);
      emit(AuthState.authenticated(userCredential, UserType.driver));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  _onsignUp(AuthEventSignUp event, emit) async {
    final email = event.email;
    final password = event.password;
    try {
      emit(const AuthState.loading());
      var params = EmailPasswordParams(email: email, password: password);
      var userCredential = await signUpUserUseCase(params);
      emit(AuthState.authenticated(userCredential, UserType.driver));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  _onSignOut(event, emit) async {
    try {
      emit(const AuthState.loading());
      await signOutUserUseCase(null);
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  _onSetToUnauthenticated(event, emit) {
    emit(const AuthState.unauthenticated());
  }

  _onSetAuthenticated(AuthEventSetAuthenticated event, emit) {
    emit(AuthState.authenticated(event.userCredential, event.userType));
  }
}
