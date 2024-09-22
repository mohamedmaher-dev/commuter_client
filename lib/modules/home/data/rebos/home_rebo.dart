import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/modules/notifications/service/notifi_api_service.dart';
import 'package:dio/dio.dart';

import '../../../../core/local_storage/local_storage_service.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../notifications/data/models/notifi_response_model.dart';

class HomeRebo {
  final NotifiApiService notifiApiService;
  final LocalStorageService _localStorageService;

  HomeRebo({
    required this.notifiApiService,
    required LocalStorageService localStorageService,
  }) : _localStorageService = localStorageService;

  Future<ApiResult<List<NotifiResponseModel>>> getUnReadNotifis() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response =
          await notifiApiService.getUnReadNotifis(userSecretDataModel!.userId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
