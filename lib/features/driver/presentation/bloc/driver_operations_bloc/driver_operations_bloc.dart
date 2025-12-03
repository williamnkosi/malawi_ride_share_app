import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_offline_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/go_online_use_case.dart';
import 'package:malawi_ride_share_app/features/driver/domain/usecase/initialize_use_case.dart';

part 'driver_operations_event.dart';
part 'driver_operations_state.dart';
part 'driver_operations_bloc.freezed.dart';

class DriverOperationsBloc
    extends Bloc<DriverOperationsEvent, DriverOperationsState> {
  final logger = Logger('DriverOperationsBloc');
  final InitializeUseCase initializeUseCase;
  final GoOnLineUseCase goOnLineUseCase;
  final GoOfflineUseCase goOfflineUseCase;

  DriverOperationsBloc({
    required this.initializeUseCase,
    required this.goOfflineUseCase,
    required this.goOnLineUseCase,
  }) : super(const DriverOperationsState.initial()) {
    on<DriverOperationsInitialize>(_onDriverOperationsInitialize);
    on<DriverOperationsGoOffline>(_onDriverOperationsGoOffline);
    on<DriverOperationsGoOnline>(_onDriverOperationsGoOnline);
  }

  _onDriverOperationsInitialize(
    DriverOperationsInitialize event,
    Emitter<DriverOperationsState> emit,
  ) async {
    try {
      emit(const DriverOperationsState.loading());

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
    } catch (e) {
      logger.severe('Error going online: $e');
      emit(
        DriverOperationsState.error(
          message: 'Failed to go online: ${e.toString()}',
        ),
      );
    }
  }
}
