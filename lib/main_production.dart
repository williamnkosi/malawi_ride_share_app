import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:malawi_ride_share_app/config/flavor.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';

final Logger logger = Logger("Malawi Ride Share App");

void main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    log(
      name: rec.loggerName,
      rec.message,
      time: rec.time,
      level: rec.level.value,
      error: rec.error,
      stackTrace: rec.stackTrace,
    );
  });
  // Ensure that the Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await dotenv.load(fileName: Flavor.production.envFileName);
  } catch (e) {
    print(
      "Warning: ${Flavor.production.envFileName} file not found, using default values",
    );
  }

  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.getByFlavor('production'),
      );
    } else {
      Firebase.app();
    }
  } on FirebaseException catch (e) {
    if (e.code != 'duplicate-app') {
      rethrow;
    }
    Firebase.app();
  }

  runApp(App(flavor: Flavor.production));
}
