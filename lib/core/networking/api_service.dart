import 'package:commuter_client/core/networking/api_consts.dart';
import 'package:commuter_client/modules/nearby_commuters/data/models/join_commute_request_model.dart';
import 'package:commuter_client/modules/where_to/data/models/send_ride_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../modules/my_commutes/data/models/add_commute_request_model.dart';
import '../../modules/profiles/my_profile/data/models/get_me_response_model.dart';
part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {required String baseUrl}) = _ApiService;
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
