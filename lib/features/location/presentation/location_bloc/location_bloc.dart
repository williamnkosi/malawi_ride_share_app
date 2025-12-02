import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/location/domain/use_case/get_location_use_case.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final GetLocationUseCase getLocationUseCase;
  LocationBloc({required this.getLocationUseCase})
    : super(const LocationState.start()) {
    on<LocationStartTracking>(_onStartTracking);
    on<LocationUpdateSettings>(_onUpdateSettings);
  }

  _onStartTracking(
    LocationStartTracking event,
    Emitter<LocationState> emit,
  ) async {
    await emit.forEach<LocationEntity>(
      getLocationUseCase.call(null),
      onData: (locationEntity) {
        return LocationActive(currentPosition: locationEntity);
      },
      onError: (error, stackTrace) {
        return LocationErrors(message: error.toString());
      },
    );
  }

  _onUpdateSettings(
    LocationUpdateSettings event,
    Emitter<LocationState> emit,
  ) {}
}
