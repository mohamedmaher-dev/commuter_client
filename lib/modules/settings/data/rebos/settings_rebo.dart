import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:dio/dio.dart';

import '../../../../core/local_storage/local_storage_service.dart';
import '../../../../core/networking/api_error_model.dart';

class SettingsRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  SettingsRebo(this._apiService, this._localStorageService);

  Future<ApiResult<void>> deleteProfile() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;
      final response = await _apiService.deleteMe(userSecretDataModel!.userId);
      await _localStorageService.deleteAllUserCommutes();
      await _localStorageService.deleteUserSecretData();
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
