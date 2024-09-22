import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../../core/networking/api_consts.dart';
import '../data/models/nearby_commuters_response_model.dart';
part 'nearby_commuters_api_service.g.dart';

@RestApi()
abstract class NearbyCommutersApiService {
  factory NearbyCommutersApiService(Dio dio, {required String baseUrl}) =
      _NearbyCommutersApiService;
  @GET(ApiConsts.getNearByCommuters)
  Future<NearbyCommutersResponseModel> getNearByCommuters(
    @Query('latitude') double latitude,
    @Query('longitude') double longitude,
    @Query('distance') int distance,
  );
}
