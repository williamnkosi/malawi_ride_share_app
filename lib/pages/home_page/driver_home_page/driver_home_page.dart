import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_bottom_sheet.dart';

class DriverHomePage extends StatelessWidget {
  const DriverHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Home Page'),
      ),
      body: const View(),
    );
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
