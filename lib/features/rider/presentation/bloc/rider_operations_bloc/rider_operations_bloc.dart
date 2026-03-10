import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rider_operations_event.dart';
part 'rider_operations_state.dart';
part 'rider_operations_bloc.freezed.dart';

class RiderOperationsBloc
    extends Bloc<RiderOperationsEvent, RiderOperationsState> {
  RiderOperationsBloc() : super(const RiderOperationsState.initial()) {
    on<RequestTripEvent>(_onRequestTrip);
    on<CancelTripEvent>(_onCancelTrip);
    on<RateTripEvent>(_onRateTrip);
  }

  Future<void> _onRequestTrip(
    RequestTripEvent event,
    Emitter<RiderOperationsState> emit,
  ) async {
    try {
      emit(
        RiderOperationsState.searching(
          pickupAddress: event.pickupAddress,
          destinationAddress: event.destinationAddress,
        ),
      );

      // TODO: Call use case to request trip from backend
      // TODO: Listen for socket events for driver matching
    } catch (e) {
      emit(RiderOperationsState.error(message: 'Failed to request trip: $e'));
    }
  }

  Future<void> _onCancelTrip(
    CancelTripEvent event,
    Emitter<RiderOperationsState> emit,
  ) async {
    try {
      // TODO: Call use case to cancel trip
      emit(
        RiderOperationsState.tripCancelled(
          reason: event.reason ?? 'Trip cancelled by rider',
        ),
      );
    } catch (e) {
      emit(RiderOperationsState.error(message: 'Failed to cancel trip: $e'));
    }
  }

  Future<void> _onRateTrip(
    RateTripEvent event,
    Emitter<RiderOperationsState> emit,
  ) async {
    try {
      // TODO: Call use case to submit rating
      // TODO: Return to initial state after successful rating
      emit(const RiderOperationsState.initial());
    } catch (e) {
      emit(RiderOperationsState.error(message: 'Failed to rate trip: $e'));
    }
  }
}
