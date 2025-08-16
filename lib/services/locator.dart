import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/driver_operations_repository.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/repository/image_repository.dart';
import 'package:malawi_ride_share_app/repository/location_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final Logger logger = Logger('setupGetIt ---> locator service');

  logger.info('=====================================');
  getIt.registerSingletonAsync<ApiService>(() async {
    logger.info('🔄 Creating and initializing ApiService...');
    final apiService = ApiService();
    await apiService.initialize(); // ✅ Properly initialize
    logger.info('✅ ApiService initialized successfully');
    return apiService;
  });
  await getIt.isReady<ApiService>();
  logger.info('ApiService registered');
  getIt.registerSingleton<FirebaseRepository>(
      FirebaseRepository(apiService: getIt<ApiService>()));
  logger.info('FirebaseRepository registered');

  // getIt.registerSingleton<SocketService>(SocketService());
  // logger.info('SocketService registered');

  logger.info('=====================================');
  getIt.registerSingletonAsync<SocketService>(
    () async {
      logger.info('🔄 Creating Location Tracking SocketService...');
      final socketService = SocketService();

      logger.info('✅ Location Tracking SocketService initialized');
      return socketService;
    },
    instanceName: SocketConstants.locationTrackingNamespace,
  );

  getIt.registerSingletonAsync<SocketService>(
    () async {
      logger.info('🔄 Creating Chat SocketService...');
      final socketService = SocketService();
      logger.info('✅ Trips SocketService initialized');
      return socketService;
    },
    instanceName: SocketConstants.tripsNamespace,
  );
  logger.info('=====================================');

  getIt.registerSingleton<AuthRepository>(
      AuthRepository(apiService: getIt<ApiService>()));
  logger.info('AuthRepository registered');
  getIt.registerSingleton<ImageRepository>(ImageRepository());
  logger.info('ImageRepository registered');
  getIt.registerSingleton<LocationRepository>(LocationRepository());
  logger.info('LocationRepository registered');

  getIt.registerLazySingleton<DriverOperationsRepository>(() =>
      DriverOperationsRepository(
        driverLocationSocketService: getIt<SocketService>(
            instanceName: SocketConstants.locationTrackingNamespace),
        tripsSocketService:
            getIt<SocketService>(instanceName: SocketConstants.tripsNamespace),
      ));
  logger.info('DriverOperationsRepository registered');
  logger.info('===================================== /n');
}
