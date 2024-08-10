// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_commute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AddCommuteRequestModelToJson(
        AddCommuteRequestModel instance) =>
    <String, dynamic>{
      'pickup': instance.pickup.toJson(),
      'landing': instance.landing.toJson(),
      'roundTrip': instance.roundTrip?.toJson(),
      'commuteName': instance.commuteName,
      'isActive': instance.isActive,
      'isRoundTrip': instance.isRoundTrip,
      'days': instance.days,
    };

Map<String, dynamic> _$AddStageToJson(AddStage instance) => <String, dynamic>{
      'location': instance.location.toJson(),
      'time_window': instance.timeWindow.toJson(),
      'range': instance.range,
    };

Map<String, dynamic> _$AddRoundTripModelToJson(AddRoundTripModel instance) =>
    <String, dynamic>{
      'pickup': instance.pickup.toJson(),
      'landing': instance.landing.toJson(),
    };

Map<String, dynamic> _$AddRoundTripStageModelToJson(
        AddRoundTripStageModel instance) =>
    <String, dynamic>{
      'time_window': instance.timeWindow.toJson(),
    };

Map<String, dynamic> _$AddCommuteLocationToJson(AddCommuteLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };

Map<String, dynamic> _$AddCommuteTimeWindowToJson(
        AddCommuteTimeWindow instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
