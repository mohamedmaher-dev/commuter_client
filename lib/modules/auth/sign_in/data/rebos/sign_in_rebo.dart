import 'package:commuter_client/core/networking/api_error_model.dart';
import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:dio/dio.dart';

import '../../../otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../../otp_forgot_password/data/models/forgot_pass_response_model.dart';

class SignInRebo {
  final ApiService _apiService;
  const SignInRebo(this._apiService);

  Future<ApiResult<SignInResponseModel>> signIn({
    required SignInRequestModel signInRequestModel,
  }) async {
    try {
      final response = await _apiService.signIn(signInRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<ForgotPassResponseModel>> sendResetCode({
    required ForgotPassRequestModel forgotPassRequestModel,
  }) async {
    try {
      final response = await _apiService.sendResetCode(forgotPassRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
