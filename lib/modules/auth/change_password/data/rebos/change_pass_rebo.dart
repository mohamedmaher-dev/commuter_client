import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_request_model.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';

class ChangePassRebo {
  final ApiService _apiService;
  const ChangePassRebo(this._apiService);

  Future<ApiResult<ChangePassResponseModel>> changePassword({
    required ChangePassRequestModel changePassRequestModel,
  }) async {
    try {
      final response = await _apiService.changePassword(changePassRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
