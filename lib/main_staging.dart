import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:malawi_ride_share_app/app.dart';
import 'package:malawi_ride_share_app/config/flavor.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';

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

  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
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

  runApp(App(flavor: Flavor.staging));
}
