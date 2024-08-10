// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_ride_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SendRideRequestModelToJson(
        SendRideRequestModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'pickupLocation': instance.pickupLocation.toJson(),
      'dropoffLocation': instance.dropoffLocation.toJson(),
      'fare': instance.fare,
    };

Map<String, dynamic> _$LoactionSendRideRequestModelToJson(
        LoactionSendRideRequestModel instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
