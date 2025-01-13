import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'ride_share_event.dart';
part 'ride_share_state.dart';

class RideShareBloc extends Bloc<RideShareEvent, RideShareState> {
  RideShareBloc() : super(RideShareInitial()) {
    on<RideShareEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
