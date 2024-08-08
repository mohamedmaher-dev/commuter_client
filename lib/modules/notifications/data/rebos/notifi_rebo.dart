import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_client/core/utils/fcm_manger.dart';
import 'package:commuter_client/modules/notifications/data/models/notifi_response_model.dart';
import 'package:commuter_client/modules/notifications/data/models/send_fcm_token_model.dart';
import 'package:commuter_client/modules/notifications/service/notifi_api_service.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';

class NotifiRebo {
  final UserSecretDataModel _userSecretDataModel;
  final NotifiApiService _notifiApiService;
  final FCMManger _fcmManger;
  NotifiRebo(
      {required UserSecretDataModel userSecretDataModel,
      required NotifiApiService notifiApiService,
      required FCMManger fcmManger})
      : _userSecretDataModel = userSecretDataModel,
        _notifiApiService = notifiApiService,
        _fcmManger = fcmManger;

  Future<ApiResult<List<NotifiResponseModel>>> getUnreadNotifis() async {
    try {
      final response =
          await _notifiApiService.getUnReadNotifis(_userSecretDataModel.userId);

      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<List<NotifiResponseModel>>> getReadNotifis() async {
    try {
      final response =
          await _notifiApiService.getReadNotifis(_userSecretDataModel.userId);
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
      final response = await _notifiApiService.deleteNotifi(
          _userSecretDataModel.userId, notifiId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<void> sendFcmToken() async {
    await _notifiApiService.sendFcmToken(
      _userSecretDataModel.userToken,
      SendFcmTokenRequestModel(fcmToken: await _fcmManger.getToken()),
    );
  }
}
