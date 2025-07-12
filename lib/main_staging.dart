import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

void main() {
  // Ensure that the Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();
  //setupGetIt();
  runApp(const App(
    flavor: 'Staging',
  ));
}
