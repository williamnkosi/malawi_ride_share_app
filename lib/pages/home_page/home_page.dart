import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/bloc/home_page_bloc.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_bottom_sheet.dart';

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
          create: (context) =>
              LocationBloc()..add(const LocationEventInitial()),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => DriverTripBloc()..add(const DriverTripIntial()),
        ),
      ],
      child: HomeScaffold(),
    );
  }
}

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<DriverTripBloc, DriverTripState>(
      listenWhen: (previous, current) =>
          previous.request != current.request && current.request != null,
      listener: (context, state) {
        showAppBottomSheet(
            context: context,
            request: state.request!,
            onAccept: () {
              context.read<DriverTripBloc>().add(const DriverTripAccepted());
            },
            onDecline: () {
              context.read<DriverTripBloc>().add(const DriverTripRejected());
            });
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: const View(),
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                // ignore: close_sinks
                final driverTripBloc = context.read<DriverTripBloc>();
                driverTripBloc.add(const DriverTripStartTrackingDriver());
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                // ignore: close_sinks
                final driverTripBloc = context.read<DriverTripBloc>();
                driverTripBloc.add(const DriverTripStartTrackingDriver());
              },
              tooltip: 'Increment',
              child: Icon(Icons.remove_done),
            ),
          ],
        ),
      ),
    );
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        if (state.coordinates == null) {
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
