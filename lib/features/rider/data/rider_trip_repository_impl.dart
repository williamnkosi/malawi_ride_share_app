import 'package:async/async.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/domain/constants/trip_events.dart';
import 'package:malawi_ride_share_app/features/rider/data/models/rider_request_trip/rider_request_trip_dto.dart';
import 'package:malawi_ride_share_app/features/rider/data/rider_trip_events.dart';
import 'package:malawi_ride_share_app/features/rider/domain/constants/rider_trip_events.dart';
import 'package:malawi_ride_share_app/features/rider/domain/rider_trip_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_namespaces.dart';

import '../../../core/models/socket_auth.dart';

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
  Future<void> connectToWebSocket() async {
    var token = await firebaseRepository.getIdToken();
    if (token == null) {
      throw Exception('User not authenticated');
    }
    var auth = SocketAuth(token: token, userType: UserType.driver);
    var isConnected = await socketRepository.connect(
      namespaces: [SocketNamespace.trips],
      auth: auth,
    );
    if (!isConnected) throw Exception('Socket connection failed');
  }

  @override
  Future<void> cancelTrip({required String tripId, String? reason}) {
    // TODO: implement cancelTrip
    throw UnimplementedError();
  }

  @override
  Future<void> requestTrip({
    required String pickupAddress,
    required String destinationAddress,
    required double pickupLat,
    required double pickupLng,
    required double destinationLat,
    required double destinationLng,
  }) async {
    var pickup = RiderRequestLocationDto(
      latitude: pickupLat,
      longitude: pickupLng,
      address: pickupAddress,
    );
    var dropoff = RiderRequestLocationDto(
      latitude: destinationLat,
      longitude: destinationLng,
      address: destinationAddress,
    );
    var requestData = RiderRequestTripDto(
      pickupLocation: pickup,
      dropoffLocation: dropoff,
    );
    socketRepository.emit(
      RiderTripEvents.requestTrip,
      SocketNamespace.trips.path,
      requestData.toJson(),
    );
  }

  @override
  Stream<Map<String, dynamic>> connectToStream() {
    // TODO: implement connectToStream
    throw UnimplementedError();
  }

  Stream<RiderTripEvent> listenToTripUpdates(String tripId) {
    final events = TripEvents.allIncomingEvents;

    final List<Stream<RiderTripEvent>> eventStreams = events
        .map(
          (eventName) => socketRepository
              .listen(eventName, SocketNamespace.trips.path)
              .map((data) => _parseRiderEvent(eventName, data))
              .handleError(
                (e) => throw Exception('Event $eventName failed: $e'),
              ),
        )
        .toList();

    return StreamGroup.merge(eventStreams);
  }

  RiderTripEvent _parseRiderEvent(String eventName, dynamic data) {
    try {
      final Map<String, dynamic> eventData = data is Map
          ? Map<String, dynamic>.from(data)
          : {'data': data};

      return switch (eventName) {
        RiderTripEvents.driverAccepted => _parseDriverAccepted(eventData),

        _ => throw UnimplementedError('Event type $eventName not handled'),
      };
    } catch (e) {
      throw Exception('Failed to parse $eventName: $e');
    }
  }
}
