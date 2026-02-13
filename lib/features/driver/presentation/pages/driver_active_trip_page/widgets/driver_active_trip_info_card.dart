import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';

class DriverActiveTripInfoCard extends StatelessWidget {
  final DriverTripEntity trip;
  const DriverActiveTripInfoCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Rider info + stats row
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  trip.riderFirstName[0].toUpperCase(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      trip.riderFullName,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.route,
                          size: 12,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${trip.route.distanceKm.toStringAsFixed(1)} km',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.access_time,
                          size: 12,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${trip.route.durationMin.toStringAsFixed(0)} min',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.person,
                          size: 12,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${trip.passengerCount}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  // TODO: Implement call rider
                },
                icon: const Icon(Icons.phone, size: 20),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.green.shade50,
                  foregroundColor: Colors.green,
                  padding: const EdgeInsets.all(8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Compact location row
          Row(
            children: [
              Icon(Icons.radio_button_checked, color: Colors.green, size: 16),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  '${trip.pickupLocation.latitude.toStringAsFixed(4)}, ${trip.pickupLocation.longitude.toStringAsFixed(4)}',
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.arrow_forward, size: 14, color: Colors.grey),
              const SizedBox(width: 6),
              Icon(Icons.location_on, color: Colors.red, size: 16),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  '${trip.dropoffLocation.latitude.toStringAsFixed(4)}, ${trip.dropoffLocation.longitude.toStringAsFixed(4)}',
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
