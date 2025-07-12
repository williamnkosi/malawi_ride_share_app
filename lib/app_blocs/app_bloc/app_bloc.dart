import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final FirebaseRepository fireBaseRepository;

  final logger = Logger('AppBloc');
  AppBloc({required this.fireBaseRepository}) : super(const AppState()) {
    on<AppEventInitial>(_onAppEventIntial);
    //on<AppEventStartListening>(_onAppEventStartListening);
    //on<AppEventShowMessage>(_onAppEventShowMessage);
    // on<AppEventHideMessage>(_onAppEventHideMessage);
  }

  _onAppEventIntial(AppEventInitial event, emit) async {
    try {
      // var user = FirebaseAuth.instance.currentUser;
      //await _fireBaseRepository.registerDevice(firebaseUserId: user!.uid);
    } catch (e) {
      logger.severe('Error initializing app', e, StackTrace.current);
    }
  }

  // _onAppEventStartListening(event, emit) async {
  //   var user = FirebaseAuth.instance.currentUser;
  //   await _firebaseMessagingRepository.registerDevice(
  //       firebaseUserId: user!.uid);
  //   // var messageSub = await _firebaseMessagingRepository.initNotifications();
  //   // messageSub.listen((message) {
  //   //   if (message.data.isNotEmpty) {
  //   //     add(AppEventShowMessage(message: message));
  //   //   }
  //   // });
  // }

  // _onAppEventShowMessage(AppEventShowMessage event, emit) async {
  //   print("testing: ${event.message.data}");
  //   print("******");
  //   print(event.message);
  //   print(event.message!.data['body']);
  //   emit(state.copyWith(message: event.message));
  // }

  // _onAppEventHideMessage(AppEventHideMessage event, emit) async {
  //   emit(state.copyWith(message: null));
  // }
}
