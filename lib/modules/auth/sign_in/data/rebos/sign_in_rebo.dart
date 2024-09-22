import 'package:commuter_client/core/local_storage/local_storage_result.dart';
import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_client/core/networking/api_error_model.dart';
import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/core/networking/dio_factory.dart';
import 'package:commuter_client/core/notifications/notifi_service.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:commuter_client/modules/notifications/data/models/send_fcm_token_model.dart';
import 'package:commuter_client/modules/notifications/service/notifi_api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../../core/local_storage/local_storage_service.dart';
import '../../../otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../../otp_forgot_password/data/models/forgot_pass_response_model.dart';

class SignInRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  final NotifiApiService _notifiApiService;
  final NotifiService _fcmManger;
  const SignInRebo(this._apiService, this._localStorageService,
      this._notifiApiService, this._fcmManger);

  Future<ApiResult<SignInResponseModel>> signIn({
    required SignInRequestModel signInRequestModel,
  }) async {
    try {
      final response = await _apiService.signIn(signInRequestModel);
      DioFactory.setToken(response.token);
      if (!kDebugMode) {
        await _notifiApiService.sendFcmToken(
          response.userData.id,
          SendFcmTokenRequestModel(
            fcmToken: await _fcmManger.getToken(),
          ),
        );
      }
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

  Future<LocalStorageResult<UserSecretDataModel>> saveUserAuthInfo({
    required String email,
    required String password,
    required String id,
    required String token,
  }) async {
    try {
      final userSecretDataModel = await _localStorageService.saveUserSecretData(
        userEmail: email,
        userPassword: password,
        userId: id,
        userToken: token,
      );
      return LocalStorageResult.success(result: userSecretDataModel);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
