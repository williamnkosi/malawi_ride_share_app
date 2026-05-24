import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/pages/home_page/rider_home_page/search_rider_bottom_sheet.dart';

class RiderHomePage extends StatelessWidget {
  const RiderHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rider Home Page'),
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
            onPressed: () {
              searchRiderBottomSheet(context: context);
            },
            tooltip: 'Increment',
            child: Icon(Icons.remove_done),
          ),
        ],
      ),
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
