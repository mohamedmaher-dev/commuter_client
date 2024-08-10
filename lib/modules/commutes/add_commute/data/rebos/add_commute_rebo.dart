import 'package:commuter_client/core/local_storage/local_storage_result.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';

class AddCommuteRebo {
  final LocalStorageService _localStorageService;
  AddCommuteRebo(this._localStorageService);

  Future<LocalStorageResult<void>> addLocalCommute(
      {required LocalCommuteModel localCommuteModel}) async {
    try {
      await _localStorageService.addLocalCommute(
          localCommuteModel: localCommuteModel);
      return const LocalStorageResult.success();
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }

  Future<LocalStorageResult<List<LocalCommuteModel>>> getLocalCommutes() async {
    try {
      final result = await _localStorageService.getLocalCommutes();
      return LocalStorageResult.success(result: result);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
