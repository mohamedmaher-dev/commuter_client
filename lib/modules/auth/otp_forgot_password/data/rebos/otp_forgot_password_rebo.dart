import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../models/forgot_pass_request_model.dart';
import '../models/forgot_pass_response_model.dart';

class OtpForgotPasswordRebo {
  final ApiService _apiService;
  const OtpForgotPasswordRebo(this._apiService);

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

  Future<ApiResult<VerifyResetCodeResponseModel>> verifyResetCode({
    required VerifyResetCodeRequestModel verifyResetCodeRequestModel,
  }) async {
    try {
      final response =
          await _apiService.verifyResetCode(verifyResetCodeRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
