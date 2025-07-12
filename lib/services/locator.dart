import 'package:get_it/get_it.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/app_blocs/rider_trip_bloc/rider_trip_repository.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<ApiService>(ApiService());
  print('ApiService registered');
  getIt.registerSingleton<FirebaseRepository>(FirebaseRepository());
  print('FirebaseRepository registered');
  getIt.registerSingleton<SocketService>(SocketService());
  print('SocketService registered');
  getIt.registerSingleton<AuthRepository>(AuthRepository());
  print('AuthRepository registered');
  getIt.registerSingleton<DriverTripRepository>(DriverTripRepository());
  print('DriverTripRepository registered');
  getIt.registerSingleton<RiderTripRepository>(RiderTripRepository());
  print('RiderTripRepository registered');
}
