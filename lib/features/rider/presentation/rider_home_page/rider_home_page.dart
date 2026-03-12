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
    fetchPlaceDetailsWithCoordinates: true,
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

  Prediction? _pickUpPrediction;
  Prediction? _dropOffPrediction;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext _) {
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
                  onSuggestionClicked: (Prediction prediction) {
                    _pickupController.text = prediction.description ?? '';
                    _pickUpPrediction = prediction;
                    logger.info(
                      'Pickup prediction set: ${prediction.description}',
                    );
                  },
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
                    _pickUpPrediction = prediction;
                    logger.info(
                      'Selected place: ${prediction.description}, '
                      'Lat: ${prediction.lat}, Lng: ${prediction.lng}',
                    );
                  },
                  onSuggestionClicked: (Prediction prediction) {
                    _dropOffController.text = prediction.description ?? '';
                    _dropOffPrediction = prediction;
                    logger.info(
                      'Dropoff prediction set: ${prediction.description}',
                    );
                  },
                  minInputLength: 3,
                ),
                const SizedBox(height: 24),
                BlocBuilder<RiderOperationsBloc, RiderOperationsState>(
                  builder: (context, state) {
                    return TextButton(
                      onPressed: () {
                        logger.info('Submit button pressed');
                        logger.info('Pickup prediction: $_pickUpPrediction');
                        logger.info('Dropoff prediction: $_dropOffPrediction');

                        // Check if predictions are set
                        if (_pickUpPrediction == null ||
                            _dropOffPrediction == null) {
                          logger.warning(
                            'Please select both pickup and drop-off locations',
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please select both pickup and drop-off locations',
                              ),
                            ),
                          );
                          return;
                        }

                        if (_formKey.currentState!.validate()) {
                          logger.info(
                            'Form is valid, adding request trip event',
                          );
                          context.read<RiderOperationsBloc>().add(
                            RequestTripEvent(
                              pickupLat: double.parse(_pickUpPrediction!.lat!),
                              pickupLng: double.parse(_pickUpPrediction!.lng!),
                              pickupAddress: _pickUpPrediction!.description!,
                              destinationLat: double.parse(
                                _dropOffPrediction!.lat!,
                              ),
                              destinationLng: double.parse(
                                _dropOffPrediction!.lng!,
                              ),
                              destinationAddress:
                                  _dropOffPrediction!.description!,
                            ),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
