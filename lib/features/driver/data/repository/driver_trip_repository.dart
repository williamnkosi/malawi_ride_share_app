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
  void startTrip(String tripId) {
    var driverId = firebaseRepository.getFirebaseId();
    socketRepository.emit(TripEvents.startTrip, SocketNamespace.trips.path, {
      "tripId": tripId,
      "driverId": driverId,
    });
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
                  data: processTripData(eventType: eventName, tripData: data),
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

  @override
  dynamic processTripData({
    required String eventType,
    required dynamic tripData,
  }) {
    try {
      // Extract the nested 'data' object if present
      final requestData = tripData is Map && tripData.containsKey('data')
          ? tripData['data']
          : tripData;
      final data = Map<String, dynamic>.from(requestData);

      switch (eventType) {
        case TripEvents.tripRequest:
          final response = DriverTripRequestDto.fromJson(data);
          return DriverTripRequestMapper.toEntity(response);

        case TripEvents.tripAcceptedConfirmation:
          final dto = DriverTripConfirmation.fromJson(data);
          return DriverTripConfirmationMapper.toEntity(dto);

        case TripEvents.tripDeclined:
          // TODO: Create proper DTO and mapper for declined trips
          return data;

        case TripEvents.tripCancelled:
          // TODO: Create proper DTO and mapper for cancelled trips
          return data;

        case TripEvents.tripStarted:
          // TODO: Create proper DTO and mapper for started trips
          return data;

        case TripEvents.tripCompleted:
          // TODO: Create proper DTO and mapper for completed trips
          return data;

        case TripEvents.tripUpdated:
          // TODO: Create proper DTO and mapper for updated trips
          return data;

        case TripEvents.tripTimeout:
          // Timeout events may not have data, return as-is
          return data;

        default:
          throw Exception('Unhandled event type: $eventType');
      }
    } catch (e) {
      throw Exception(
        'Failed to parse trip data for event $eventType: $e. Raw data: $tripData',
      );
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
