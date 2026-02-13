import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/ensure_location_permission.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/ensure_notification_permission.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/open_location_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final EnsureLocationPermission ensureLocationPermission;
  final EnsureNotificationPermission ensureNotificationPermission;
  final OpenLocationSettingUseCase openLocationSettingUseCase;

  final logger = Logger('AppBloc');

  AppBloc({
    required this.ensureLocationPermission,
    required this.ensureNotificationPermission,
    required this.openLocationSettingUseCase,
  }) : super(const AppState()) {
    on<AppEventRequestLocationPermission>(_onRequestLocationPermission);
    on<AppEventOpenLocationSettings>(_onOpenLocationSettings);
    on<AppEventRequestNotificationPermission>(_onRequestNotificationPermission);
    on<AppEventCheckNotificationPermission>(_onCheckNotificationPermission);
  }

  /// Handle location permission request
  Future<void> _onRequestLocationPermission(
    AppEventRequestLocationPermission event,
    Emitter<AppState> emit,
  ) async {
    try {
      logger.info('🔐 Requesting location permission from AppBloc...');

      final isGranted = await ensureLocationPermission.call(null);

      if (isGranted) {
        emit(state.copyWith(isLocationPremissionEnabled: true));
      } else {
        emit(state.copyWith(isLocationPremissionEnabled: false));
      }
    } catch (e) {
      logger.severe('❌ Error requesting location permission: $e');
      emit(state.copyWith(isLocationPremissionEnabled: false));
    }
  }

  /// Handle opening location settings
  Future<void> _onOpenLocationSettings(
    AppEventOpenLocationSettings event,
    Emitter<AppState> emit,
  ) async {
    try {
      logger.info('⚙️ Opening location settings...');
      await openLocationSettingUseCase.call(null);

      // After opening settings, check permission status again
      add(const AppEvent.requestLocationPermission());
    } catch (e) {
      logger.severe('❌ Error opening location settings: $e');
    }
  }

  Future<void> _onRequestNotificationPermission(
    AppEventRequestNotificationPermission event,
    Emitter<AppState> emit,
  ) async {
    try {
      logger.info('🔐 Requesting notification permission from AppBloc...');

      final isGranted = await ensureNotificationPermission.call(null);

      if (isGranted) {
        emit(state.copyWith(isNotificationPermissionEnabled: true));
      } else {
        emit(state.copyWith(isNotificationPermissionEnabled: false));
      }
    } catch (e) {
      logger.severe('❌ Error requesting notification permission: $e');
      emit(state.copyWith(isNotificationPermissionEnabled: false));
    }
  }

  /// Handle checking current notification permission status
  Future<void> _onCheckNotificationPermission(
    AppEventCheckNotificationPermission event,
    Emitter<AppState> emit,
  ) async {
    try {
      logger.info('🔍 Checking notification permission status...');

      final isGranted = await ensureNotificationPermission.call(null);
      emit(state.copyWith(isNotificationPermissionEnabled: isGranted));
    } catch (e) {
      logger.severe('❌ Error checking notification permission: $e');
      emit(state.copyWith(isNotificationPermissionEnabled: false));
    }
  }
}
