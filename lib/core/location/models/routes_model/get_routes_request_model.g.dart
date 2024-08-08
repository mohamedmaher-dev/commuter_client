// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_routes_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetRoutesRequestModelToJson(
        GetRoutesRequestModel instance) =>
    <String, dynamic>{
      'origin': instance.origin.toJson(),
      'destination': instance.destination.toJson(),
    };

Map<String, dynamic> _$GetRoutesAddPointToJson(GetRoutesAddPoint instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
    };

Map<String, dynamic> _$GetRoutesAddLocationToJson(
        GetRoutesAddLocation instance) =>
    <String, dynamic>{
      'latLng': instance.latLng.toJson(),
    };

Map<String, dynamic> _$GetRoutesAddLatLngToJson(GetRoutesAddLatLng instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
