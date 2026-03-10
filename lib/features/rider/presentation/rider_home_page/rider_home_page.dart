import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/features/rider/presentation/rider_home_page/search_rider_bottom_sheet.dart';

class RiderHomePage extends StatelessWidget {
  const RiderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rider Home Page')),
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
