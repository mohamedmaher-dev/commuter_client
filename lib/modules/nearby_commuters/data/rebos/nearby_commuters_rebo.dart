import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/location/location_service.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/modules/nearby_commuters/data/models/nearby_commuters_response_model.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/local_storage/models/local_commute_model.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../profiles/my_profile/data/models/get_me_response_model.dart';
import '../../service/nearby_commuters_api_service.dart';
import '../models/join_commute_request_model.dart';

class NearbyCommutersRebo {
  final NearbyCommutersApiService _apiNearbyCommutersService;
  final ApiService _apiService;
  final LocationService _locationService;
  final LocalStorageService _localStorageService;
  NearbyCommutersRebo({
    required NearbyCommutersApiService apiNearbyCommutersService,
    required LocationService locationService,
    required ApiService apiService,
    required LocalStorageService localStorageService,
  })  : _apiNearbyCommutersService = apiNearbyCommutersService,
        _locationService = locationService,
        _localStorageService = localStorageService,
        _apiService = apiService;

  Future<ApiResult<NearbyCommutersResponseModel>> getNearbyCommuters() async {
    final currentLocation = await _locationService.getCurrentPosition();
    if (currentLocation == null) {
      return ApiResult.failure(
          ApiErrorModel.fromUnknown(e: "Location not found"));
    } else {
      try {
        final response = await _apiNearbyCommutersService.getNearByCommuters(
          currentLocation.latitude,
          currentLocation.longitude,
          5,
        );
        return ApiResult.success(response);
      } on DioException catch (e) {
        return ApiResult.failure(
            ApiErrorModel.fromDioException(dioException: e));
      } catch (e) {
        return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
      }
    }
  }

  Future<ApiResult<GetMeResponseModel>> getDriverModel(String driverId) async {
    try {
      final response = await _apiService.geDriver(driverId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<String> getLocationName(LatLng location) async {
    final locationName =
        await _locationService.getLocationName(latLng: location);
    return "${locationName.thoroughfare!} - ${locationName.street!}";
  }

  Future<List<LocalCommuteModel>> getLocalCommutes() async {
    return await _localStorageService.getLocalCommutes();
  }

  Future<ApiResult<void>> joinCommute(String driverId, String commuteId) async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;
      final response = await _apiService.joinCommute(
        driverId,
        commuteId,
        JoinCommuteRequestModel(userId: userSecretDataModel!.userId),
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
