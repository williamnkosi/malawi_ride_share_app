import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/driver_operations_repository.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/models/trip_request_model.dart';
import 'package:malawi_ride_share_app/models/trip_model.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/repository/location_repository.dart';

part 'driver_operations_event.dart';
part 'driver_operations_state.dart';
part 'driver_operations_bloc.freezed.dart';

class DriverOperationsBloc
    extends Bloc<DriverOperationsEvent, DriverOperationsState> {
  final logger = Logger('DriverOperationsBloc');
  final LocationRepository locationRepository;
  final FirebaseRepository firebaseRepository;
  final DriverOperationsRepository driverOperationsRepository;
  StreamSubscription<Position>? _locationSubscription;
  Timer? _locationUpdateTimer;
  DriverOperationsBloc(
      {required this.firebaseRepository,
      required this.locationRepository,
      required this.driverOperationsRepository})
      : super(const DriverOperationsState.initial()) {
    on<DriverOperationsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<DriverOperationsInitialize>(_onDriverOperationsInitialize);
    on<DriverOperationsGoOffline>(_onDriverOperationsGoOffline);
    on<DriverOperationsGoOnline>(_onDriverOperationsGoOnline);
    on<DriverOperationsLocationUpdated>(_onLocationUpdated);
  }

  _onDriverOperationsInitialize(DriverOperationsInitialize event,
      Emitter<DriverOperationsState> emit) async {
    emit(const DriverOperationsState.loading());
    final currentLocation = await locationRepository.getCurrentLocation();
    final firebaseId = await firebaseRepository.getCurrentUser();

    if (currentLocation == null) {
      emit(const DriverOperationsState.error(
        message: 'Unable to get current location. Please check GPS settings.',
      ));
      return;
    }
    await driverOperationsRepository.initializeSocket(
        firebaseId: firebaseId.uid,
        currentLocation: LocationDto(
            latitude: currentLocation.latitude,
            longitude: currentLocation.longitude));
    emit(DriverOperationsState.offline(
      lastKnownLocation: currentLocation,
    ));
  }

  _onDriverOperationsGoOffline(DriverOperationsGoOffline event,
      Emitter<DriverOperationsState> emit) async {
    try {
      // Stop location tracking
      await _stopLocationTracking();

      final currentLocation = await locationRepository.getCurrentLocation();
      final firebaseId = await firebaseRepository.getCurrentUser();
      await driverOperationsRepository.goOffline(firebaseId: firebaseId.uid);
      emit(DriverOperationsState.offline(
        lastKnownLocation: currentLocation,
      ));

      logger.info('Driver went offline');
    } catch (e) {
      logger.severe('Error going offline: $e');
      emit(DriverOperationsState.error(
        message: 'Failed to go offline: ${e.toString()}',
      ));
    }
  }

  _onDriverOperationsGoOnline(DriverOperationsGoOnline event,
      Emitter<DriverOperationsState> emit) async {
    try {
      emit(const DriverOperationsState.loading());

      final currentLocation = await locationRepository.getCurrentLocation();
      final firebaseId = await firebaseRepository.getCurrentUser();

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        emit(const DriverOperationsState.error(
          message: 'Location permission denied. Please enable it in settings.',
        ));
        return;
      }

      if (currentLocation == null) {
        emit(const DriverOperationsState.error(
          message: 'Unable to get current location. Please check GPS settings.',
        ));
        return;
      } // Set online time

      await driverOperationsRepository.goOnline(
          firebaseId: firebaseId.uid,
          currentLocation: LocationDto(
              latitude: currentLocation.latitude,
              longitude: currentLocation.longitude));

      emit(DriverOperationsState.online(
        currentLocation: currentLocation,
      ));

      _locationSubscription = locationRepository.getLocationStream().listen(
        (position) {
          logger.info(
              'Tracking location for driver: ${firebaseId.uid}. Position: ${position.latitude}, ${position.longitude}');
          // Emit location update to socket
          emit(DriverOperationsState.online(
            currentLocation: position,
          ));
          driverOperationsRepository.startTrackingLocation(
            firebaseId: firebaseId.uid,
            currentLocation: position,
          );
        },
        onError: (error) {
          logger.severe('Location stream error: $error');
        },
      );

      logger.info('Driver went online');
    } catch (e) {
      logger.severe('Error going online: $e');
      emit(DriverOperationsState.error(
        message: 'Failed to go online: ${e.toString()}',
      ));
    }
  }

  _onLocationUpdated(DriverOperationsLocationUpdated event,
      Emitter<DriverOperationsState> emit) {
    state.maybeWhen(
      online: (currentLocation) {
        emit(DriverOperationsState.online(
          currentLocation: event
              .position, // Note: use event.position, not event.currentLocation
        ));
      },
      orElse: () {
        logger.warning(
            'Location update received but driver is not in a trackable state');
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
    return super.close();
  }
}
