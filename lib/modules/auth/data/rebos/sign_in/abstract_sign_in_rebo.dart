import 'package:commuter_client/core/networking/api_try_catch.dart';
import 'package:commuter_client/modules/notifications/data/models/send_fcm_token_model.dart';
import '../../../../../core/local_storage/local_storage_result.dart';
import '../../../../../core/local_storage/local_storage_service.dart';
import '../../../../../core/local_storage/models/user_secret_data_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../notifications/service/notifi_api_service.dart';
import '../../../services/api_auth_service.dart';
import '../../models/forgot_pass_request_model.dart';

abstract class AbstractSignInRebo<RQ, RS> {
  final ApiAuthService apiAuthService;
  final NotifiApiService notifiApiService;
  final LocalStorageService localStorageService;
  AbstractSignInRebo({
    required this.apiAuthService,
    required this.notifiApiService,
    required this.localStorageService,
  });

  Future<ApiResult<RS>> signIn(RQ requestBodyModel);

  Future<LocalStorageResult<UserSecretDataModel>> saveUserAuthInfo({
    required String id,
    required String token,
  }) async {
    try {
      final userSecretDataModel = await localStorageService.saveUserSecretData(
        userId: id,
        userToken: token,
      );
      return LocalStorageResult.success(result: userSecretDataModel);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }

  Future<ApiResult<void>> sendFcmToken(
      SendFcmTokenRequestModel sendFcmTokenRequestModel) async {
    final userSecretDataModel = await localStorageService.getUserSecretData;
    final id = userSecretDataModel!.userId;
    return await apiTryCatch(
      apiCall: notifiApiService.sendFcmToken(
        id,
        sendFcmTokenRequestModel,
      ),
    );
  }

  Future<ApiResult<void>> sendResetCode(
    ForgotPassRequestModel requestBodyModel,
  ) =>
      apiTryCatch(
        apiCall: apiAuthService.sendResetCode(requestBodyModel),
      );
}
