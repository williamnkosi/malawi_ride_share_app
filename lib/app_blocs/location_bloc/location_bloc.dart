import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:malawi_ride_share_app/models/drivers_location.dart';
import 'package:meta/meta.dart';
import 'package:web_socket_client/web_socket_client.dart';

import 'package:malawi_ride_share_app/repository/location_repository.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationRepository locationRepository =
      GetIt.instance<LocationRepository>();
  LocationBloc() : super(const LocationState()) {
    on<LocationEventInitial>(_onLocationEventInitial);
    on<LocationEventTrackLocation>(_onTrackLocation);
    on<LocationEventStartTracking>(_onStartTracking);
    on<LocationEventStopTracking>(_onStopTracking);
    on<LocationEventGetDriversLocation>(_onGetDriversLocation);
  }

  _onLocationEventInitial(LocationEventInitial event, emit) async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    try {
      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          return;
        }
      }
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          return;
        }
      }
      LocationData locationData = await location.getLocation();
      List<DriversLocation> drivers =
          await locationRepository.getDriversLocation();
      print("drivers");
      print(drivers.length);

      emit(state.copyWith(
          driversLocation: drivers,
          isLocationPremissionEnabled: true,
          currentLcoation: locationData,
          coordinates:
              LatLng(locationData.latitude!, locationData.longitude!)));
    } catch (e) {
      print("Lcoatin error");
    }
  }

  _onTrackLocation(LocationEventTrackLocation event, emit) {
    try {
      emit(state.copyWith(coordinates: event.location));
    } catch (e) {
      print(e);
    }
  }

  _onStartTracking(LocationEventStartTracking event, emit) {
    try {
      Location location = Location();
      locationRepository.connectToServerWebsocket();
      var locationStream =
          location.onLocationChanged.listen((LocationData currentLocation) {
        locationRepository
            .sendLocation(locationData: currentLocation)
            .then((value) => print("Location sent"))
            .onError((error, stackTrace) {
          print("Error");
          print(error);
        });
        print("Changing");
        add(LocationEvent.locationEventTrackLocation(
            location:
                LatLng(currentLocation.latitude!, currentLocation.longitude!)));
      });

      emit(state.copyWith(locationStream: locationStream));
    } catch (e) {
      print(e);
    }
  }

  _onStopTracking(LocationEventStopTracking event, emit) {
    state.locationStream!.cancel();
    emit(state.copyWith(locationStream: null));
  }

  _onGetDriversLocation(event, emit) async {
    try {
      List<DriversLocation> drivers =
          await locationRepository.getDriversLocation();
      emit(state.copyWith(driversLocation: drivers));
    } catch (e) {}
  }
}
