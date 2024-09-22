import 'dart:async';
import 'package:commuter_client/core/env/env.dart';
import 'package:commuter_client/core/location/location_permission.dart';
import 'package:commuter_client/core/location/models/routes_model/get_routes_request_model.dart';
import 'package:commuter_client/core/location/models/routes_model/get_routes_response_model.dart';
import 'package:commuter_client/core/utils/assets_manger.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart' as locationimport;

class LocationService {
  LocationService(this._dio, this.location, this._locationPermission);
  final locationimport.Location location;
  final Dio _dio;
  final CheckLocationPermission _locationPermission;
  final PolylinePoints _polylinePoints = PolylinePoints();
  late LatLng currentLatLng;
  static BitmapDescriptor carIcon = BitmapDescriptor.defaultMarker;
  static const defaultLatLng = LatLng(24.713538839859417, 46.675304269015406);
  Future<void> locationServiceInit() async {
    await _locationPermission.init();
    location.onLocationChanged.listen(
      (event) {
        if (event.latitude != null && event.longitude != null) {
          currentLatLng = LatLng(event.latitude!, event.longitude!);
        } else {
          currentLatLng = defaultLatLng;
        }
      },
      onError: (e) => currentLatLng = defaultLatLng,
    );
    carIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(),
      AssetsManger.imagesCarIcon,
    );
  }

  Future<Placemark> getLocationName({required LatLng latLng}) {
    return placemarkFromCoordinates(latLng.latitude, latLng.longitude).then(
      (value) => value[0],
    );
  }

  Future<LatLng?> getCurrentPosition() async {
    return await location.getLocation().then(
      (value) {
        if (value.latitude != null && value.longitude != null) {
          return LatLng(value.latitude!, value.longitude!);
        } else {
          return null;
        }
      },
    );
  }

  Future<List<LatLng>> getRoutes({
    required GetRoutesRequestModel getRoutesRequestModel,
  }) async {
    Dio newDio = _dio;
    newDio.options.headers = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': Env.routesApiKey,
      'X-Goog-FieldMask':
          'routes.duration,routes.distanceMeters,routes.polyline.encodedPolyline'
    };
    final result = await newDio.post(
      data: getRoutesRequestModel.toJson(),
      'https://routes.googleapis.com/directions/v2:computeRoutes',
    );
    final getRoutesResponseModel = GetRoutesResponseModel.fromJson(result.data);
    return _polylinePoints
        .decodePolyline(
      getRoutesResponseModel.routes.first.polyline.encodedPolyline,
    )
        .map(
      (e) {
        return LatLng(e.latitude, e.longitude);
      },
    ).toList();
  }
}
