import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_trip_event.dart';
part 'driver_trip_state.dart';
part 'driver_trip_bloc.freezed.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  DriverTripBloc() : super(DriverTripInitial()) {
    on<DriverLocationStatusUpdate>(_onLocationUpdated);
    on<TripRequestReceived>(_onTripRequestReceived);
    on<TripAccepted>(_onTripAccepted);
    on<TripRejected>(_onTripRejected);
    on<TripStarted>(_onTripStarted);
    on<TripCompleted>(_onTripCompleted);
  }

  void _onLocationUpdated(
      DriverLocationStatusUpdate event, Emitter<DriverTripState> emit) {
    // Handle location update logic here
    emit(DriverTripLocationUpdated(event.location));
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
