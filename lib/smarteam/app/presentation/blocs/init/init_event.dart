part of 'init_bloc.dart';

@freezed
class InitEvent with _$InitEvent {
  const factory InitEvent.initStarted() = InitEventStarted;

  const factory InitEvent.initEnded() = InitEventEnded;

  const factory InitEvent.initTimeUp() = InitEventTimeUp;

  const factory InitEvent.initExited() = InitEventExited;
}