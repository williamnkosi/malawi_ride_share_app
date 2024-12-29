import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:web_socket_client/web_socket_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppEventInitial>(_onIntial);
  }

  _onIntial<AppEventInitial>(event, emit) async {
    final uri = Uri.parse('ws://10.0.2.2:8080/ws/drivers');
    final timeout = Duration(seconds: 10);
    print('uri: "$uri"');

    const backoff = ConstantBackoff(Duration(seconds: 5));
    final header = { "Authorization": "testing", "DriverId": "1" };
      
    var _socket = WebSocket(uri,headers: header, timeout: timeout);

    _socket = WebSocket(uri);
_socket.send('ping');
    // Listen for connection state changes
    _socket.connection.listen((state) {
    print("RUNNING");
      if (state is Connected) {
        print(state);
      } else if (state is Disconnected) {
        print(state);
      } else {
        print(state);
       _socket.send('ping');
      }
    }, onError: (error) {
      print('error: "$error"');
    }, onDone: () {
      print('done');
    });

    _socket.messages.listen((message) {
      print('message: "$message"');

      // Send a message to the server.
      _socket.send('ping');
    });

    // socket.messages.listen((message) {
    //   print('message: "$message"');

    //   // Send a message to the server.
    //   socket.send('ping');
    // });
    // await Future<void>.delayed(const Duration(seconds: 3));

    // // Close the connection.
    // socket.close();
    print("RAN");

    emit(const AppState());
  }
}
