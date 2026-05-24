import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:malawi_ride_share_app/config/flavor.dart';

void main() async {
  // Ensure that the Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await dotenv.load(fileName: Flavor.staging.envFileName);
  } catch (e) {
    print(
      "Warning: ${Flavor.staging.envFileName} file not found, using default values",
    );
  }

  runApp(App(flavor: Flavor.staging));
}
