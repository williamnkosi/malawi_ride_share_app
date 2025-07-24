import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/models/trip_request_model.dart';
import 'package:malawi_ride_share_app/models/trip_model.dart';

part 'driver_operations_event.dart';
part 'driver_operations_state.dart';
part 'driver_operations_bloc.freezed.dart';

class DriverOperationsBloc
    extends Bloc<DriverOperationsEvent, DriverOperationsState> {
  DriverOperationsBloc() : super(const DriverOperationsState.initial()) {
    on<DriverOperationsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
