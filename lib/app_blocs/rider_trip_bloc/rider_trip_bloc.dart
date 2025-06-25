import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'rider_trip_bloc.freezed.dart';
part 'rider_trip_event.dart';
part 'rider_trip_state.dart';

class RiderTripBloc extends Bloc<RiderTripEvent, RiderTripState> {
  RiderTripBloc() : super(const RiderTripState()) {
    on<RiderTripSubmitTrip>(_onRiderTripSubmitTrip);
  }

  _onRiderTripSubmitTrip(RiderTripSubmitTrip event, emit) {}
}
