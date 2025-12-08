import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/driver_trip_use_cases/listen_for_trips.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';

part 'driver_trip_event.dart';
part 'driver_trip_state.dart';
part 'driver_trip_bloc.freezed.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  final logger = Logger('DriverTripBloc');
  final ListenForEvents listenForEvents;
  StreamSubscription? _tripRequestSubscription;
  DriverTripBloc({required this.listenForEvents})
    : super(const DriverTripState.idle()) {
    on<DriverTripRequestReceived>(_onDriverTripRequestReceived);
    on<DriverTripInitialize>(_onDriverTripInitialize);
  }

  _onDriverTripInitialize(
    DriverTripInitialize event,
    Emitter<DriverTripState> emit,
  ) async {
    logger.info('Starting to listen for trip events');

    _tripRequestSubscription = listenForEvents
        .call(null)
        .listen(
          (driverTrip) {
            logger.info('=== STREAM LISTENER TRIGGERED ===');
            logger.info('Trip request received: ${driverTrip.toString()}');
            logger.info('Current bloc state: ${state.runtimeType}');

            final event = DriverTripRequestReceived(trip: driverTrip);
            logger.info('Adding event: ${event.runtimeType}');
            add(event);
            logger.info('Event added to bloc');
          },
          onError: (error) {
            logger.severe('Error listening for trip events: $error');
            // Can't emit state directly from stream listener
            // Consider adding an error event if needed
          },
          onDone: () {
            logger.info('Trip events stream completed');
          },
        );
    logger.info('DriverTripBloc initialized and listening for trips.');
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

  @override
  Future<void> close() {
    _tripRequestSubscription?.cancel();
    return super.close();
  }
}
