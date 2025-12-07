import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_offline_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_online_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/initialize_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';

part 'driver_operations_event.dart';
part 'driver_operations_state.dart';
part 'driver_operations_bloc.freezed.dart';

class DriverOperationsBloc
    extends Bloc<DriverOperationsEvent, DriverOperationsState> {
  final logger = Logger('DriverOperationsBloc');
  final DriverTripBloc driverTripBloc;
  final InitializeUseCase initializeUseCase;
  final GoOnLineUseCase goOnLineUseCase;
  final GoOfflineUseCase goOfflineUseCase;

  DriverOperationsBloc({
    required this.driverTripBloc,
    required this.initializeUseCase,
    required this.goOfflineUseCase,
    required this.goOnLineUseCase,
  }) : super(const DriverOperationsState.initial()) {
    on<DriverOperationsInitialize>(_onDriverOperationsInitialize);
    on<DriverOperationsGoOffline>(_onDriverOperationsGoOffline);
    on<DriverOperationsGoOnline>(_onDriverOperationsGoOnline);
    on<DriverOperationsUpdateLocation>(_onDriverOperationsUpdateLocation);
  }

  _onDriverOperationsInitialize(
    DriverOperationsInitialize event,
    Emitter<DriverOperationsState> emit,
  ) async {
    try {
      emit(const DriverOperationsState.loading());
      await initializeUseCase.call(null);
      driverTripBloc.add(DriverTripInitialize());
      logger.info('DriverOperationsBloc initialized successfully.');
      emit(DriverOperationsState.offline());
    } catch (e) {
      logger.severe('Error during driver operations initialization: $e');
      emit(DriverOperationsState.error(message: 'Failed to connect to server'));
    }
  }

  _onDriverOperationsGoOffline(
    DriverOperationsGoOffline event,
    Emitter<DriverOperationsState> emit,
  ) async {
    try {
      logger.info('Driver went offline');
      await goOfflineUseCase.call(null);
      emit(const DriverOperationsState.offline());
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
      logger.info('Driver went online');
      emit(DriverOperationsState.online());
    } catch (e) {
      logger.severe('Error going online: $e');
      emit(
        DriverOperationsState.error(
          message: 'Failed to go online: ${e.toString()}',
        ),
      );
    }
  }

  _onDriverOperationsUpdateLocation(
    DriverOperationsUpdateLocation event,
    Emitter<DriverOperationsState> emit,
  ) async {
    try {
      state.maybeWhen(
        online: () async {
          await goOnLineUseCase.call(event.location);
          logger.info(
            'Driver location updated: (${event.location.latitude}, ${event.location.longitude})',
          );
        },
        orElse: () {
          // Driver is not online, optionally log this
          logger.info('Driver is not online, skipping location update');
        },
      );
    } catch (e) {
      logger.severe('Error updating location: $e');
      emit(
        DriverOperationsState.error(
          message: 'Failed to update location: ${e.toString()}',
        ),
      );
    }
  }
}
