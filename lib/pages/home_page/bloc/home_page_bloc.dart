import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

part 'home_page_bloc.freezed.dart';
part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState1> {
  HomePageBloc() : super(const HomePageState1()) {
    on<HomePageEvent>(_onInitial);
  }

  _onInitial(event, emit) {
    final Location locationController = Location();
    LatLng? currentLocation;

    final Map<PolylineId, Polyline> polylines = {};

    initializeMap(locationController, emit);
  }

  Future<void> initializeMap(Location locationController, dynamic emit) async {
    await fetchLocationUpdates(locationController, emit);
    final coordinates = await fetchPolylinePoints();
    var polyLine = await generatePolyLineFormPoints(coordinates);
    emit(state.copyWith(polyLine: polyLine));
  }

  Future<void> fetchLocationUpdates(
      Location locationController, dynamic emit) async {
    // Fetch location updates from the server
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await locationController.serviceEnabled();

    // Check if GPS is enabled
    if (serviceEnabled) {
      serviceEnabled = await locationController.requestService();
    } else {
      return;
    }

    permissionGranted = await locationController.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await locationController.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationController.onLocationChanged.listen((LocationData currentLocation) {
      // Use the location data
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        emit(state.copyWith(
            currentLocation:
                LatLng(currentLocation.latitude!, currentLocation.longitude!)));
      }
    });
  }

  Future<List<LatLng>> fetchPolylinePoints() async {
    const googlePlex = LatLng(37.4223, -122.0848);
    const mountainViewLocation = LatLng(37.3861, -122.0839);
    final polyLinePoints = PolylinePoints();
    PolylineRequest request = PolylineRequest(
        origin: PointLatLng(googlePlex.latitude, googlePlex.longitude),
        destination: PointLatLng(
            mountainViewLocation.latitude, mountainViewLocation.longitude),
        mode: TravelMode.driving);
    final result = await polyLinePoints.getRouteBetweenCoordinates(
        request: request, googleApiKey: dotenv.env['google_maps_apikey']);
    if (result.points.isNotEmpty) {
      return result.points.map((e) => LatLng(e.latitude, e.longitude)).toList();
    } else {
      return [];
    }
  }

  Future<Map<PolylineId, Polyline>> generatePolyLineFormPoints(
      List<LatLng> polylineCoordinates) async {
    const id = PolylineId('polyline');
    final polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 5,
    );
    Map<PolylineId, Polyline> tempPolyLine = state.polyLine!;
    tempPolyLine[id] = polyline;
    return tempPolyLine;
  }
}
