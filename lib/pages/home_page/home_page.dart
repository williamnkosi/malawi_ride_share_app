import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/pages/home_page/bloc/home_page_bloc.dart';
import 'package:web_socket/web_socket.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: const View(),
      ),
    );
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.of<HomePageBloc>(context).state.currentLocation == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : BlocBuilder<HomePageBloc, HomePageState1>(
            builder: (context, state) {
              return GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(
                      37.4223, -122.0848), // Coordinates for San Francisco
                  zoom: 13,
                ),
                markers: {
                  Marker(
                      markerId: const MarkerId('currentLcoation'),
                      position: state.currentLocation!,
                      icon: BitmapDescriptor.defaultMarker),
                },
                // polylines: Set<Polyline>.of(_polylines.values),
              );
            },
          );
  }
}

class WebSocketExample extends StatefulWidget {
  const WebSocketExample({super.key});

  @override
  State<WebSocketExample> createState() => _WebSocketExampleState();
}

class _WebSocketExampleState extends State<WebSocketExample> {
  late WebSocket webSocket;
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    _connectToWebSocket();
  }

  // Connect to the WebSocket server
  void _connectToWebSocket() async {
    webSocket = await WebSocket.connect(Uri.parse(
        'ws://172.0.0.2:8080/ws/drivers')); // Replace with your WebSocket server URL
    webSocket.events.listen((e) {
      if (e is TextDataReceived) {
        setState(() {
          messages.add('Server: ${e.text}');
        });
      } else if (e is CloseReceived) {
        setState(() {
          messages.add('Connection to server closed: ${e.code} [${e.reason}]');
        });
      } else {
        print('Unknown event: $e');
      }
    });
  }

  @override
  void dispose() {
    webSocket.close(); // Close WebSocket connection
    _controller.dispose();
    super.dispose();
  }

  void _sendMessage() {
    // if (_controller.text.isNotEmpty) {
    //   webSocket.add(_controller.text); // Send a message
    //   setState(() {
    //     messages.add('You: ${_controller.text}');
    //   });
    //   _controller.clear();
    // }
    print("tewst");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WebSocket Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Text(messages[index]);
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration:
                        const InputDecoration(hintText: 'Enter message'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
