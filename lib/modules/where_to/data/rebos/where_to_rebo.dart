import 'package:commuter_client/core/env/env.dart';
import 'package:commuter_client/core/local_storage/local_storage_result.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:commuter_client/core/location/location_service.dart';
import 'package:commuter_client/core/location/models/place_details/place_details_model.dart';
import 'package:commuter_client/core/location/places_service.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/where_to/data/models/send_ride_request_model.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/location/models/places_model_auto_complete/predictions_response_model.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';

class WhereToRebo {
  final ApiService _apiService;
  final PlacesService _placesService;
  final LocationService _locationService;
  final LocalStorageService _localStorageService;
  WhereToRebo({
    required LocationService locationService,
    required PlacesService placesService,
    required ApiService apiService,
    required LocalStorageService localStorageService,
  })  : _placesService = placesService,
        _apiService = apiService,
        _locationService = locationService,
        _localStorageService = localStorageService;

  Future<ApiResult<List<PredictionModel>>> getPredictions(String input) async {
    try {
      return await _placesService
          .getPredictions(input, Env.placesApiKey)
          .then((value) {
        return ApiResult.success(value.predictions);
      });
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<PlaceDetailsModel>> getPlaceDetails(String placeId) async {
    try {
      return await _placesService
          .getPlaceDetails(placeId, Env.placesApiKey)
          .then((value) {
        return ApiResult.success(value.result);
      });
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult> sendRideRequest({
    required LatLng? pickup,
    required LatLng dropoff,
    required bool carPooling,
    required bool femaleOnly,
  }) async {
    pickup ??= await getCurrentLocation();
    try {
      final userDataModel = await _localStorageService.getUserSecretData;
      final sendRideRequestModel = SendRideRequestModel(
        dropoffLocation: LoactionSendRideRequestModel(
            latitude: dropoff.latitude, longitude: dropoff.longitude),
        fare: 0,
        pickupLocation: LoactionSendRideRequestModel(
          latitude: pickup!.latitude,
          longitude: pickup.longitude,
        ),
        userId: userDataModel!.userId,
        carpool: carPooling,
        isFemaleOnly: femaleOnly,
      );
      final response = await _apiService.rideRequest(
        sendRideRequestModel,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<LatLng?> getCurrentLocation() async {
    return await _locationService.getCurrentPosition();
  }

  Future<String> getLocationName({required LatLng location}) async {
    final locationName =
        await _locationService.getLocationName(latLng: location);
    return "${locationName.thoroughfare!} - ${locationName.street!}";
  }

  Future<LocalStorageResult<List<LocalCommuteModel>>> getLocalCommutes() async {
    try {
      final result = await _localStorageService.getLocalCommutes();
      final data = result.where((element) => element.isPinned).toList();
      return LocalStorageResult.success(result: data);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
