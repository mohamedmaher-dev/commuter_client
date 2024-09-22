import 'package:commuter_client/core/local_storage/local_storage_result.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../../auth/sign_in/data/models/sign_in_request_model.dart';
import '../../../auth/sign_in/data/models/sign_in_response_model.dart';

class SplashRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  const SplashRebo(this._localStorageService, this._apiService);

  Future<LocalStorageResult<UserSecretDataModel?>> isLogin() async {
    try {
      final userDataModel = await _localStorageService.getUserSecretData;
      return LocalStorageResult.success(result: userDataModel);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }

  Future<ApiResult<SignInResponseModel>> signIn() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;
      SignInRequestModel signInRequestModel = SignInRequestModel(
        email: userSecretDataModel!.email,
        password: userSecretDataModel.password,
      );
      final response = await _apiService.signIn(signInRequestModel);
      DioFactory.setToken(response.token);
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
      final userDataSecretModel = await _localStorageService.saveUserSecretData(
        userEmail: email,
        userPassword: password,
        userId: id,
        userToken: token,
      );
      return LocalStorageResult.success(result: userDataSecretModel);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
