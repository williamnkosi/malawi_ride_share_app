part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appEventInitial() = AppEventInitial;
  const factory AppEvent.startListening() = AppEventStartListening;
  const factory AppEvent.appEventShowMessage({required RemoteMessage message}) =
      AppEventShowMessage;
  const factory AppEvent.appEventHideMessage() = AppEventHideMessage;
}
