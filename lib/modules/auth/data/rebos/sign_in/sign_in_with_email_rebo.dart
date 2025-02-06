import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/modules/auth/data/models/sign_in_request_model.dart';

import '../../../../../core/networking/api_try_catch.dart';
import '../../models/sign_in_response_model.dart';
import 'abstract_sign_in_rebo.dart';

class SignInWithEmailRebo
    extends AbstractSignInRebo<SignInRequestModel, SignInResponseModel> {
  SignInWithEmailRebo({
    required super.notifiApiService,
    required super.apiAuthService,
    required super.localStorageService,
  });

  @override
  Future<ApiResult<SignInResponseModel>> signIn(requestBodyModel) async {
    final signInResult = await apiTryCatch(
      apiCall: apiAuthService.signIn(requestBodyModel),
    );
    return await signInResult.when(
      success: (data) async {
        await saveUserAuthInfo(id: data.userData.id, token: data.token);
        return ApiResult.success(data);
      },
      failure: (apiErrorModel) => ApiResult.failure(apiErrorModel),
    );
  }
}
