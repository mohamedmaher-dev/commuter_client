import 'package:commuter_client/core/networking/api_consts.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_request_model.dart';
import 'package:commuter_client/modules/auth/change_password/data/models/change_pass_response_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_response_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:commuter_client/modules/nearby_commuters/data/models/join_commute_request_model.dart';
import 'package:commuter_client/modules/where_to/data/models/send_ride_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../modules/my_commutes/data/models/add_commute_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_response_model.dart';
import '../../modules/profiles/my_profile/data/models/get_me_response_model.dart';
part 'api_service.g.dart';

@RestApi()
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

  @POST(ApiConsts.rideRequest)
  Future rideRequest(
    @Body() SendRideRequestModel sendRideRequestModel,
  );
  @POST(ApiConsts.addCommute)
  Future<void> addCommute(
    @Path() String id,
    @Body() AddCommuteRequestModel addCommuteRequestModel,
  );
  @GET(ApiConsts.me)
  Future<GetMeResponseModel> getMe(
    @Path() String id,
  );
  @DELETE(ApiConsts.me)
  Future<void> deleteMe(
    @Path() String id,
  );

  @PUT(ApiConsts.me)
  @MultiPart()
  Future<void> updateMe(
    @Path() String id,
    @Part(name: "image") List<MultipartFile> files,
    @Part(name: "name") String name,
    @Part(name: "email") String email,
    @Part(name: "phone") String? phone,
  );
  @GET(ApiConsts.getDriver)
  Future<GetMeResponseModel> geDriver(
    @Path() String id,
  );
  @POST(ApiConsts.joinCommute)
  Future<void> joinCommute(
    @Path() String driverId,
    @Path() String commuteId,
    @Body() JoinCommuteRequestModel joinCommuteRequestModel,
  );
}
