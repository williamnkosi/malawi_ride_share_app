import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/rider_trip_bloc/rider_trip_bloc.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_bottom_sheet.dart';

class RiderHomePage extends StatelessWidget {
  const RiderHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RiderTripBloc(),
      child: BlocListener<RiderTripBloc, RiderTripState>(
        listener: (context, state) {
          // showAppBottomSheet(
          //     context: context,
          //     request: state.request!,
          //     onAccept: () {},
          //     onDecline: () {});
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Driver Home Page'),
          ),
          body: const View(),
          floatingActionButton: Row(
            children: [
              FloatingActionButton(
                onPressed: () {},
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () {},
                tooltip: 'Increment',
                child: Icon(Icons.remove_done),
              ),
            ],
          ),
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
