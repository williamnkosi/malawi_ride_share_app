import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/app_blocs/rider_trip_bloc/rider_trip_repository.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final Logger logger = Logger('setupGetIt ---> locator service');

  logger.info('=====================================');
  getIt.registerSingleton<ApiService>(ApiService());
  logger.info('ApiService registered');
  getIt.registerSingleton<FirebaseRepository>(FirebaseRepository());
  logger.info('FirebaseRepository registered');
  getIt.registerSingleton<SocketService>(SocketService());
  logger.info('SocketService registered');
  getIt.registerSingleton<AuthRepository>(AuthRepository());
  logger.info('AuthRepository registered');
  getIt.registerSingleton<DriverTripRepository>(DriverTripRepository());
  logger.info('DriverTripRepository registered');
  getIt.registerSingleton<RiderTripRepository>(RiderTripRepository());
  logger.info('RiderTripRepository registered');
  logger.info('===================================== /n');
}
