import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  late final FirebaseApp app;
  late final FirebaseAuth auth;
  AppBloc() : super(const AppState()) {
    on<StartUp>(_onStartUp);
    on<Login>(_onLogin);
    on<SignOut>(_onSignOut);
  }

  _onStartUp(event, emit) async {
    app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    auth = FirebaseAuth.instanceFor(app: app);
  }

  _onLogin(event, emit) {}
  _onSignOut(event, emit) {}
}
