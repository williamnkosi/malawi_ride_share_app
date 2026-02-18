import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/constants/trip_events.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip_confirmation.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_get_route_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/accept_trip_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/decline_trip_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/listen_for_multi_events_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/listen_for_trips.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/process_trip_request_use_case.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/location/domain/use_case/get_current_location_use_case.dart';
import 'package:malawi_ride_share_app/features/shared/google_maps/domain/entities/route_entity.dart';

part 'driver_trip_event.dart';
part 'driver_trip_state.dart';
part 'driver_trip_bloc.freezed.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  final logger = Logger('DriverTripBloc');
  final ListenForTripEvents listenForEvents;
  final ListenForMultiEventsUseCase listenForMultiEvents;
  final AcceptTripUseCase acceptTripUseCase;
  final DeclineTripUseCase declineTripUseCase;
  final ProcessTripRequestUseCase processTripRequestUseCase;
  final DriverGetRouteUseCase driverGetRouteUseCase;
  StreamSubscription? _tripRequestSubscription;
  StreamSubscription? _multiEventSubscription;
  DriverTripBloc({
    required this.listenForEvents,
    required this.listenForMultiEvents,
    required this.acceptTripUseCase,
    required this.declineTripUseCase,
    required this.processTripRequestUseCase,
    required this.driverGetRouteUseCase,
  }) : super(const DriverTripState.idle()) {
    on<DriverTripRequestReceived>(_onDriverTripRequestReceived);
    // on<DriverTripAcceptedConfirmation>(_onDriverTripAcceptedConfirmation);
    on<DriverTripInitialize>(_onDriverTripInitialize);
    on<DriverTripAcceptTrip>(_onDriverTripAcceptTrip);
    on<DriverTripDeclineTrip>(_onDriverTripDeclineTrip);
    on<DriverTripExpired>(_onDriverTripExpired);
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
            if (tripEventData.eventType == TripEvents.tripRequest) {
              logger.info('Processing trip request received event');
              // final processedTripData = processTripRequestUseCase.call(
              //   tripEventData,
              // );
              add(DriverTripRequestReceived(trip: tripEventData.data));
              return;
            } else if (tripEventData.eventType ==
                TripEvents.tripAcceptedConfirmation) {
              logger.info('Processing trip accepted confirmation event');
              //add(DriverTripAcceptedConfirmation(confirmationTrip: tripEventData));
              return;
            } else if (tripEventData.eventType == TripEvents.tripTimeout) {
              logger.info('Processing trip timeout event');
              add(DriverTripExpired());
              return;
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

  @override
  Future<void> close() {
    _tripRequestSubscription?.cancel();
    _multiEventSubscription?.cancel();
    return super.close();
  }
}
