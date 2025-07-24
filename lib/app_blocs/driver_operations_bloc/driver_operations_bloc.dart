import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_operations_event.dart';
part 'driver_operations_state.dart';
part 'driver_operations_bloc.freezed.dart';

class DriverOperationsBloc
    extends Bloc<DriverOperationsEvent, DriverOperationsState> {
  DriverOperationsBloc() : super(_Initial()) {
    on<DriverOperationsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
