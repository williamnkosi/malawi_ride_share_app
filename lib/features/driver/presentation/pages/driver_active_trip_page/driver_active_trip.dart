import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/pages/driver_active_trip_page/widgets/driver_active_trip_info_card.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/pages/driver_active_trip_page/widgets/driver_active_trip_map_view.dart';
import 'package:malawi_ride_share_app/features/location/presentation/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class DriverActiveTrip extends StatelessWidget {
  final DriverTripEntity trip;

  const DriverActiveTrip({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<LocationBloc>()),
        BlocProvider.value(value: getIt<DriverTripBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Active Trip')),
        body: Column(
          children: [
            DriverActiveTripMapView(),
            DriverActiveTripInfoCard(trip: trip),
          ],
        ),
      ),
    );
  }
}
