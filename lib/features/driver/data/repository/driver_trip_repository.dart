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

  /// Multi-event listener using Stream Merging Pattern
  /// Listens to multiple trip-related events and merges them into a single stream
  Stream<TripEventData> listenToAllTripEvents() {
    // Define all events we want to listen to
    final eventsToListen = [
      'trip:request',
      'trip:accepted_confirmation',
      'trip:declined',
      'trip:cancelled',
      'trip:started',
      'trip:completed',
      'trip:updated',
    ];

    // Create individual streams for each event
    final List<Stream<TripEventData>> eventStreams = eventsToListen
        .map(
          (eventName) => socketRepository
              .listen(eventName, SocketNamespace.trips.path)
              .map(
                (data) => TripEventData(
                  eventType: eventName,
                  data: data,
                  timestamp: DateTime.now(),
                ),
              ),
        )
        .toList();

    // Create a broadcast stream controller to merge all streams
    late StreamController<TripEventData> controller;
    List<StreamSubscription> subscriptions = [];

    controller = StreamController<TripEventData>.broadcast(
      onListen: () {
        // Subscribe to all event streams when someone starts listening
        for (final stream in eventStreams) {
          final subscription = stream.listen(
            (eventData) {
              if (!controller.isClosed) {
                controller.add(eventData);
              }
            },
            onError: (error) {
              if (!controller.isClosed) {
                controller.addError(error);
              }
            },
          );
          subscriptions.add(subscription);
        }
      },
      onCancel: () {
        // Clean up all subscriptions when the stream is cancelled
        for (final subscription in subscriptions) {
          subscription.cancel();
        }
        subscriptions.clear();
      },
    );

    return controller.stream;
  }

  /// Convenience method to handle events with type-safe switching
  void processEvent(TripEventData eventData) {
    switch (eventData.eventType) {
      case 'trip:request':
        _handleTripRequest(eventData);
        break;
      case 'trip:accepted_confirmation':
        _handleTripInitiated(eventData);
        break;
      case 'trip:declined':
        _handleTripDeclined(eventData);
        break;
      case 'trip:cancelled':
        _handleTripCancelled(eventData);
        break;
      case 'trip:started':
        _handleTripStarted(eventData);
        break;
      case 'trip:completed':
        _handleTripCompleted(eventData);
        break;
      case 'trip:updated':
        _handleTripUpdated(eventData);
        break;
      default:
        // Handle unknown events
        _handleUnknownEvent(eventData);
    }
  }

  // Event-specific handlers - implement your logic here
  void _handleTripRequest(TripEventData eventData) {
    // Handle new trip request
    print('Processing trip request: ${eventData.data}');
  }

  void _handleTripInitiated(TripEventData eventData) {
    // Handle trip acceptance confirmation
    print('Trip initiated: ${eventData.data}');
  }

  void _handleTripDeclined(TripEventData eventData) {
    // Handle trip decline confirmation
    print('Trip declined: ${eventData.data}');
  }

  void _handleTripCancelled(TripEventData eventData) {
    // Handle trip cancellation
    print('Trip cancelled: ${eventData.data}');
  }

  void _handleTripStarted(TripEventData eventData) {
    // Handle trip start
    print('Trip started: ${eventData.data}');
  }

  void _handleTripCompleted(TripEventData eventData) {
    // Handle trip completion
    print('Trip completed: ${eventData.data}');
  }

  void _handleTripUpdated(TripEventData eventData) {
    // Handle trip updates
    print('Trip updated: ${eventData.data}');
  }

  void _handleUnknownEvent(TripEventData eventData) {
    // Handle unknown events
    print('Unknown event: ${eventData.eventType}');
  }
}

/// Data class to wrap events with metadata
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
    return 'TripEventData(eventType: $eventType, timestamp: $timestamp, data: $data)';
  }

  /// Helper method to check if this is a specific event type
  bool isEventType(String type) => eventType == type;

  /// Helper method to safely cast data to a specific type
  T? getDataAs<T>() {
    try {
      return data as T;
    } catch (e) {
      return null;
    }
  }
}
