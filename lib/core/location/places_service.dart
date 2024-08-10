import 'package:commuter_client/core/location/models/place_details/place_details_model.dart';
import 'package:commuter_client/core/location/places_consts.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'models/places_model_auto_complete/predictions_response_model.dart';
part 'places_service.g.dart';

@RestApi(baseUrl: PlacesConsts.baseUrl)
abstract class PlacesService {
  factory PlacesService(Dio dio, {required String baseUrl}) = _PlacesService;
  @GET(PlacesConsts.predictions)
  Future<PredictionsResponseModel> getPredictions(
    @Query('input') String input,
    @Query('key') String apiKey,
  );

  @GET(PlacesConsts.placeDetails)
  Future<PlaceDetailsResponseModel> getPlaceDetails(
    @Query('place_id') String input,
    @Query('key') String apiKey,
  );
}
