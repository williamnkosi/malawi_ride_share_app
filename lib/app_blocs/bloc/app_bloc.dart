import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppEvent>(_onLogin);
    on<AppEvent>(_onSignOut);
  }

  _onLogin(event, emit) {}
  _onSignOut(event, emit) {}
}
