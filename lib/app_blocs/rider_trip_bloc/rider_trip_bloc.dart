import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/rider_trip_bloc/rider_trip_repository.dart';
part 'rider_trip_bloc.freezed.dart';
part 'rider_trip_event.dart';
part 'rider_trip_state.dart';

class RiderTripBloc extends Bloc<RiderTripEvent, RiderTripState> {
  static const loggerName = 'DriverTripBloc';
  final RiderTripRepository _driverTripRepository =
      GetIt.instance<RiderTripRepository>();

  final logger = Logger('RiderTripBloc');
  RiderTripBloc() : super(const RiderTripState()) {
    on<RiderTripSubmitTrip>(_onRiderTripSubmitTrip);
  }

  _onRiderTripSubmitTrip(RiderTripSubmitTrip event, emit) {
    try {
      _driverTripRepository.requestTrip(
          startLocation: event.startLocation, endLocation: event.endLocation);
    } catch (e) {
      logger.severe('Failed to request a trip');
    }
  }
}
