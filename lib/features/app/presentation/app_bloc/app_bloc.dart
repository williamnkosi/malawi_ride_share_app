import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/ensure_location_permission.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/ensure_notification_permission.dart';
import 'package:malawi_ride_share_app/features/app/domain/usecases/open_location_settings.dart';
import 'package:malawi_ride_share_app/features/app/data/repositories/firebase_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final EnsureLocationPermission ensureLocationPermission;
  final EnsureNotificationPermission ensureNotificationPermission;
  final OpenLocationSettingUseCase openLocationSettingUseCase;
  final FirebaseRepository fireBaseRepository;

  final logger = Logger('AppBloc');

  AppBloc({
    required this.ensureLocationPermission,
    required this.ensureNotificationPermission,
    required this.openLocationSettingUseCase,
    required this.fireBaseRepository,
  }) : super(const AppState()) {
    on<AppEventRequestLocationPermission>(_onRequestLocationPermission);
    on<AppEventLocationPermissionGranted>(_onLocationPermissionGranted);
    on<AppEventLocationPermissionDenied>(_onLocationPermissionDenied);
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
        add(const AppEvent.locationPermissionGranted());
      } else {
        emit(state.copyWith(isLocationPremissionEnabled: false));
        add(const AppEvent.locationPermissionDenied());
      }
    } catch (e) {
      logger.severe('❌ Error requesting location permission: $e');
      emit(state.copyWith(isLocationPremissionEnabled: false));
      add(const AppEvent.locationPermissionDenied());
    }
  }

  /// Handle when location permission is granted
  Future<void> _onLocationPermissionGranted(
    AppEventLocationPermissionGranted event,
    Emitter<AppState> emit,
  ) async {
    logger.info('✅ Location permission granted - updating state');
    emit(state.copyWith(isLocationPremissionEnabled: true));
  }

  /// Handle when location permission is denied
  Future<void> _onLocationPermissionDenied(
    AppEventLocationPermissionDenied event,
    Emitter<AppState> emit,
  ) async {
    logger.warning('❌ Location permission denied - updating state');
    emit(state.copyWith(isLocationPremissionEnabled: false));
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
      add(const AppEvent.checkLocationPermission());
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
        fireBaseRepository.registerDevice();
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
