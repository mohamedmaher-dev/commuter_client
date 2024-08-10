import 'dart:io';

import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/profile/data/models/get_me_response_model.dart';
import 'package:dio/dio.dart';
// import 'package:image_picker/image_picker.dart';

import '../../../../core/networking/api_error_model.dart';

class ProfileRebo {
  final ApiService _apiService;
  final UserSecretDataModel _userSecretDataModel;
  final LocalStorageService _localStorageService;
  // final ImagePicker _imagePicker;
  ProfileRebo(
    this._apiService,
    this._userSecretDataModel,
    this._localStorageService,
    // this._imagePicker,
  );

  Future<ApiResult<GetMeResponseModel>> getMe() async {
    try {
      final response = await _apiService.getMe(
        "Bearer ${_userSecretDataModel.userToken}",
        _userSecretDataModel.userId,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<void>> deleteMe() async {
    try {
      final response = await _apiService.deleteMe(
        "Bearer ${_userSecretDataModel.userToken}",
        _userSecretDataModel.userId,
      );
      await _localStorageService.deleteUserSecretData();
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<void>> updateMe({
    required String name,
    required String phone,
    required String email,
    required File image,
  }) async {
    try {
      final response = await _apiService.updateMe(
        "Bearer ${_userSecretDataModel.userToken}",
        _userSecretDataModel.userId,
        await MultipartFile.fromFile(image.path),
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

  // Future<PickedFile?> pickImage({required ImageSource imageSource}) async {
  //   return await _imagePicker.getImage(source: imageSource);
  // }
}
