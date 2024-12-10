import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late final FirebaseApp app;
  late final FirebaseAuth auth;
  AuthBloc() : super(const AuthState()) {
    on<_Initial>(_onIntial);
    on<_Login>(_onLogin);
    on<_SignUp>(_onsignUp);
    on<_SignOut>(_onSignOut);
  }

  _onIntial(event, emit) async {
    app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    auth = FirebaseAuth.instanceFor(app: app);
  }

  _onLogin(event, emit) {}
  _onsignUp(event, emit) {
    final email = event.email;
    final password = event.password;
    auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  _onSignOut(event, emit) {}
}
