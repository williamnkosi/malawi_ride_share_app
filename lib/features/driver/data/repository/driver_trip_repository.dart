import 'dart:async';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request.dto.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request_mapper.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_config.dart';

class DriverTripRepositoryImp implements DriverTripRepository {
  final SocketRepository socketRepository;
  final FirebaseRepository firebaseRepository;
  DriverTripRepositoryImp(this.socketRepository, this.firebaseRepository);
  @override
  Future<void> acceptTrip(String tripId) {
    var driverId = firebaseRepository.getFirebaseId();
    return socketRepository.request('trip:accept', SocketNamespace.trips.path, {
      "driverId": driverId,
      "tripId": tripId,
    });
  }

  @override
  Future<void> completeTrip(String tripId) {
    // TODO: implement completeTrip
    throw UnimplementedError();
  }

  @override
  Future<void> declineTrip(String tripId) {
    return socketRepository.request(
      'trip:decline',
      SocketNamespace.trips.path,
      {"tripId": tripId},
    );
  }

  @override
  Stream<String> listenToTripCancellations() {
    // TODO: implement listenToTripCancellations
    throw UnimplementedError();
  }

  @override
  Stream<DriverTripEntity> listenToTripRequests() {
    return socketRepository
        .listen('trip:request', SocketNamespace.trips.path)
        .map((data) {
          // Add null safety checks
          if (data == null) {
            throw Exception('Received null data from socket');
          }

          final requestData = data['data'];
          if (requestData == null) {
            throw Exception('Trip request data is null');
          }

          try {
            final response = DriverTripRequestDto.fromJson(requestData);
            return DriverTripRequestMapper.toEntity(response);
          } catch (e) {
            throw Exception(
              'Failed to parse trip request: $e. Raw data: $requestData',
            );
          }
        });
  }

  /// Multi-event listener for all trip-related events
  Stream<TripEventData> listenToAllTripEvents() {
    // Define all events we want to listen to
    final eventsToListen = [
      'trip:request',
      'trip:accepted',
      'trip:declined', 
      'trip:cancelled',
      'trip:started',
      'trip:completed',
      'trip:updated',
    ];

    // Create a single stream that merges all event streams
    final List<Stream<TripEventData>> eventStreams = eventsToListen
        .map((eventName) => socketRepository
            .listen(eventName, SocketNamespace.trips.path)
            .map((data) => TripEventData(
                  eventType: eventName,
                  data: data,
                  timestamp: DateTime.now(),
                )))
        .toList();

    // Merge all streams into one
    late StreamController<TripEventData> controller;
    controller = StreamController<TripEventData>.broadcast(
      onListen: () {
        // Subscribe to all event streams
        for (final stream in eventStreams) {
          stream.listen(
            (eventData) => controller.add(eventData),
            onError: (error) => controller.addError(error),
          );
        }
      },
    );

    return controller.stream;
  }

  /// Process different trip events with appropriate handlers
  void handleTripEvent(TripEventData eventData) {
    switch (eventData.eventType) {
      case 'trip:request':
        _handleTripRequest(eventData.data);
        break;
      case 'trip:accepted':
        _handleTripAccepted(eventData.data);
        break;
      case 'trip:declined':
        _handleTripDeclined(eventData.data);
        break;
      case 'trip:cancelled':
        _handleTripCancelled(eventData.data);
        break;
      case 'trip:started':
        _handleTripStarted(eventData.data);
        break;
      case 'trip:completed':
        _handleTripCompleted(eventData.data);
        break;
      case 'trip:updated':
        _handleTripUpdated(eventData.data);
        break;
      default:
        print('Unknown event type: ${eventData.eventType}');
    }
  }

  // Private event handlers
  void _handleTripRequest(dynamic data) {
    print('New trip request: $data');
    // Process trip request
  }

  void _handleTripAccepted(dynamic data) {
    print('Trip accepted: $data');
    // Process trip acceptance
  }

  void _handleTripDeclined(dynamic data) {
    print('Trip declined: $data');
    // Process trip decline
  }

  void _handleTripCancelled(dynamic data) {
    print('Trip cancelled: $data');
    // Process trip cancellation
  }

  void _handleTripStarted(dynamic data) {
    print('Trip started: $data');
    // Process trip start
  }

  void _handleTripCompleted(dynamic data) {
    print('Trip completed: $data');
    // Process trip completion
  }

  void _handleTripUpdated(dynamic data) {
    print('Trip updated: $data');
    // Process trip update
  }
}

/// Data class for trip events
class TripEventData {
  final String eventType;
  final dynamic data;
  final DateTime timestamp;

  TripEventData({
    required this.eventType,
    required this.data,
    required this.timestamp,
  });

  @override
  String toString() {
    return 'TripEventData(eventType: $eventType, data: $data, timestamp: $timestamp)';
  }
}
