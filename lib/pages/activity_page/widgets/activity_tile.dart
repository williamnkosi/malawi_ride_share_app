import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivityTile extends StatelessWidget {
  final String destination;
  final String origin;
  final DateTime date;
  final String prices;
  const ActivityTile(
      {super.key,
      required this.destination,
      required this.origin,
      required this.date,
      required this.prices});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.directions_car),
      title: Text('Destination: $destination'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Origin: $origin'),
          Text(
              'Date: ${DateFormat.yMMMd().format(date)} at ${DateFormat.jm().format(date)}'),
          Text('Price: $prices'),
        ],
      ),
    );
  }
}
