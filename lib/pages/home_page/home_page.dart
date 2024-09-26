import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [AppTextFieldWidget(hintText: "Search for a ride")]),
      ),
    );
  }
}
