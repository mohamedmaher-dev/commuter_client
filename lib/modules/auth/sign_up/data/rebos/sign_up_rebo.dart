import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/core/notifications/notifi_service.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:commuter_client/modules/notifications/service/notifi_api_service.dart';
import 'package:dio/dio.dart';

import '../../../../../core/local_storage/local_storage_result.dart';
import '../../../../../core/local_storage/models/user_secret_data_model.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/dio_factory.dart';
import '../../../../notifications/data/models/send_fcm_token_model.dart';

class SignUpRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  final NotifiApiService _notifiApiService;
  final NotifiService _fcmManger;
  SignUpRebo(this._apiService, this._localStorageService,
      this._notifiApiService, this._fcmManger);

  Future<ApiResult<SignUpResponseModel>> signUp({
    required SignUpRequestModel signUpRequestModel,
  }) async {
    try {
      final response = await _apiService.signUp(signUpRequestModel);
      DioFactory.setToken(response.token);
      await _notifiApiService.sendFcmToken(
        response.userData.id,
        SendFcmTokenRequestModel(
          fcmToken: await _fcmManger.getToken(),
        ),
      );
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
