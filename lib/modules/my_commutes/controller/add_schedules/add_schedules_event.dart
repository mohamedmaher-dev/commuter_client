part of 'add_schedules_bloc.dart';

@freezed
class AddSchedulesEvent with _$AddSchedulesEvent {
  const factory AddSchedulesEvent.started() = _Started;
  const factory AddSchedulesEvent.add(LocalScheduleModel localScheduleModel) =
      _Add;
  const factory AddSchedulesEvent.delete(
      LocalScheduleModel localScheduleModel) = _Delete;
}
