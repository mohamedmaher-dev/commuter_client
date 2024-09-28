part of 'add_schedules_bloc.dart';

@freezed
class AddSchedulesState with _$AddSchedulesState {
  const factory AddSchedulesState.initial() = _Initial;
  const factory AddSchedulesState.loading() = _Loading;
  const factory AddSchedulesState.success(List<LocalScheduleModel> list) =
      _Success;
  const factory AddSchedulesState.failure() = _Failure;
  const factory AddSchedulesState.empty() = _Empty;
}
