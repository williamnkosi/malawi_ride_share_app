import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:web_socket_client/web_socket_client.dart';

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

      emit(state.copyWith(
          isLocationPremissionEnabled: true,
          currentLcoation: _locationData,
          coordinates:
              LatLng(_locationData.latitude!, _locationData.longitude!)));
    } catch (e) {}
  }

  _onTrackLocation(LocationEventTrackLocation event, emit) {
    print(event.location);
    emit(state.copyWith(coordinates: event.location));
  }

  _onStartTracking(LocationEventStartTracking event, emit) {
    try {
      final uri = Uri.parse('ws://10.0.2.2:8080/ws/drivers');
      final timeout = Duration(seconds: 10);
      final header = {"Authorization": "testing", "DriverId": "1"};
      var _socket = WebSocket(uri, headers: header, timeout: timeout);
      Location location = Location();
      var locationStream =
          location.onLocationChanged.listen((LocationData currentLocation) {
        Map<String, dynamic> locationData = {
          'Latitude': currentLocation.latitude,
          'Longitude': currentLocation.longitude,
        };

        var data = jsonEncode(locationData);
        _socket.send(data);
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
}
