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
  AppBloc({required this.fireBaseRepository}) : super(const AppState());
}
