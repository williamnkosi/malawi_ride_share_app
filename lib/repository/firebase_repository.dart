import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';

final _name = 'FirebaseRepository';

class FirebaseRepository {
  late final FirebaseApp app;

  final Logger logger = Logger(_name);
  Future<FirebaseApp> initializeApp() async {
    try {
      app = await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      return app;
    } catch (e) {
      logger.severe(
          "$_name - Error initializing Firebase", e, StackTrace.current);
      rethrow;
    }
  }

  Future<FirebaseAuth> initializeAuth() async {
    try {
      return FirebaseAuth.instanceFor(app: app);
    } catch (e) {
      logger.severe(
          "$_name - Error initializing Firebase Auth", e, StackTrace.current);
      rethrow;
    }
  }
}
