import 'dart:async';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_confirmation/driver_trip_confirmation.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_confirmation/driver_trip_confirmation_mapper.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request.dto.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request_mapper.dart';
import 'package:malawi_ride_share_app/features/driver/domain/constants/trip_events.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_config.dart'
    hide TripEvents;

class DriverTripRepositoryImp implements DriverTripRepository {
  final SocketRepository socketRepository;
  final FirebaseRepository firebaseRepository;
  DriverTripRepositoryImp(this.socketRepository, this.firebaseRepository);
  @override
  void acceptTrip(String tripId) {
    var driverId = firebaseRepository.getFirebaseId();
    socketRepository.emit(
      TripEvents.tripAcceptedConfirmation,
      SocketNamespace.trips.path,
      {"tripId": tripId, "driverId": driverId},
    );
  }

  @override
  Future<void> completeTrip(String tripId) {
    // TODO: implement completeTrip
    throw UnimplementedError();
  }

  @override
  Future<void> declineTrip(String tripId) {
    return socketRepository.request(
      TripEvents.declineTrip,
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
        .listen(TripEvents.tripRequest, SocketNamespace.trips.path)
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
  @override
  Stream<TripEventData> listenToAllTripEvents() {
    // Define all events we want to listen to
    final eventsToListen = TripEvents.allIncomingEvents;

    // Create individual streams for each event
    final List<Stream<TripEventData>> eventStreams = eventsToListen
        .map(
          (eventName) => socketRepository
              .listen(eventName, SocketNamespace.trips.path)
              .map(
                (data) => TripEventData(
                  eventType: eventName,
                  data: processEventData(eventType: eventName, eventData: data),
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

  T processEventData<T>({
    required String eventType,
    required dynamic eventData,
  }) {
    // Process the event data based on its type
    switch (eventType) {
      case TripEvents.tripAcceptedConfirmation:
        final requestData = eventData;
        final dto = DriverTripConfirmation.fromJson(requestData);
        return DriverTripConfirmationMapper.toEntity(dto) as T;

      // final requestData = eventData.data['data'];
      // final dto = DriverTripRequestDto.fromJson(requestData);
      // return DriverTripRequestMapper.toEntity(dto) as T;
      // Add more cases for other event types as needed
      default:
        throw Exception('Unhandled event type: $eventType');
    }
  }
}

/// Data class to wrap events with metadata
class TripEventData<T> {
  final String eventType;
  final T data;
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
}
