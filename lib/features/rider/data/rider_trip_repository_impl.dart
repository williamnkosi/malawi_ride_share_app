import 'package:malawi_ride_share_app/features/rider/domain/rider_trip_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';

class RiderTripRepositoryImpl implements RiderTripRepository {
  final SocketRepository socketRepository;
  final ApiService apiService;
  final FirebaseRepository firebaseRepository;

  RiderTripRepositoryImpl({
    required this.socketRepository,
    required this.apiService,
    required this.firebaseRepository,
  });
  @override
  Future<void> cancelTrip({required String tripId, String? reason}) {
    // TODO: implement cancelTrip
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> requestTrip({
    required String pickupAddress,
    required String destinationAddress,
    required double pickupLat,
    required double pickupLng,
    required double destinationLat,
    required double destinationLng,
  }) {
    // TODO: implement requestTrip
    throw UnimplementedError();
  }

  @override
  Stream<Map<String, dynamic>> streamTripUpdates({required String tripId}) {
    // TODO: implement streamTripUpdates
    throw UnimplementedError();
  }
}
