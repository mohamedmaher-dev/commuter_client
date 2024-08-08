// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailsResponseModel _$PlaceDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    PlaceDetailsResponseModel(
      PlaceDetailsModel.fromJson(json['result'] as Map<String, dynamic>),
    );

PlaceDetailsModel _$PlaceDetailsModelFromJson(Map<String, dynamic> json) =>
    PlaceDetailsModel(
      geometry: _Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

_Geometry _$GeometryFromJson(Map<String, dynamic> json) => _Geometry(
      location: _Location.fromJson(json['location'] as Map<String, dynamic>),
    );

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
      (json['lat'] as num).toDouble(),
      (json['lng'] as num).toDouble(),
    );
