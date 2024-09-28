import 'package:commuter_client/core/local_storage/models/local_schedule_model.dart';

import '../../../../core/local_storage/local_storage_result.dart';
import '../../../../core/local_storage/local_storage_service.dart';

class AddScheduleRebo {
  final LocalStorageService _localStorageService;
  AddScheduleRebo(this._localStorageService);

  Future<LocalStorageResult<void>> addLocalSchedule(
      {required LocalScheduleModel localScheduleModel}) async {
    try {
      await _localStorageService.addLocalSchedule(
          localScheduleModel: localScheduleModel);
      return const LocalStorageResult.success();
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }

  Future<LocalStorageResult<List<LocalScheduleModel>>>
      getLocalSchedules() async {
    try {
      final result = await _localStorageService.getLocalSchedules();
      return LocalStorageResult.success(result: result);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }

  Future<LocalStorageResult<void>> deleteSchedule({
    required LocalScheduleModel localScheduleModel,
  }) async {
    try {
      await _localStorageService.deleteSchedule(
          localScheduleModel: localScheduleModel);
      return const LocalStorageResult.success();
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
