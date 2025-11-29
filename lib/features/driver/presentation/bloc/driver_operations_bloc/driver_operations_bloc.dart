import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_offline_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_online_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/initialize_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request.dto.dart';
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
  StreamSubscription<Position>? _locationSubscription;
  StreamSubscription<dynamic>? _tripRequestSubscription;
  Timer? _locationUpdateTimer;
  DriverOperationsBloc({
    required this.initializeUseCase,
    required this.goOfflineUseCase,
    required this.goOnLineUseCase,
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

    // Subscribe to trip request events from socket
    // _setupTripRequestListener();
  }

  // void _setupTripRequestListener() {
  //   _tripRequestSubscription = driverOperationsRepository
  //       .driverTripSocketService
  //       .on<Map<String, dynamic>>('trip:new_request')
  //       .listen((data) {
  //     final tripData = TripRequestNotificationDto.fromJson(data);
  //     logger.info('🚗 Trip request received from socket: $data');
  //     add(DriverOperationsEvent.tripRequestReceived(tripData: tripData));
  //   });
  // }

  void _onTripRequestReceived(
    DriverOperationsTripRequestReceived event,
    Emitter<DriverOperationsState> emit,
  ) {
    logger.info('Handling trip request in BLoC: ${event.tripData}');
    // Handle the trip request - update state, show notification, etc.
    emit(
      DriverOperationsState.tripRequestReceived(tripRequest: event.tripData),
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
      // Stop location tracking
      await _stopLocationTracking();
      var current = await goOfflineUseCase.call(null);
      emit(DriverOperationsState.offline(lastKnownLocation: current));

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
      emit(const DriverOperationsState.loading());

      _locationSubscription = await goOnLineUseCase.call(null);
      _locationSubscription!.onData((position) {
        add(DriverOperationsLocationUpdated(position));
      });
      emit(DriverOperationsState.online(currentLocation: null));

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
        emit(
          DriverOperationsState.online(
            currentLocation: event
                .position, // Note: use event.position, not event.currentLocation
          ),
        );
      },
      orElse: () {
        logger.warning(
          'Location update received but driver is not in a trackable state',
        );
      },
    );
  }

  Future<void> _stopLocationTracking() async {
    try {
      await _locationSubscription?.cancel();
      _locationSubscription = null;

      _locationUpdateTimer?.cancel();
      _locationUpdateTimer = null;
    } catch (e) {
      logger.severe('Error stopping location tracking: $e');
    }
  }

  @override
  Future<void> close() {
    _stopLocationTracking();
    _tripRequestSubscription?.cancel();
    return super.close();
  }
}
