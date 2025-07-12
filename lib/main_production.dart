import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

final Logger logger = Logger("Malawi Ride Share App");

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    log(
        name: rec.loggerName,
        rec.message,
        time: rec.time,
        level: rec.level.value,
        error: rec.error,
        stackTrace: rec.stackTrace);
  });
  // Ensure that the Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();
  //setupGetIt();
  runApp(const App(
    flavor: 'Production',
  ));
}
