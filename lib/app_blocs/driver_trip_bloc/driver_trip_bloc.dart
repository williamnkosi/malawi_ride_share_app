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

part 'driver_trip_event.dart';
part 'driver_trip_state.dart';
part 'driver_trip_bloc.freezed.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  final DriverTripRepository driverTripRepository =
      GetIt.instance<DriverTripRepository>();
  final logger = Logger('DriverTripBloc');
  final user = FirebaseAuth.instance.currentUser;
  DriverTripBloc() : super(const DriverTripState()) {
    on<TripStartTrackingDriver>(_onTripStartTrackingDriver);
    on<TripRequestReceived>(_onTripRequestReceived);
    on<TripAccepted>(_onTripAccepted);
    on<TripRejected>(_onTripRejected);
    on<TripStarted>(_onTripStarted);
    on<TripCompleted>(_onTripCompleted);
  }

  void _onTripStartTrackingDriver(
      TripStartTrackingDriver event, Emitter<DriverTripState> emit) {
    try {
      logger.info('Starting location tracking...');
      Location location = Location();
      driverTripRepository.connetToSocketIO();
      var locationStream =
          location.onLocationChanged.listen((LocationData currentLocation) {
        driverTripRepository.sendLocation(
            locationData: currentLocation, firebaseUserId: user!.uid);
        emit(state.copyWith(currentLcoation: currentLocation));
      });

      emit(state.copyWith(locationStream: locationStream));
    } catch (e) {
      logger.severe('Failed to start location tracking: $e');
    }
  }

  void _onTripRequestReceived(
      TripRequestReceived event, Emitter<DriverTripState> emit) {
    // Handle trip request received logic here
    emit(DriverTripRequestReceived(event.tripDetails));
  }

  void _onTripAccepted(TripAccepted event, Emitter<DriverTripState> emit) {
    // Handle trip accepted logic here
    emit(DriverTripAccepted(event.tripDetails));
  }

  void _onTripRejected(TripRejected event, Emitter<DriverTripState> emit) {
    // Handle trip rejected logic here
    emit(DriverTripRejected(event.tripDetails));
  }

  void _onTripStarted(TripStarted event, Emitter<DriverTripState> emit) {
    // Handle trip started logic here
    emit(DriverTripStarted(event.tripDetails));
  }

  void _onTripCompleted(TripCompleted event, Emitter<DriverTripState> emit) {
    // Handle trip completed logic here
    emit(DriverTripCompleted(event.tripDetails));
  }

  void _onTripCancelled(TripCancelled event, Emitter<DriverTripState> emit) {
    // Handle trip cancelled logic here
    emit(DriverTripCancelled(event.tripDetails));
  }
}
