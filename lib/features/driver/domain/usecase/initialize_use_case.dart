import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/models/socket_auth.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_repository.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/location/domain/repository/location_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_config.dart';

class InitializeUseCase implements UseCase<Position?, void> {
  final SocketRepository socketRepository;
  final FirebaseRepository firebaseRepository;
  final LocationPermissionRepository locationPermissionImpl;
  final LocationRepository locationRepositoryImp;
  InitializeUseCase(
    this.socketRepository,
    this.firebaseRepository,
    this.locationPermissionImpl,
    this.locationRepositoryImp,
  );

  @override
  Future<Position?> call(void params) async {
    var token = await firebaseRepository.getIdToken();
    if (token == null) {
      throw Exception('User not authenticated');
    }

    var auth = SocketAuth(token: token, userType: UserType.driver);
    var isConnected = await socketRepository.connect(
      namespaces: [SocketNamespace.trips, SocketNamespace.location],
      auth: auth,
    );
    if (!isConnected) throw Exception('Socket connection failed');

    var currentLocation = await locationRepositoryImp.getCurrentLocation();
    //await driverLifeCycleManagementImpl.initializeDriverSession();
    return currentLocation;
  }
}
