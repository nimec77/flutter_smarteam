part of 'init_bloc.dart';

@freezed
class InitEvent with _$InitEvent {
  const factory InitEvent.initStarted() = InitEventStarted;

  const factory InitEvent.initCompleted() = InitEventCompleted;

  const factory InitEvent.initTimeUp() = InitEventTimeUp;

  const factory InitEvent.initExited() = InitEventExited;
}