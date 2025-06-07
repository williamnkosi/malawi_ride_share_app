import 'package:flutter/material.dart';

class ActivityDetailRideInfoSection extends StatelessWidget {
  const ActivityDetailRideInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_forward),
          title: Text('Lilongwe'),
          trailing: Text('Sep 25 7:56AM'),
        ),
        ListTile(
          leading: Icon(
            Icons.circle,
            size: 12,
          ),
          title: Text('Blantyre'),
          trailing: Text('Sep 26 7:56AM'),
        ),
        ListTile(
          leading: Icon(
            Icons.star,
            size: 12,
          ),
          title: Text('Rating'),
        ),
        ListTile(
          leading: Icon(
            Icons.star,
            size: 12,
          ),
          title: Text('You rated the driver a 5'),
        ),
      ],
    );
  }
}
