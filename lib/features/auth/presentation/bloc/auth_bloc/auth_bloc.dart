import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/auth/data/models/auth_user_data.dart';
import 'package:malawi_ride_share_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/email_password_params.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/signout_user.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/signup_user.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/singin_user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Logger _logger = Logger('AuthBloc');

  final SignInUserUseCase signInUserUseCase;
  final SignUpUserUseCase signUpUserUseCase;
  final SignOutUserUseCase signOutUserUseCase;
  final AuthRepositoryImp authRepositoryImp;
  AuthBloc({
    required this.signInUserUseCase,
    required this.signUpUserUseCase,
    required this.signOutUserUseCase,
    required this.authRepositoryImp,
  }) : super(const AuthState.start()) {
    on<AuthEventInitial>(_onIntial);
    on<AuthRiderEventLogin>(_onRiderLogin);
    on<AuthDriverEventLogin>(_onDriverLogin);
    on<AuthEventSignUp>(_onsignUp);
    on<AuthEventSignOut>(_onSignOut);
    on<AuthEventSetToUnauthenticated>(_onSetToUnauthenticated);
    on<AuthEventSetAuthenticated>(_onSetAuthenticated);
    on<AuthEventGetUserData>(_onGetUserData);
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
      var userData = await _getUserDataFromBackend();
      if (userData == null) {
        emit(const AuthState.showUserDetailPage());
        return;
      }

      emit(AuthState.authenticated(userCredential, UserType.rider, userData));
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
      var userData = await _getUserDataFromBackend();
      if (userData == null) {
        emit(const AuthState.showUserDetailPage());
        return;
      }

      emit(AuthState.authenticated(userCredential, UserType.driver, userData));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<AuthUserDataEntity?> _getUserDataFromBackend() async {
    try {
      _logger.info('Fetching authenticated user data from backend');

      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        _logger.warning('Firebase currentUser was null during user data fetch');
        throw Exception('No current Firebase user found');
      }

      final userData = await authRepositoryImp.getUserData(currentUser.uid);

      _logger.info('Backend user data fetched successfully');

      return userData;
    } catch (e) {
      _logger.severe('Error fetching user data from backend: $e');
      return null;
    }
  }

  _onsignUp(AuthEventSignUp event, emit) async {
    final email = event.email;
    final password = event.password;
    try {
      emit(const AuthState.loading());
      var params = EmailPasswordParams(email: email, password: password);
      var userCredential = await signUpUserUseCase(params);
      emit(AuthState.authenticated(userCredential, UserType.driver, null));
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
    emit(AuthState.authenticated(event.userCredential, event.userType, null));
  }

  _onGetUserData(AuthEventGetUserData event, emit) async {
    try {
      _logger.info('Fetching authenticated user data from backend');
      final currentState = state;

      final authData = currentState.maybeMap(
        authenticated: (authenticatedState) => authenticatedState,
        orElse: () => null,
      );

      if (authData == null) {
        _logger.warning('user date does not exist in database');
        throw Exception('User does not exist in database');
      }

      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        _logger.warning('Firebase currentUser was null during user data fetch');
        throw Exception('No current Firebase user found');
      }

      final userData = await _getUserDataFromBackend();
      if (userData == null) {
        emit(const AuthState.showUserDetailPage());
        return;
      }

      _logger.info('Backend user data fetched successfully');

      emit(
        AuthState.authenticated(
          authData.userCredential,
          authData.userType,
          userData,
        ),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
