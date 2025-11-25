import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/driver_operations_repository.dart';
import 'package:malawi_ride_share_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/singin_user.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/repository/image_repository.dart';
import 'package:malawi_ride_share_app/repository/location_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/driver_location_socket_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/driver_trip_socket_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/rider_socket_service.dart';

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

  logger.info('=====================================');
  getIt.registerSingletonAsync<DriverLocationSocketService>(
    () async {
      logger.info('🔄 Creating DriverLocationSocketService...');
      final socketService = DriverLocationSocketService();

      logger.info('✅ DriverLocationSocketService initialized');
      return socketService;
    },
  );

  logger.info('=====================================');
  getIt.registerSingletonAsync<DriverTripSocketService>(
    () async {
      logger.info('🔄 Creating DriverTripSocketService...');
      final socketService = DriverTripSocketService();

      logger.info('✅ DriverTripSocketService initialized');
      return socketService;
    },
  );

  getIt.registerSingletonAsync<RiderSocketService>(
    () async {
      logger.info('🔄 Creating RiderSocketService...');
      final socketService = RiderSocketService();
      logger.info('✅ RiderSocketService initialized');
      return socketService;
    },
  );
  logger.info('=====================================');

  getIt.registerSingleton<FirebaseAuthRepositoryImp>(
      FirebaseAuthRepositoryImp(apiService: getIt<ApiService>()));
  logger.info('AuthRepository registered');
  getIt.registerSingleton<ImageRepository>(ImageRepository());
  logger.info('ImageRepository registered');
  getIt.registerSingleton<LocationRepository>(LocationRepository());
  logger.info('LocationRepository registered');

  getIt.registerLazySingleton<DriverOperationsRepository>(() =>
      DriverOperationsRepository(
          driverLocationSocketService: getIt<DriverLocationSocketService>(),
          driverTripSocketService: getIt<DriverTripSocketService>()));
  logger.info('DriverOperationsRepository registered');
  logger.info('===================================== /n');
}

Future<void> setupAuthFeatureDependencies() async {
  // Use cases
  getIt.registerSingleton<SignInUserUseCase>(
      SignInUserUseCase(getIt<FirebaseAuthRepositoryImp>()));
}
