import 'package:commuter_client/core/notifications/notifi_service.dart';
import 'package:commuter_client/modules/notifications/data/models/notifi_response_model.dart';
import 'package:commuter_client/modules/notifications/data/models/send_fcm_token_model.dart';
import 'package:commuter_client/modules/notifications/service/notifi_api_service.dart';
import 'package:dio/dio.dart';

import '../../../../core/local_storage/local_storage_service.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';

class NotifiRebo {
  final NotifiApiService _notifiApiService;
  final NotifiService _fcmManger;
  final LocalStorageService _localStorageService;
  NotifiRebo(
      {required LocalStorageService localStorageService,
      required NotifiApiService notifiApiService,
      required NotifiService fcmManger})
      : _localStorageService = localStorageService,
        _notifiApiService = notifiApiService,
        _fcmManger = fcmManger;

  Future<ApiResult<List<NotifiResponseModel>>> getUnreadNotifis() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;
      final response =
          await _notifiApiService.getUnReadNotifis(userSecretDataModel!.userId);

      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<List<NotifiResponseModel>>> getReadNotifis() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;
      final response =
          await _notifiApiService.getReadNotifis(userSecretDataModel!.userId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<void>> readNotifi({required String notifiId}) async {
    try {
      final response = await _notifiApiService.readNotifi(notifiId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<void>> deleteNotifi({required String notifiId}) async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _notifiApiService.deleteNotifi(
          userSecretDataModel!.userId, notifiId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<void> sendFcmToken() async {
    final userSecretDataModel = await _localStorageService.getUserSecretData;
    await _notifiApiService.sendFcmToken(
      userSecretDataModel!.userToken,
      SendFcmTokenRequestModel(fcmToken: await _fcmManger.getToken()),
    );
  }
}
