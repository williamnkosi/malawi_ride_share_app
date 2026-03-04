import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/location/presentation/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class DriverActiveTripMapView extends StatelessWidget {
  DriverActiveTripMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return state.maybeWhen(
          active: (location) =>
              MapView(key: const ValueKey('driver_map'), location: location),
          errors: (striing, location) => Expanded(child: Text('data')),
          orElse: () {
            return Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}

class MapView extends StatefulWidget {
  final LocationEntity? location;

  const MapView({super.key, this.location});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final logger = Logger('DriverMap');
  GoogleMapController? _mapController;
  LocationEntity? _lastPosition;
  Set<Polyline> _polylines = {};

  @override
  void initState() {
    super.initState();
    _lastPosition = widget.location;
    
    // Read initial state from DriverTripBloc
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final tripState = context.read<DriverTripBloc>().state;
      tripState.maybeWhen(
        enRouteToPickup: (activeTrip, routeToPickup) {
          logger.info('Initial state: enRouteToPickup detected');
          _updateRoutePolyline(routeToPickup.polyline);
        },
        orElse: () {},
      );
    });
  }

  void _updateCameraPosition(LocationEntity? newPosition) {
    if (newPosition == null || _mapController == null) return;

    if (_lastPosition == null ||
        _lastPosition!.latitude != newPosition.latitude ||
        _lastPosition!.longitude != newPosition.longitude) {
      _mapController!.animateCamera(
        CameraUpdate.newLatLng(
          LatLng(newPosition.latitude, newPosition.longitude),
        ),
      );
      _lastPosition = newPosition;
    }
  }

  @override
  void didUpdateWidget(MapView oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateCameraPosition(widget.location);
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocListener<LocationBloc, LocationState>(
        listener: (context, state) {
          state.maybeWhen(
            active: (currentLocation) {
              _updateCameraPosition(currentLocation);
            },
            orElse: () {},
          );
        },
        child: BlocListener<DriverTripBloc, DriverTripState>(
          listener: (context, state) {
            logger.info('DriverTripBloc state changed: ${state.runtimeType}');
            state.maybeWhen(
              enRouteToPickup: (activeTrip, routeToPickup) {
                logger.info('enRouteToPickup state detected');
                _updateRoutePolyline(routeToPickup.polyline);
              },
              orElse: () {},
            );
          },
          child: GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
              _updateCameraPosition(widget.location);
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(
                widget.location?.latitude ?? 0,
                widget.location?.longitude ?? 0,
              ),
              zoom: 15.0,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            compassEnabled: true,
            mapToolbarEnabled: false,
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            polylines: _polylines,
            onTap: (LatLng position) {
              // TODO: Handle map tap if needed
            },
          ),
        ),
      ),
    );
  }

  void _updateRoutePolyline(String encodedPolyline) {
    final logger = Logger('DriverMap');
    logger.info('DEBUG: Encoded polyline: $encodedPolyline');
    final polylinePoints = PolylinePoints();
    final decodedPoints = polylinePoints.decodePolyline(encodedPolyline);
    logger.info('DEBUG: Decoded points count: ${decodedPoints.length}');

    final polylineCoordinates = <LatLng>[];
    if (decodedPoints.isNotEmpty) {
      polylineCoordinates.addAll(
        decodedPoints.map((point) => LatLng(point.latitude, point.longitude)),
      );
    }

    logger.info('DEBUG: Polyline coordinates: ${polylineCoordinates.length}');
    setState(() {
      _polylines.clear();
      _polylines.add(
        Polyline(
          polylineId: const PolylineId('route_to_pickup'),
          color: Colors.blue,
          points: polylineCoordinates,
          width: 5,
        ),
      );
      logger.info('DEBUG: Polylines updated, count: ${_polylines.length}');
    });
  }
}
