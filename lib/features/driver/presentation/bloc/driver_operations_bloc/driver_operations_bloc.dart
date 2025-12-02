import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip_request.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/get_current_location.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_offline_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_online_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/initialize_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/listen_trip_request_use_case.dart';
import 'package:malawi_ride_share_app/models/trip_model.dart';

part 'driver_operations_event.dart';
part 'driver_operations_state.dart';
part 'driver_operations_bloc.freezed.dart';

class DriverOperationsBloc
    extends Bloc<DriverOperationsEvent, DriverOperationsState> {
  final logger = Logger('DriverOperationsBloc');
  final InitializeUseCase initializeUseCase;
  final GoOnLineUseCase goOnLineUseCase;
  final GoOfflineUseCase goOfflineUseCase;
  final ListenTripRequestUseCase listenTripRequestUseCase;
  final GetCurrentLocationUseCase getCurrentLocation;

  StreamSubscription<dynamic>? _tripRequestSubscription;
  StreamSubscription<Position>? _locationSubscription;

  DriverOperationsBloc({
    required this.initializeUseCase,
    required this.goOfflineUseCase,
    required this.goOnLineUseCase,
    required this.listenTripRequestUseCase,
    required this.getCurrentLocation,
  }) : super(const DriverOperationsState.initial()) {
    on<DriverOperationsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<DriverOperationsInitialize>(_onDriverOperationsInitialize);
    on<DriverOperationsGoOffline>(_onDriverOperationsGoOffline);
    on<DriverOperationsGoOnline>(_onDriverOperationsGoOnline);
    on<DriverOperationsLocationUpdated>(_onLocationUpdated);
    on<DriverOperationsTripRequestReceived>(_onTripRequestReceived);
    //on<DriverOperationsAcceptTrip>(_onTripRequestAccepted);
  }

  void _setupTripRequestListener() {
    _tripRequestSubscription = listenTripRequestUseCase.call(null).listen((
      onData,
    ) {
      logger.info('Trip request received: $onData');
      add(DriverOperationsEvent.tripRequestReceived(tripData: onData));
    });
  }

  void _onTripRequestReceived(
    DriverOperationsTripRequestReceived event,
    Emitter<DriverOperationsState> emit,
  ) {
    logger.info('Handling trip request in BLoC: ${event.tripData}');
    // Handle the trip request - update state, show notification, etc.
    emit(
      DriverOperationsState.tripRequestReceived(
        driverTripRequest: event.tripData,
      ),
    );
  }

  _onDriverOperationsInitialize(
    DriverOperationsInitialize event,
    Emitter<DriverOperationsState> emit,
  ) async {
    try {
      emit(const DriverOperationsState.loading());

      var currentLocation = await initializeUseCase.call(null);
      logger.info('DriverOperationsBloc initialized successfully.');
      emit(DriverOperationsState.offline(lastKnownLocation: currentLocation));

      await _locationSubscription?.cancel();
      _locationSubscription = goOfflineUseCase
          .call(null)
          .listen(
            (position) {
              if (!isClosed) {
                add(DriverOperationsLocationUpdated(position));
              }
            },
            onError: (error) {
              logger.severe(
                'Location stream error during initialization: $error',
              );
              if (!isClosed) {
                emit(
                  DriverOperationsState.error(
                    message: 'Location tracking failed',
                  ),
                );
              }
            },
          );
    } catch (e) {
      logger.severe('Error during driver operations initialization: $e');
      emit(DriverOperationsState.error(message: 'Failed to connect to server'));
    }
  }

  // _onTripRequestAccepted(DriverOperationsAcceptTrip event,
  //     Emitter<DriverOperationsState> emit) async {
  //   try {
  //     TripRequestNotificationDto? currentTripRequest = state.maybeWhen(
  //         tripRequestReceived: (tripRequest) {
  //           return tripRequest;
  //         },
  //         orElse: () => null);

  //     emit(const DriverOperationsState.loading());
  //     // Accept the trip request
  //     driverOperationsRepository.acceptTrip(tripId: currentTripRequest!.tripId);

  //     _onRouteLocationSubscription =
  //         locationRepository.getLocationStream().listen((position) async {
  //       // Handle location updates while en route to pickup
  //       emit(DriverOperationsState.enRouteToPickup(
  //         currentLocation: position,
  //         activeTrip: currentTripRequest,
  //         estimatedPickupTime: DateTime.now().add(Duration(minutes: 5)),
  //         onlineTime: DateTime.now(),
  //       ));
  //     });
  //   } catch (e) {
  //     logger.severe('Error accepting trip request: $e');
  //     emit(DriverOperationsState.error(
  //       message: 'Failed to accept trip request: ${e.toString()}',
  //     ));
  //   }
  // }

  _onDriverOperationsGoOffline(
    DriverOperationsGoOffline event,
    Emitter<DriverOperationsState> emit,
  ) async {
    try {
      // Get initial location
      var lastKnownLocation = await getCurrentLocation.call(null);
      emit(DriverOperationsState.offline(lastKnownLocation: lastKnownLocation));

      // Continue listening for location updates even when offline
      await _locationSubscription?.cancel();
      _locationSubscription = goOfflineUseCase
          .call(null)
          .listen((position) => add(DriverOperationsLocationUpdated(position)));

      logger.info('Driver went offline');
    } catch (e) {
      logger.severe('Error going offline: $e');
      emit(
        DriverOperationsState.error(
          message: 'Failed to go offline: ${e.toString()}',
        ),
      );
    }
  }

  _onDriverOperationsGoOnline(
    DriverOperationsGoOnline event,
    Emitter<DriverOperationsState> emit,
  ) async {
    try {
      var currentLocation = await getCurrentLocation.call(null);
      emit(DriverOperationsState.online(currentLocation: currentLocation));

      await _locationSubscription?.cancel();
      _locationSubscription = goOnLineUseCase
          .call(null)
          .listen((position) => add(DriverOperationsLocationUpdated(position)));
      _setupTripRequestListener();

      logger.info('Driver went online');
    } catch (e) {
      logger.severe('Error going online: $e');
      emit(
        DriverOperationsState.error(
          message: 'Failed to go online: ${e.toString()}',
        ),
      );
    }
  }

  _onLocationUpdated(
    DriverOperationsLocationUpdated event,
    Emitter<DriverOperationsState> emit,
  ) {
    state.maybeWhen(
      online: (currentLocation) {
        emit(DriverOperationsState.online(currentLocation: event.position));
      },
      offline: (lastKnownLocation) {
        emit(DriverOperationsState.offline(lastKnownLocation: event.position));
      },
      orElse: () {
        logger.warning(
          'Location update received but driver is not in a trackable state',
        );
      },
    );
  }

  @override
  Future<void> close() {
    _tripRequestSubscription?.cancel();
    _locationSubscription?.cancel();
    return super.close();
  }
}
