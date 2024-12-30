import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';

class FirebaseRepository {
  Future<FirebaseApp> initializeApp() async {
    return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<FirebaseAuth> initializeAuth(FirebaseApp app) async {
    return FirebaseAuth.instanceFor(app: app);
  }
}
