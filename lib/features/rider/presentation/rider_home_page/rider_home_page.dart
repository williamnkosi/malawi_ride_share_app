import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_places_autocomplete_text_field/google_places_autocomplete_text_field.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/rider/presentation/bloc/rider_operations_bloc/rider_operations_bloc.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class RiderHomePage extends StatefulWidget {
  const RiderHomePage({super.key, required this.title});

  final String title;

  @override
  State<RiderHomePage> createState() => _RiderHomePageState();
}

class _RiderHomePageState extends State<RiderHomePage> {
  final logger = Logger('RiderHomePage');

  final _config = GoogleApiConfig(
    apiKey: dotenv.env['GOOGLE_PLACES_API_KEY']!,
    // Malawi coordinates center
    // locationRestriction: LocationConfig.circle(
    //   circleCenter: const Coordinates(latitude: -13.2543, longitude: 34.3015),
    //   circleRadiusInKilometers: 500,
    // ),
    // only needed if you build for the web
    // proxyURL: 'https://your-proxy.com/',
  );

  final _pickupController = TextEditingController();
  final _dropOffController = TextEditingController();

  late Prediction _pickUpPrediction;
  late Prediction _dropOffPrediction;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) =>
          getIt<RiderOperationsBloc>()
            ..add(const RiderOperationsEvent.initialize()),
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            autovalidateMode: _autovalidateMode,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GooglePlacesAutoCompleteTextFormField(
                  config: _config,
                  textEditingController: _pickupController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your pickup location',
                    labelText: 'Your pickup Location ',
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  // proxyURL: _yourProxyURL,
                  maxLines: 1,
                  overlayContainerBuilder: (child) => Material(
                    elevation: 1.0,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    child: child,
                  ),
                  onPredictionWithCoordinatesReceived: (prediction) {
                    _pickUpPrediction = prediction;
                    logger.info(
                      'Selected place: ${prediction.description}, '
                      'Lat: ${prediction.lat}, Lng: ${prediction.lng}',
                    );
                  },
                  onSuggestionClicked: (Prediction prediction) =>
                      _pickupController.text = prediction.description!,
                  minInputLength: 3,
                ),
                const SizedBox(height: 24),
                GooglePlacesAutoCompleteTextFormField(
                  config: _config,
                  textEditingController: _dropOffController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your drop-off location',
                    labelText: 'Your drop-off Location ',
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  // proxyURL: _yourProxyURL,
                  maxLines: 1,
                  overlayContainerBuilder: (child) => Material(
                    elevation: 1.0,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    child: child,
                  ),
                  onPredictionWithCoordinatesReceived: (prediction) {
                    _dropOffPrediction = prediction;
                    logger.info(
                      'Selected place: ${prediction.description}, '
                      'Lat: ${prediction.lat}, Lng: ${prediction.lng}',
                    );
                  },
                  onSuggestionClicked: (Prediction prediction) =>
                      _dropOffController.text = prediction.description!,
                  minInputLength: 3,
                ),
                const SizedBox(height: 24),
                TextButton(onPressed: _onSubmit, child: const Text('Submit')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onSubmit() async {
    if (!_formKey.currentState!.validate()) {
      setState(() => _autovalidateMode = AutovalidateMode.always);
      context.read<RiderOperationsBloc>().add(
        RequestTripEvent(
          pickupLat: _pickUpPrediction.lat! as double,
          pickupLng: _pickUpPrediction.lng! as double,
          pickupAddress: _pickUpPrediction.description!,
          destinationLat: _dropOffPrediction.lat! as double,
          destinationLng: _dropOffPrediction.lng! as double,
          destinationAddress: _dropOffPrediction.description!,
        ),
      );
      return;
    }
  }
}
