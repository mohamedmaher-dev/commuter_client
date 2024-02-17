import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';

class SignUpRebo {
  final ApiService _apiService;
  SignUpRebo(this._apiService);

  Future<ApiResult<SignUpResponseModel>> signUp({
    required SignUpRequestModel signUpRequestModel,
  }) async {
    try {
      final response = await _apiService.signUp(signUpRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
