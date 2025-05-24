import 'package:get_it/get_it.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_message_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/repository/location_repository.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() async {
  getIt.registerSingleton<AuthRepository>(AuthRepository());
  getIt.registerSingleton<FirebaseRepository>(FirebaseRepository());
  getIt.registerLazySingleton<FirebaseMessageRepository>(
      () => FirebaseMessageRepository());
  getIt.registerSingleton<LocationRepository>(LocationRepository());
  getIt.registerSingleton<DriverTripRepository>(DriverTripRepository());
}
