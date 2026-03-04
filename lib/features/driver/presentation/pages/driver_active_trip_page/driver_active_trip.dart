import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/pages/driver_active_trip_page/widgets/driver_active_trip_info_card.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/pages/driver_active_trip_page/widgets/driver_active_trip_map_view.dart';
import 'package:malawi_ride_share_app/features/location/presentation/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class DriverActiveTrip extends StatelessWidget {
  final DriverTripEntity trip;

  const DriverActiveTrip({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<LocationBloc>()),
        BlocProvider.value(value: getIt<DriverTripBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Active Trip')),
        body: BlocBuilder<DriverTripBloc, DriverTripState>(
          builder: (context, state) {
            return state.maybeWhen(
              enRouteToPickup: (activeTrip, routeToPickup) {
                return ActiveTripWidget(trip: activeTrip);
              },
              inProgress: (activeTrip) {
                return ActiveTripWidget(trip: activeTrip);
              },
              completed: (distance, pickupTime, duration, rating) =>
                  CompletedTripInfo(
                    distance: distance,
                    pickupTime: pickupTime,
                    duration: duration,
                    rating: rating,
                  ),
              orElse: () {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
        ),
      ),
    );
  }
}

class CompletedTripInfo extends StatelessWidget {
  final double distance;
  final DateTime pickupTime;
  final Duration duration;
  final double? rating;

  const CompletedTripInfo({
    super.key,

    required this.distance,
    required this.pickupTime,
    required this.duration,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header with success message
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              border: Border(bottom: BorderSide(color: Colors.green.shade200)),
            ),
            child: Column(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green.shade600,
                  size: 48,
                ),
                const SizedBox(height: 12),
                Text(
                  'Trip Completed',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Safe travels!',
                  style: TextStyle(fontSize: 14, color: Colors.green.shade700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Trip summary cards
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // Rider info card
                _buildInfoCard(
                  icon: Icons.person,
                  title: 'Passenger',
                  value:
                      'N/A', // Placeholder, update with actual passenger info if available
                  color: Colors.blue,
                ),
                const SizedBox(height: 12),
                // Distance card
                _buildInfoCard(
                  icon: Icons.route,
                  title: 'Distance',
                  value: '${distance.toStringAsFixed(1)} km',
                  color: Colors.orange,
                ),
                const SizedBox(height: 12),
                // Duration card
                _buildInfoCard(
                  icon: Icons.access_time,
                  title: 'Duration',
                  value: _formatDuration(duration),
                  color: Colors.purple,
                ),
                const SizedBox(height: 12),
                // Pickup time card
                _buildInfoCard(
                  icon: Icons.schedule,
                  title: 'Pickup Time',
                  value: _formatTime(pickupTime),
                  color: Colors.teal,
                ),
                if (rating != null) ...[
                  const SizedBox(height: 12),
                  // Rating card
                  _buildInfoCard(
                    icon: Icons.star,
                    title: 'Rating',
                    value: '$rating★',
                    color: Colors.amber,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Action button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.read<DriverTripBloc>().add(
                    const DriverTripEvent.setIdle(),
                  );
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Back to Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;

    if (hours > 0) {
      return '$hours h ${minutes}m';
    }
    return '${minutes}m';
  }

  String _formatTime(DateTime dateTime) {
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}

class ActiveTripWidget extends StatelessWidget {
  const ActiveTripWidget({super.key, required this.trip});

  final DriverTripEntity trip;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DriverActiveTripMapView(),
        DriverActiveTripInfoCard(trip: trip),
      ],
    );
  }
}
