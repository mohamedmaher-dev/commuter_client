import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/my_commutes/data/rebos/add_schedule_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/local_storage/models/local_schedule_model.dart';

part 'add_schedules_event.dart';
part 'add_schedules_state.dart';
part 'add_schedules_bloc.freezed.dart';

class AddSchedulesBloc extends Bloc<AddSchedulesEvent, AddSchedulesState> {
  final AddScheduleRebo _addScheduleRebo;
  AddSchedulesBloc(this._addScheduleRebo) : super(const _Initial()) {
    on<AddSchedulesEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            await startMethod(emit);
          },
          add: (localScheduleModel) async {
            await addMethod(emit, localScheduleModel);
          },
          delete: (localScheduleModel) async {
            emit(const AddSchedulesState.loading());
            final deleteResult = await _addScheduleRebo.deleteSchedule(
                localScheduleModel: localScheduleModel);
            await deleteResult.when(
              success: (result) async {
                await startMethod(emit);
              },
              failure: (error) {
                emit(const AddSchedulesState.failure());
              },
            );
          },
        );
      },
    );
  }
  Future<void> startMethod(Emitter<AddSchedulesState> emit) async {
    emit(const AddSchedulesState.loading());
    final getLocalSchedules = await _addScheduleRebo.getLocalSchedules();
    getLocalSchedules.when(
      success: (data) {
        if (data != null && data.isNotEmpty) {
          emit(AddSchedulesState.success(data));
        } else {
          emit(const AddSchedulesState.empty());
        }
      },
      failure: (error) {
        emit(const AddSchedulesState.failure());
      },
    );
  }

  Future<void> addMethod(
    Emitter<AddSchedulesState> emit,
    LocalScheduleModel localScheduleModel,
  ) async {
    emit(const AddSchedulesState.loading());
    final addLocalScheduleResult = await _addScheduleRebo.addLocalSchedule(
      localScheduleModel: localScheduleModel,
    );
    await addLocalScheduleResult.when(
      success: (result) async {
        await startMethod(emit);
      },
      failure: (error) {
        emit(const AddSchedulesState.failure());
      },
    );
  }
}
