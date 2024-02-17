import 'package:commuter_client/core/networking/api_consts.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_request_model.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_response_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_response_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_response_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {required String baseUrl}) = _ApiService;
  @POST(ApiConsts.signIn)
  Future<SignInResponseModel> signIn(
    @Body() SignInRequestModel signInRequestModel,
  );

  @POST(ApiConsts.signUp)
  Future<SignUpResponseModel> signUp(
    @Body() SignUpRequestModel signUpRequestModel,
  );

  @POST(ApiConsts.forgotPassword)
  Future<ForgotPassResponseModel> sendResetCode(
    @Body() ForgotPassRequestModel forgotPassRequestModel,
  );
  @POST(ApiConsts.verifyResetCode)
  Future<VerifyResetCodeResponseModel> verifyResetCode(
    @Body() VerifyResetCodeRequestModel verifyResetCodeRequestModel,
  );
  @PUT(ApiConsts.changePassword)
  Future<ChangePassResponseModel> changePassword(
    @Body() ChangePassRequestModel changePassRequestModel,
  );
}
