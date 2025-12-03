import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';

part 'driver_trip_event.dart';
part 'driver_trip_state.dart';
part 'driver_trip_bloc.freezed.dart';

class DriverTripBloc extends Bloc<DriverTripEvent, DriverTripState> {
  final logger = Logger('DriverTripBloc');
  DriverTripBloc() : super(const DriverTripState.idle()) {
    on<DriverTripRequestReceived>(_onDriverTripRequestReceived);
  }

  _onDriverTripRequestReceived(
    DriverTripRequestReceived event,
    Emitter<DriverTripState> emit,
  ) async {}
}
