import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/pages/activity_detail_page/activity_detail_ride_info_section.dart';

class ActivityDetailPage extends StatelessWidget {
  const ActivityDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Activity Detail Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('You were picked up at 10:00 AM by XXXXXXX'),
            SizedBox(
              height: 8,
            ),
            Text('Sep 25 7:56AM'),
            Text('MWK 5000 - Mazda CX, 8WB297'),
            SizedBox(
              height: 8,
            ),
            ActivityDetailRideInfoSection()
          ],
        ),
      ),
    );
  }
}
