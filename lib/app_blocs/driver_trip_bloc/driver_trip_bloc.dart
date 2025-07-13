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

  final logger = Logger('DriverTripBloc');
  final user = FirebaseAuth.instance.currentUser;
  DriverTripBloc({required this.driverTripRepository})
      : super(const DriverTripState());
}
