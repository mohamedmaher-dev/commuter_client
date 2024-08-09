// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_routes_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRoutesResponseModel _$GetRoutesResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetRoutesResponseModel(
      routes: (json['routes'] as List<dynamic>)
          .map((e) => _Route.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
      distanceMeters: (json['distanceMeters'] as num).toInt(),
      duration: json['duration'] as String,
      polyline: _Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
    );

_Polyline _$PolylineFromJson(Map<String, dynamic> json) => _Polyline(
      encodedPolyline: json['encodedPolyline'] as String,
    );
