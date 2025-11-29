import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_bloc.dart';

class DriverStatusBar extends StatelessWidget {
  final String goOnlineText = 'Go Online';
  final String goOfflineText = 'Go Offline';

  const DriverStatusBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverOperationsBloc, DriverOperationsState>(
      builder: (context, state) {
        return state.maybeWhen(
          online: (position) => StatusBarUI(isOnline: true),
          offline: (_) => StatusBarUI(isOnline: false),
          // Add other cases if needed, or fallback
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

class StatusBarUI extends StatelessWidget {
  final String statusOnlineText = 'Online';
  final String statusOfflineText = 'Offline ';
  final String goOfflineText = 'Go Offline';
  final String goOnlineText = 'Go Online';
  final bool isOnline;
  const StatusBarUI({
    super.key,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      color: isOnline ? Colors.green.shade50 : Colors.red.shade50,
      child: Row(
        children: [
          Icon(Icons.circle,
              color: isOnline ? Colors.green : Colors.red, size: 12),
          const SizedBox(width: 8),
          Text(
            isOnline
                ? 'Online - Ready for trips'
                : 'Offline - Not available for trips',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isOnline ? Colors.green : Colors.red,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              isOnline
                  ? context.read<DriverOperationsBloc>().add(
                        const DriverOperationsEvent.goOffline(),
                      )
                  : context.read<DriverOperationsBloc>().add(
                        const DriverOperationsEvent.goOnline(),
                      );
            },
            icon: Icon(
              isOnline ? Icons.power_settings_new : Icons.play_arrow,
              color: isOnline ? Colors.red : Colors.green,
            ),
            tooltip: isOnline ? 'Go Offline' : 'Go Online',
            iconSize: 32,
          ),
        ],
      ),
    );
  }
}
