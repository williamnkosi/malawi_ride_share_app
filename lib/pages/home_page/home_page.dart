import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/bloc/home_page_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomePageBloc(),
        ),
        BlocProvider(
          create: (context) => LocationBloc()..add( const LocationEvent.locationEventInitial()),
          lazy: false,
        ),
      ],
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
    return 
      BlocBuilder<LocationBloc, LocationState>(
      
        builder: (context, state) {
          if(state.coordinates == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          
          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: state.coordinates!,
              zoom: 14,
            ),
            markers: {
              Marker(
                markerId: MarkerId('currentLocation'),
                position: state.coordinates!,
              ),
            },
          );
        },
      );
    
          
  }
}
