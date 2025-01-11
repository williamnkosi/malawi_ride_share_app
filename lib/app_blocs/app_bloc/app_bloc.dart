import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:malawi_ride_share_app/repository/firebase_message_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/services/locator.dart';
import 'package:web_socket_client/web_socket_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final _fireBaseRepository = getIt<FirebaseRepository>();
  final _firebaseMessagingRepository = getIt<FirebaseMessageRepository>();
  late final FirebaseApp app;
  AppBloc() : super(const AppState()) {
    on<AppEventInitial>(_onIntial);
  }

  _onIntial<AppEventInitial>(event, emit) async {
    app = await _fireBaseRepository.initializeApp();

    await _firebaseMessagingRepository.initNotifications();
    emit(const AppState());
  }
}
