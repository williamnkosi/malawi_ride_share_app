import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

void main() async {
  // Ensure that the Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  setupGetIt();
  runApp(const App(
    flavor: 'Development',
  ));
}
