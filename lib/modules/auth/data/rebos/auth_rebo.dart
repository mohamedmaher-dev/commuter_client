import 'package:commuter_client/modules/auth/services/api_auth_service.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_try_catch.dart';
import '../models/change_pass_request_model.dart';
import '../models/forgot_pass_request_model.dart';
import '../models/verify_reset_code_request_model.dart';

class AuthRebo {
  final ApiAuthService apiAuthService;

  AuthRebo({
    required this.apiAuthService,
  });

  Future<ApiResult<void>> changePassword(
    ChangePassRequestModel changePassRequestModel,
  ) =>
      apiTryCatch(
        apiCall: apiAuthService.changePassword(changePassRequestModel),
      );
  Future<ApiResult<void>> sendResetCode(
    ForgotPassRequestModel requestBodyModel,
  ) =>
      apiTryCatch(
        apiCall: apiAuthService.sendResetCode(requestBodyModel),
      );

  Future<ApiResult<void>> verifyResetCode(
    VerifyResetCodeRequestModel requestBodyModel,
  ) =>
      apiTryCatch(
        apiCall: apiAuthService.verifyResetCode(requestBodyModel),
      );
}
