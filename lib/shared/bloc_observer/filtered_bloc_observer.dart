import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

enum LogLevel { none, basic, detailed, verbose }

class FilteredBlocObserver extends BlocObserver {
  final Logger _logger = Logger('BlocObserver');
  final LogLevel logLevel;
  final Set<Type> ignoredBlocs;
  final Set<Type> watchedBlocs;

  FilteredBlocObserver({
    this.logLevel = LogLevel.detailed,
    this.ignoredBlocs = const {},
    this.watchedBlocs = const {},
  });

  bool _shouldLog(BlocBase bloc) {
    if (logLevel == LogLevel.none) return false;
    if (ignoredBlocs.contains(bloc.runtimeType)) return false;
    if (watchedBlocs.isNotEmpty && !watchedBlocs.contains(bloc.runtimeType)) {
      return false;
    }
    return true;
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (_shouldLog(bloc)) {
      _logger.info('✅ BLoC Created: ${bloc.runtimeType}');
    }
  }

  @override
  void onEvent(BlocBase bloc, Object? event) {
    if (bloc is Bloc) {
      super.onEvent(bloc, event);
    }
    if (_shouldLog(bloc) && logLevel.index >= LogLevel.basic.index) {
      _logger.info('🎯 Event: ${bloc.runtimeType} - ${_formatEvent(event)}');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (_shouldLog(bloc) && logLevel.index >= LogLevel.basic.index) {
      _logger.info('🔄 State Change: ${bloc.runtimeType}');

      if (logLevel.index >= LogLevel.detailed.index) {
        _logger.info('   Previous: ${_formatState(change.currentState)}');
        _logger.info('   Current:  ${_formatState(change.nextState)}');
      }
    }
  }

  @override
  void onTransition(BlocBase bloc, Transition transition) {
    if (bloc is Bloc) {
      super.onTransition(bloc, transition);
    }
    if (_shouldLog(bloc) && logLevel.index >= LogLevel.verbose.index) {
      _logger.info('🚀 Transition: ${bloc.runtimeType}');
      _logger.info('   Event: ${_formatEvent(transition.event)}');
      _logger.info('   From:  ${_formatState(transition.currentState)}');
      _logger.info('   To:    ${_formatState(transition.nextState)}');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logger.severe('❌ Error in ${bloc.runtimeType}: $error', error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (_shouldLog(bloc)) {
      _logger.info('🗑️ BLoC Closed: ${bloc.runtimeType}');
    }
  }

  String _formatEvent(Object? event) {
    if (event == null) return 'null';
    final eventStr = event.toString();
    return eventStr.length > 100
        ? '${eventStr.substring(0, 100)}...'
        : eventStr;
  }

  String _formatState(Object? state) {
    if (state == null) return 'null';
    final stateStr = state.toString();
    return stateStr.length > 200
        ? '${stateStr.substring(0, 200)}...'
        : stateStr;
  }
}
