import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:malawi_ride_share_app/config/flavor.dart';

void main() async {
  // Ensure that the Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Set up logging for development
  _setupLogging();

  try {
    await dotenv.load(fileName: Flavor.development.envFileName);
  } catch (e) {
    print(
      "Warning: ${Flavor.development.envFileName} file not found, using default values",
    );
  }

  runApp(App(flavor: Flavor.development));
}

void _setupLogging() {
  // Set root logger level
  Logger.root.level = Level.ALL;

  // Set up console output
  Logger.root.onRecord.listen((record) {
    print(
      '[${record.level.name}] ${record.loggerName}: ${record.time.hour}:${record.time.minute}:${record.time.second} - ${record.message}',
    );
    if (record.error != null) {
      print('Error: ${record.error}');
    }
    if (record.stackTrace != null) {
      print('Stack Trace: ${record.stackTrace}');
    }
  });
}
