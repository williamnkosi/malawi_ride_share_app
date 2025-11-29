import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_repository.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/notification_permission_repository.dart';
import 'package:malawi_ride_share_app/features/driver/data/repository/driver_location_tracking.dart';
import 'package:malawi_ride_share_app/features/driver/data/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_location_tracking_repository.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_offline_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_online_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/initialize_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/listen_trip_request_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_bloc.dart';
import 'package:malawi_ride_share_app/features/app/data/repositories/location_permission_repository_impl.dart';
import 'package:malawi_ride_share_app/features/app/data/repositories/notification_permission_repository_impl.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/ensure_location_permission.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/ensure_notification_permission.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/open_location_settings.dart';
import 'package:malawi_ride_share_app/features/app/presentation/app_bloc/app_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/signout_user.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/signup_user.dart';
import 'package:malawi_ride_share_app/features/auth/domain/usecases/singin_user.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/shared/data/repository/firebase_repository_impl.dart';
import 'package:malawi_ride_share_app/features/shared/data/repository/socket_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/repository/image_repository.dart';
import 'package:malawi_ride_share_app/features/shared/data/repository/location_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';

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

  await setupSharedDependencies();
  await setupAppFeatureDependencies();

  logger.info('=====================================');

  getIt.registerSingleton<FirebaseAuthRepositoryImp>(
    FirebaseAuthRepositoryImp(apiService: getIt<ApiService>()),
  );
  logger.info('AuthRepository registered');
  getIt.registerSingleton<ImageRepository>(ImageRepository());
  logger.info('ImageRepository registered');
  logger.info('LocationRepository registered');

  logger.info('DriverOperationsRepository registered');
  logger.info('===================================== /n');

  await setupAuthFeatureDependencies();
  await setupDriverOperationsDependencies();
}

Future<void> setupSharedDependencies() async {
  // Shared Repositories
  getIt.registerSingleton<SocketRepository>(SocketRepositoryImpl());
  getIt.registerSingleton<LocationRepository>(LocationRepositoryImpl());
  getIt.registerSingleton<FirebaseRepository>(
    FirebaseRepositoryImpl(apiService: getIt<ApiService>()),
  );
}

Future<void> setupAppFeatureDependencies() async {
  // Repositories Implementations
  getIt.registerSingleton<LocationPermissionRepository>(
    LocationPermissionRepositoryImpl(),
  );

  getIt.registerSingleton<NotificationPermissionRepository>(
    NotificationPermissionRepositoryImpl(),
  );

  // Use cases
  getIt.registerSingleton<EnsureLocationPermission>(
    EnsureLocationPermission(getIt<LocationPermissionRepository>()),
  );

  getIt.registerSingleton<EnsureNotificationPermission>(
    EnsureNotificationPermission(
      getIt<NotificationPermissionRepository>(),
      getIt<FirebaseRepository>(),
    ),
  );

  getIt.registerSingleton<OpenLocationSettingUseCase>(
    OpenLocationSettingUseCase(getIt<LocationPermissionRepository>()),
  );

  getIt.registerFactory<AppBloc>(
    () => AppBloc(
      ensureLocationPermission: getIt<EnsureLocationPermission>(),
      ensureNotificationPermission: getIt<EnsureNotificationPermission>(),
      openLocationSettingUseCase: getIt<OpenLocationSettingUseCase>(),
    ),
  );
}

Future<void> setupAuthFeatureDependencies() async {
  // Use cases
  getIt.registerSingleton<SignInUserUseCase>(
    SignInUserUseCase(getIt<FirebaseAuthRepositoryImp>()),
  );

  getIt.registerSingleton<SignUpUserUseCase>(
    SignUpUserUseCase(getIt<FirebaseAuthRepositoryImp>()),
  );

  getIt.registerSingleton<SignOutUserUseCase>(
    SignOutUserUseCase(getIt<FirebaseAuthRepositoryImp>()),
  );

  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      signInUserUseCase: getIt<SignInUserUseCase>(),
      signUpUserUseCase: getIt<SignUpUserUseCase>(),
      signOutUserUseCase: getIt<SignOutUserUseCase>(),
    ),
  );
}

Future<void> setupDriverOperationsDependencies() async {
  //repos
  getIt.registerSingleton<DriverLocationTrackingRepository>(
    DriverLocationTrackingRepositoryImpl(getIt<SocketRepository>()),
  );

  getIt.registerSingleton<DriverTripRepository>(
    DriverTripRepositoryImp(getIt<SocketRepository>()),
  );

  // Use cases
  getIt.registerSingleton<InitializeUseCase>(
    InitializeUseCase(
      getIt<SocketRepository>(),
      getIt<LocationPermissionRepository>(),
      getIt<LocationRepository>(),
    ),
  );

  getIt.registerSingleton<GoOnLineUseCase>(
    GoOnLineUseCase(
      getIt<LocationRepository>(),
      getIt<FirebaseRepository>(),
      getIt<DriverLocationTrackingRepository>(),
    ),
  );

  getIt.registerSingleton<GoOfflineUseCase>(
    GoOfflineUseCase(getIt<LocationRepository>()),
  );

  getIt.registerSingleton<ListenTripRequestUseCase>(
    ListenTripRequestUseCase(getIt<DriverTripRepository>()),
  );

  getIt.registerFactory<DriverOperationsBloc>(
    () => DriverOperationsBloc(
      initializeUseCase: getIt<InitializeUseCase>(),
      goOfflineUseCase: getIt<GoOfflineUseCase>(),
      goOnLineUseCase: getIt<GoOnLineUseCase>(),
    ),
  );
}
