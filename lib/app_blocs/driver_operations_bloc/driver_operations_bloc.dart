import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/models/trip_request_model.dart';
import 'package:malawi_ride_share_app/models/trip_model.dart';
import 'package:malawi_ride_share_app/repository/location_repository.dart';

part 'driver_operations_event.dart';
part 'driver_operations_state.dart';
part 'driver_operations_bloc.freezed.dart';

class DriverOperationsBloc
    extends Bloc<DriverOperationsEvent, DriverOperationsState> {
  final logger = Logger('DriverOperationsBloc');
  final LocationRepository locationRepository;
  DriverOperationsBloc({required this.locationRepository})
      : super(const DriverOperationsState.initial()) {
    on<DriverOperationsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<DriverOperationsInitialize>(_onDriverOperationsInitialize);
  }

  _onDriverOperationsInitialize(DriverOperationsInitialize event,
      Emitter<DriverOperationsState> emit) async {
    emit(const DriverOperationsState.loading());
    var currentLocation = await locationRepository.getCurrentLocation();
    emit(DriverOperationsState.offline(
      lastKnownLocation: currentLocation,
    ));
  }
}
