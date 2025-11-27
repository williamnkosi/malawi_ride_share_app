import 'package:bloc/bloc.dart';
import 'package:malawi_ride_share_app/features/app/presentation/app_bloc/app_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/shared/bloc_observer/filtered_bloc_observer.dart';

class BlocLoggingConfig {
  // Development configuration
  static FilteredBlocObserver get development => FilteredBlocObserver(
        logLevel: LogLevel.detailed,
        // Don't log these BLoCs (they might be too noisy)
        ignoredBlocs: {},
        // Only log these BLoCs (leave empty to log all)
        watchedBlocs: {},
      );

  // Production configuration
  static FilteredBlocObserver get production => FilteredBlocObserver(
        logLevel: LogLevel.basic,
        watchedBlocs: {AppBloc, AuthBloc}, // Only log critical BLoCs
      );

  // Debug configuration for specific BLoCs
  static FilteredBlocObserver get authOnly => FilteredBlocObserver(
        logLevel: LogLevel.verbose,
        watchedBlocs: {AuthBloc},
      );

  static FilteredBlocObserver get tripOnly => FilteredBlocObserver(
        logLevel: LogLevel.verbose,
        watchedBlocs: {},
      );

  // Silent configuration
  static FilteredBlocObserver get silent => FilteredBlocObserver(
        logLevel: LogLevel.none,
      );
}

void enableAuthDebugLogging() {
  Bloc.observer = BlocLoggingConfig.authOnly;
}

void enableTripDebugLogging() {
  Bloc.observer = BlocLoggingConfig.tripOnly;
}

void disableAllBlocLogging() {
  Bloc.observer = BlocLoggingConfig.silent;
}
