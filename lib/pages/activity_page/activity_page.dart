import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/pages/activity_page/widgets/activity_tile.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Activity Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Current Activity',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ActivityTile(
                  destination: 'Lilongwe',
                  origin: 'Blantyre',
                  date: DateTime.now(),
                  prices: 'MK 5000',
                ),
                const SizedBox(height: 16),
                const Text(
                  'Past Activities',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 5,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => ActivityTile(
                    destination: 'Lilongwe',
                    origin: 'Blantyre',
                    date: DateTime.now(),
                    prices: 'MK 5000',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
