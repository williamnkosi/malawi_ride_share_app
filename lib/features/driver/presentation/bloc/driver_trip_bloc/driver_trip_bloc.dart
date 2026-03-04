import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/constants/trip_events.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip_confirmation.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_get_route_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/accept_trip_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/decline_trip_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/listen_for_multi_events_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/listen_for_trips.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/process_trip_request_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/start_trip_use_case.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/location/domain/use_case/get_current_location_use_case.dart';
import 'package:malawi_ride_share_app/features/shared/google_maps/domain/entities/route_entity.dart';

part 'driver_trip_event.dart';
part 'driver_trip_state.dart';
part 'driver_trip_bloc.freezed.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  final logger = Logger('DriverTripBloc');
  final DriverTripRepository driverTripRepository;
  final ListenForTripEvents listenForEvents;
  final ListenForMultiEventsUseCase listenForMultiEvents;
  final AcceptTripUseCase acceptTripUseCase;
  final DeclineTripUseCase declineTripUseCase;
  final ProcessTripRequestUseCase processTripRequestUseCase;
  final DriverGetRouteUseCase driverGetRouteUseCase;
  final StartTripUseCase startTripUseCase;
  StreamSubscription? _tripRequestSubscription;
  StreamSubscription? _multiEventSubscription;
  DriverTripBloc({
    required this.driverTripRepository,
    required this.listenForEvents,
    required this.listenForMultiEvents,
    required this.acceptTripUseCase,
    required this.declineTripUseCase,
    required this.processTripRequestUseCase,
    required this.driverGetRouteUseCase,
    required this.startTripUseCase,
  }) : super(const DriverTripState.idle()) {
    on<DriverTripSetIdle>(_onDriverTripSetIdle);
    on<DriverTripRequestReceived>(_onDriverTripRequestReceived);
    // on<DriverTripAcceptedConfirmation>(_onDriverTripAcceptedConfirmation);
    on<DriverTripInitialize>(_onDriverTripInitialize);
    on<DriverTripDeinitialize>(_onDriverTripDeinitialize);
    on<DriverTripAcceptTrip>(_onDriverTripAcceptTrip);
    on<DriverTripDeclineTrip>(_onDriverTripDeclineTrip);
    on<DriverTripExpired>(_onDriverTripExpired);
    on<DriverTripStarted>(_onDriverTripStarted);
    on<DriverTripCompletedEvent>(_onDriverTripCompleted);

    on<DriverTripStart>(_onDriverTripStart);
    on<DriverTripComplete>(_onDriverTripComplete);
  }

  _onDriverTripSetIdle(DriverTripSetIdle event, Emitter<DriverTripState> emit) {
    logger.info('Driver is idle, waiting for trip requests');
    emit(const DriverTripState.idle());
  }

  _onDriverTripDeinitialize(
    DriverTripDeinitialize event,
    Emitter<DriverTripState> emit,
  ) {
    logger.info('Deinitializing driver trip bloc');
    _tripRequestSubscription?.cancel();
    _multiEventSubscription?.cancel();
    emit(const DriverTripState.idle());
  }

  _onDriverTripInitialize(
    DriverTripInitialize event,
    Emitter<DriverTripState> emit,
  ) async {
    logger.info('Starting to listen for trip events');

    _multiEventSubscription = listenForMultiEvents
        .call(null)
        .listen(
          (tripEventData) {
            logger.info('=== MULTI EVENT STREAM LISTENER TRIGGERED ===');
            logger.info('Trip event received: ${tripEventData.toString()}');
            logger.info('Current bloc state: ${state.runtimeType}');
            logger.info(tripEventData.toString());

            switch (tripEventData.eventType) {
              case TripEvents.tripRequest:
                logger.info('Processing trip request received event');
                add(DriverTripRequestReceived(trip: tripEventData.data));
                break;
              case TripEvents.tripAcceptedConfirmation:
                logger.info('Processing trip accepted confirmation event');
                // add(DriverTripAcceptedConfirmation(confirmationTrip: tripEventData));
                break;
              case TripEvents.tripStarted:
                logger.info('Processing trip started event');
                add(DriverTripStarted());
                break;
              case TripEvents.tripCompleted:
                logger.info('Processing trip completed event');
                // add(DriverTripComplete(trip: tripEventData.data));
                add(DriverTripCompletedEvent());
                break;
              case TripEvents.tripTimeout:
                logger.info('Processing trip timeout event');
                add(DriverTripExpired());
                break;
              default:
                logger.info(
                  'Unknown trip event type: ${tripEventData.eventType}',
                );
            }

            // Handle different types of trip events here
            // For example:
            // if (tripEventData is TripRequestEvent) {
            //   add(DriverTripRequestReceived(trip: tripEventData.trip));
            // } else if (tripEventData is TripCancellationEvent) {
            //   add(DriverTripCancelled(tripId: tripEventData.tripId));
            // }

            logger.info('Trip event processed: ${tripEventData.toString()}');
          },
          onError: (error) {
            logger.severe('Error listening for multi trip events: $error');
            // Can't emit state directly from stream listener
            // Consider adding an error event if needed
          },
          onDone: () {
            logger.info('Multi trip events stream completed');
          },
        );
    logger.info(
      'DriverTripBloc initialized and listening for multi trip events.',
    );
  }

  _onDriverTripRequestReceived(
    DriverTripRequestReceived event,
    Emitter<DriverTripState> emit,
  ) async {
    logger.info('=== EVENT HANDLER CALLED ===');
    logger.info('Current state before emit: ${state.runtimeType}');

    try {
      final newState = DriverTripState.requestReceived(
        tripRequest: event.trip,
        receivedAt: DateTime.now(),
      );

      logger.info('About to emit state: ${newState.runtimeType}');
      emit(newState);
      logger.info('State emitted successfully: ${state.runtimeType}');
      logger.info('Emitted trip request state for trip: ${event.trip.tripId}');
    } catch (e, stackTrace) {
      logger.severe('Error handling trip request: $e', e, stackTrace);
      emit(DriverTripState.error(message: 'Failed to handle trip request'));
    }
  }

  _onDriverTripAcceptTrip(
    DriverTripAcceptTrip event,
    Emitter<DriverTripState> emit,
  ) async {
    logger.info('Trip accepted: ${event.trip.tripId}');
    try {
      await acceptTripUseCase.call(event.trip.tripId);
      final route = await driverGetRouteUseCase.call(event.trip);
      emit(
        DriverTripState.enRouteToPickup(
          activeTrip: event.trip,
          routeToPickup: route,
        ),
      );
      logger.info('Successfully accepted trip: ${event.trip.tripId}');
    } catch (e, stackTrace) {
      logger.severe(
        'Error accepting trip ${event.trip.tripId}: $e',
        e,
        stackTrace,
      );
      emit(DriverTripState.error(message: 'Failed to accept trip'));
    }
  }

  _onDriverTripDeclineTrip(
    DriverTripDeclineTrip event,
    Emitter<DriverTripState> emit,
  ) async {
    logger.info('Trip declined: ${event.trip}');
    // Additional logic for declining the trip can be added here
    emit(DriverTripState.idle());
  }

  _onDriverTripExpired(
    DriverTripExpired event,
    Emitter<DriverTripState> emit,
  ) async {
    logger.info('Trip expired:');
    emit(DriverTripState.requestExpired());
    emit(DriverTripState.idle());
  }

  _onDriverTripStart(
    DriverTripStart event,
    Emitter<DriverTripState> emit,
  ) async {
    final currentTrip = state.maybeWhen(
      enRouteToPickup: (activeTrip, routeToPickup) => activeTrip,
      orElse: () => null,
    );
    if (currentTrip != null) {
      await startTripUseCase.call(currentTrip.tripId);
      //emit(DriverTripState.inProgress(activeTrip: currentTrip));
    } else {
      logger.warning('Trip not in enRouteToPickup state');
      emit(DriverTripState.error(message: 'Invalid state for starting trip'));
    }
  }

  _onDriverTripStarted(DriverTripStarted event, Emitter<DriverTripState> emit) {
    logger.info('Trip started event received');
    final currentTrip = state.maybeWhen(
      enRouteToPickup: (activeTrip, routeToPickup) => activeTrip,
      orElse: () => null,
    );
    if (currentTrip != null) {
      emit(DriverTripState.inProgress(activeTrip: currentTrip));
    } else {
      logger.warning('Received trip started event but no active trip found');
      emit(DriverTripState.error(message: 'No active trip to start'));
    }
  }

  _onDriverTripComplete(
    DriverTripComplete event,
    Emitter<DriverTripState> emit,
  ) async {
    //logger.info('Trip complete: ${event.trip.tripId}');
    // Additional logic for completing the trip can be added here
    final currentTrip = state.maybeWhen(
      inProgress: (activeTrip) => activeTrip,
      orElse: () => null,
    );
    await driverTripRepository.completeTrip(currentTrip!.tripId);
  }

  _onDriverTripCompleted(
    DriverTripCompletedEvent event,
    Emitter<DriverTripState> emit,
  ) {
    logger.info('Trip completed event received');
    final currentTrip = state.maybeWhen(
      inProgress: (activeTrip) => activeTrip,
      orElse: () => null,
    );
    if (currentTrip != null) {
      emit(
        DriverTripState.completed(
          finalFare: 0.0, // Placeholder, calculate actual fare
          completedAt: DateTime.now(),
          tripDuration: Duration(
            minutes: 30,
          ), // Placeholder, calculate actual duration
        ),
      );
    } else {
      logger.warning('Received trip completed event but no active trip found');
      emit(DriverTripState.error(message: 'No active trip to complete'));
    }
  }

  @override
  Future<void> close() {
    _tripRequestSubscription?.cancel();
    _multiEventSubscription?.cancel();
    return super.close();
  }

  @override
  void onChange(Change<DriverTripState> change) {
    logger.info('=== STATE CHANGE ===');
    logger.info('From: ${change.currentState.runtimeType}');
    logger.info('To: ${change.nextState.runtimeType}');
    super.onChange(change);
  }
}
