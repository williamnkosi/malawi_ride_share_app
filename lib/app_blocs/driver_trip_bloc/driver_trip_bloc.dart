import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';
import 'package:logging/logging.dart';

import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_request.dart';

part 'driver_trip_bloc.freezed.dart';
part 'driver_trip_event.dart';
part 'driver_trip_state.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  final DriverTripRepository driverTripRepository;

  Stream<LocationData>? _idleLocationSubscription;
  Stream<LocationData>? _tripLocationSubscription;
  final logger = Logger('DriverTripBloc');
  final user = FirebaseAuth.instance.currentUser;
  DriverTripBloc({required this.driverTripRepository})
      : super(const DriverTripState()) {
    on<DriverTripIntial>(_onTripIntial);
    on<DriverTripStartTrackingDriver>(_onTripStartTrackingDriver);
    on<DriverTripRequestReceived>(_onTripRequestReceived);
    on<DriverTripAccepted>(_onTripAccepted);
    // on<DriverTripRejected>(_onTripRejected);

    // on<DriverTripCompleted>(_onTripCompleted);
  }

  void _onTripIntial(
      DriverTripIntial event, Emitter<DriverTripState> emit) async {
    try {
      logger.info('Initializing trip...');
      FirebaseMessaging.onMessage.listen((message) {
        logger.info('Received message: ${message.data}');
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
      // 👇 If already tracking, don't start again
      if (_idleLocationSubscription != null) {
        logger.warning('Already tracking location. Ignoring new request.');
        return;
      }
      logger.info("Started tracking driver location");
      Location location = Location();
      _idleLocationSubscription = location.onLocationChanged;

      await emit.forEach<LocationData>(
        _idleLocationSubscription!,
        onData: (currentLocation) {
          driverTripRepository.sendLocation(
            locationData: currentLocation,
          );
          return state.copyWith(currentLcoation: currentLocation);
        },
        onError: (error, stackTrace) {
          logger.severe('Location stream error: $error');
          return state;
        },
      );
    } catch (e) {
      logger.severe('Failed to start location tracking: $e');
    }
  }

  void _onTripRequestReceived(
      DriverTripRequestReceived event, Emitter<DriverTripState> emit) {
    try {
      logger.info('onTripRequestReceived');
      var title = event.message.notification?.title ?? '';
      var body = event.message.notification?.body ?? '';
      Map<String, dynamic> data = event.message.data;
      var tripRequestMessage =
          DriverTripRequest.fromMap(title: title, body: body, data: data);
      emit(state.copyWith(request: tripRequestMessage));

      // Optional: Clear the request after a short delay
      Future.delayed(Duration(milliseconds: 100), () {
        emit(state.copyWith(request: null));
      });
    } catch (e) {
      logger.severe('Failed to process trip request: $e');
    }
  }

  void _onTripAccepted(
      DriverTripAccepted event, Emitter<DriverTripState> emit) async {
    try {
      logger.info('onTripAccepted');
      _stopIdleLocaitonTracking();
      Location location = Location();
      _tripLocationSubscription = location.onLocationChanged;
      await emit.forEach<LocationData>(
        _tripLocationSubscription!,
        onData: (currentLocation) {
          driverTripRepository.sendTripLocation(
            locationData: currentLocation,
          );
          return state.copyWith(currentLcoation: currentLocation);
        },
        onError: (error, stackTrace) {
          logger.severe('Location stream error: $error');
          return state;
        },
      );
    } catch (e) {
      logger.severe('Failed to accept trip request: $e');
    }
  }

  void _stopIdleLocaitonTracking() {
    _idleLocationSubscription = null;
  }
}
