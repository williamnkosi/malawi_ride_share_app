import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/rider/domain/rider_trip_repository.dart';

part 'rider_operations_event.dart';
part 'rider_operations_state.dart';
part 'rider_operations_bloc.freezed.dart';

class RiderOperationsBloc
    extends Bloc<RiderOperationsEvent, RiderOperationsState> {
  final logger = Logger('RiderOperationsBloc');
  final RiderTripRepository riderTripRepository;
  RiderOperationsBloc({required this.riderTripRepository})
    : super(const RiderOperationsState.initial()) {
    _initializeBloc();
    on<RequestTripEvent>(_onRequestTrip);
    on<CancelTripEvent>(_onCancelTrip);
    on<RateTripEvent>(_onRateTrip);
  }

  void _initializeBloc() {
    try {
      //riderTripRepository
    } catch (e) {
      logger.severe('Failed to initialize RiderOperationsBloc: $e');
    }
  }

  Future<void> _onRequestTrip(
    RequestTripEvent event,
    Emitter<RiderOperationsState> emit,
  ) async {
    try {
      await riderTripRepository.requestTrip(
        pickupAddress: event.pickupAddress,
        destinationAddress: event.destinationAddress,
        pickupLat: event.pickupLat,
        pickupLng: event.pickupLng,
        destinationLat: event.destinationLat,
        destinationLng: event.destinationLng,
      );
      emit(
        RiderOperationsState.searching(
          pickupAddress: event.pickupAddress,
          destinationAddress: event.destinationAddress,
        ),
      );
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
