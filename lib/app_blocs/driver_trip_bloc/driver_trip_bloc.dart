import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_request.dart';
import 'package:malawi_ride_share_app/repository/firebase_message_repository.dart';

part 'driver_trip_event.dart';
part 'driver_trip_state.dart';
part 'driver_trip_bloc.freezed.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  final DriverTripRepository driverTripRepository =
      GetIt.instance<DriverTripRepository>();
  final FirebaseMessageRepository _firebaseMessagingRepository =
      GetIt.instance<FirebaseMessageRepository>();
  final logger = Logger('DriverTripBloc');
  final user = FirebaseAuth.instance.currentUser;
  DriverTripBloc() : super(const DriverTripState()) {
    on<DriverTripIntial>(_onTripIntial);
    on<DriverTripStartTrackingDriver>(_onTripStartTrackingDriver);
    on<DriverTripRequestReceived>(_onTripRequestReceived);
    // on<DriverTripAccepted>(_onTripAccepted);
    // on<DriverTripRejected>(_onTripRejected);

    // on<DriverTripCompleted>(_onTripCompleted);
  }

  void _onTripIntial(
      DriverTripIntial event, Emitter<DriverTripState> emit) async {
    try {
      logger.info('Initializing trip...');
      var user = FirebaseAuth.instance.currentUser;
      await _firebaseMessagingRepository.registerDevice(
          firebaseUserId: user!.uid);
      FirebaseMessaging.onMessage.listen((message) {
        if (message.data.isNotEmpty) {
          add(DriverTripRequestReceived(message: message));
        }
      });
    } catch (e) {
      logger.severe('Failed to initialize trip: $e');
      //emit(DriverTripState.error(e.toString()));
    }
  }

  void _onTripStartTrackingDriver(DriverTripStartTrackingDriver event,
      Emitter<DriverTripState> emit) async {
    try {
      logger.info('Starting location tracking...');
      Location location = Location();
      driverTripRepository.connetToSocketIO();
      var locationStream = location.onLocationChanged;

      await emit.forEach<LocationData>(
        locationStream,
        onData: (currentLocation) {
          driverTripRepository.sendLocation(
            locationData: currentLocation,
            firebaseUserId: user!.uid,
          );
          return state.copyWith(currentLcoation: currentLocation);
        },
        onError: (error, stackTrace) {
          logger.severe('Location stream error: $error');
          return state;
        },
      );

      emit(state.copyWith(locationStream: locationStream));
    } catch (e) {
      logger.severe('Failed to start location tracking: $e');
    }
  }

  void _onTripRequestReceived(
      DriverTripRequestReceived event, Emitter<DriverTripState> emit) {
    var title = event.message.data['title'];
    var body = event.message.data['body'];
    Map<String, dynamic> data = event.message.data['data'];
    var tripRequestMessage =
        DriverTripRequest(title: title, body: body, data: data);
    emit(state.copyWith(request: tripRequestMessage));
  }
}
