import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _authRepository = getIt<AuthRepository>();
  late final FirebaseApp app;
  late final FirebaseAuth auth;
  AuthBloc() : super(const AuthState.start()) {
    on<AuthEventInitial>(_onIntial);
    on<AuthEventLogin>(_onLogin);
    on<AuthEventSignUp>(_onsignUp);
    on<AuthEventSignOut>(_onSignOut);
  }

  _onIntial(event, emit) async {
    app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    auth = FirebaseAuth.instanceFor(app: app);
    emit(const AuthState.unauthenticated());
  }

  _onLogin(event, emit) {}
  _onsignUp(AuthEventSignUp event, emit) async {
    final email = event.email;
    final password = event.password;
    try {
      emit(const AuthState.loading());
      UserCredential userCredential = await _authRepository
          .signUpUserEmailAndPassword(email: email, password: password);
      emit(AuthState.authenticated(userCredential));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  _onSignOut(event, emit) {}
}
