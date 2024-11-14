import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/pages/home_page/bloc/home_page_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: const View(),
      ),
    );
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.of<HomePageBloc>(context).state.currentLocation == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : BlocBuilder<HomePageBloc, HomePageState1>(
            builder: (context, state) {
              return GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(
                      37.4223, -122.0848), // Coordinates for San Francisco
                  zoom: 13,
                ),
                markers: {
                  Marker(
                      markerId: const MarkerId('currentLcoation'),
                      position: state.currentLocation!,
                      icon: BitmapDescriptor.defaultMarker),
                },
                // polylines: Set<Polyline>.of(_polylines.values),
              );
            },
          );
  }
}
