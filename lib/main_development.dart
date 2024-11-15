import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const App(
    flavor: 'Development',
  ));
}
