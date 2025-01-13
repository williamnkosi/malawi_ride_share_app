import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/repository/firebase_message_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/services/locator.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_bottom_sheet.dart';
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
    on<AppEventInitial>(_onAppEventIntial);
    on<AppEventStartListening>(_onAppEventStartListening);
    on<AppEventShowMessage>(_onAppEventShowMessage);
    on<AppEventHideMessage>(_onAppEventHideMessage);
  }

  _onAppEventIntial(AppEventInitial event, emit) async {
    try {
      app = await _fireBaseRepository.initializeApp();
    } catch (e) {
      emit();
    }
  }

  _onAppEventStartListening(event, emit) async {
    var messageSub = await _firebaseMessagingRepository.initNotifications();
    messageSub.listen((message) {
      if (message.data.isNotEmpty) {
        add(AppEventShowMessage(message: message));
      }
    });
  }

  _onAppEventShowMessage(AppEventShowMessage event, emit) async {
    emit(state.copyWith(message: event.message));
  }

  _onAppEventHideMessage(AppEventHideMessage event, emit) async {
    emit(state.copyWith(message: null));
  }
}
