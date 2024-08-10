import 'package:commuter_client/core/env/env.dart';
import 'package:commuter_client/core/networking/api_consts.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_request_model.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_response_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_response_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:commuter_client/modules/where_to/data/models/send_ride_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../modules/commutes/add_commute/data/models/add_commute_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_response_model.dart';
import '../../modules/profile/data/models/get_me_response_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: Env.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
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

  @POST(ApiConsts.rideRequest)
  Future rideRequest(
    @Body() SendRideRequestModel sendRideRequestModel,
    @Header('Authorization') String token,
  );
  @POST(ApiConsts.addCommute)
  Future<void> addCommute(
    @Header('Authorization') String token,
    @Path() String id,
    @Body() AddCommuteRequestModel addCommuteRequestModel,
  );
  @GET(ApiConsts.getMe)
  Future<GetMeResponseModel> getMe(
    @Header('Authorization') String token,
    @Path() String id,
  );
  @DELETE(ApiConsts.deleteMe)
  Future<void> deleteMe(
    @Header('Authorization') String token,
    @Path() String id,
  );

  @PUT(ApiConsts.updateMe)
  @FormUrlEncoded()
  Future<void> updateMe(
    @Header('Authorization') String token,
    @Path() String id,
    @Part() MultipartFile profileImg,
    @Field("name") String name,
    @Field("email") String email,
    @Field("phone") String phone,
  );
}
