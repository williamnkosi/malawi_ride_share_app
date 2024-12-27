import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState()) {
    on<LocationEventInitial>(_onLocationEventInitial);
    on<LocationEventTrackLocation>(_onTrackLocation);
    on<LocationEventStartTracking>(_onStartTracking);
    on<LocationEventStopTracking>(_onStopTracking);
  }

  _onLocationEventInitial(LocationEvent event, emit) async {
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
      LocationData _locationData = await location.getLocation();
 var locationStream =location.onLocationChanged.listen((LocationData currentLocation) {
        add(LocationEvent.locationEventTrackLocation(
            location:
                LatLng(currentLocation.latitude!, currentLocation.longitude!)));
      });
      emit(state.copyWith(
        locationStream: locationStream,
          isLocationPremissionEnabled: true,
          currentLcoation: _locationData,
          coordinates:
              LatLng(_locationData.latitude!, _locationData.longitude!)));

     
      
    } catch (e) {}
  }

  _onTrackLocation(LocationEventTrackLocation event, emit) {
    emit(state.copyWith(coordinates: event.location));
  }


  _onStartTracking(LocationEventStartTracking event, emit) {
     Location location = Location();
     var locationStream =location.onLocationChanged.listen((LocationData currentLocation) {
        add(LocationEvent.locationEventTrackLocation(
            location:
                LatLng(currentLocation.latitude!, currentLocation.longitude!)));
      });
    emit(state.copyWith(locationStream: locationStream));

  }

  _onStopTracking(LocationEventStopTracking event, emit) {
    state.locationStream!.cancel();
    emit(state.copyWith(locationStream: null));
  }
}
