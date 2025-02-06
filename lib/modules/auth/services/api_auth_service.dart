import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../core/networking/api_consts.dart';
import '../data/models/change_pass_request_model.dart';
import '../data/models/forgot_pass_request_model.dart';
import '../data/models/sign_in_request_model.dart';
import '../data/models/sign_in_response_model.dart';
import '../data/models/sign_up_request_model.dart';
import '../data/models/sign_up_response_model.dart';
import '../data/models/verify_reset_code_request_model.dart';
part 'api_auth_service.g.dart';

@RestApi()
abstract class ApiAuthService {
  factory ApiAuthService(Dio dio, {required String baseUrl}) = _ApiAuthService;
  @POST(ApiConsts.signIn)
  Future<SignInResponseModel> signIn(
    @Body() SignInRequestModel signInRequestModel,
  );

  @POST(ApiConsts.signUp)
  Future<SignUpResponseModel> signUp(
    @Body() SignUpRequestModel signUpRequestModel,
  );

  @POST(ApiConsts.forgotPassword)
  Future<void> sendResetCode(
    @Body() ForgotPassRequestModel forgotPassRequestModel,
  );
  @POST(ApiConsts.verifyResetCode)
  Future<void> verifyResetCode(
    @Body() VerifyResetCodeRequestModel verifyResetCodeRequestModel,
  );
  @PUT(ApiConsts.changePassword)
  Future<void> changePassword(
    @Body() ChangePassRequestModel changePassRequestModel,
  );
}
