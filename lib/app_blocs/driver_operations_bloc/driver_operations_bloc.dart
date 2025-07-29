import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/driver_operations_repository.dart';
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
  }

  _onDriverOperationsInitialize(DriverOperationsInitialize event,
      Emitter<DriverOperationsState> emit) async {
    emit(const DriverOperationsState.loading());
    var currentLocation = await locationRepository.getCurrentLocation();
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

      if (currentLocation == null) {
        emit(const DriverOperationsState.error(
          message: 'Unable to get current location. Please check GPS settings.',
        ));
        return;
      } // Set online time

      await driverOperationsRepository.goOnline(
          firebaseId: firebaseId.uid, currentLocation: currentLocation);

      emit(DriverOperationsState.online(
        currentLocation: currentLocation,
        isTrackingLocation: true,
      ));

      _locationSubscription = locationRepository.getLocationStream().listen(
        (position) {
          emit(DriverOperationsState.online(
            currentLocation: position,
            onlineTime: DateTime.now(),
            isTrackingLocation: true,
          ));
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

  Future<void> _stopLocationTracking() async {
    await _locationSubscription?.cancel();
    _locationSubscription = null;

    _locationUpdateTimer?.cancel();
    _locationUpdateTimer = null;
  }

  @override
  Future<void> close() {
    _stopLocationTracking();
    return super.close();
  }
}
