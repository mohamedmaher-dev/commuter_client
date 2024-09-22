import 'package:commuter_client/core/local_storage/local_storage_result.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/profiles/my_profile/data/models/get_me_response_model.dart';
import 'package:dio/dio.dart';
import '../../../../../core/networking/api_error_model.dart';

class MyProfileRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  MyProfileRebo(
    this._apiService,
    this._localStorageService,
  );

  Future<ApiResult<GetMeResponseModel>> getMe() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _apiService.getMe(userSecretDataModel!.userId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<void>> updateMe({
    required String name,
    required String? phone,
    required String email,
    required MultipartFile image,
  }) async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;
      final response = await _apiService.updateMe(
        userSecretDataModel!.userId,
        [image],
        name,
        email,
        phone,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<LocalStorageResult<void>> signOut() async {
    try {
      await _localStorageService.deleteUserSecretData();
      return const LocalStorageResult.success();
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
