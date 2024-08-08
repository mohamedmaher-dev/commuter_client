// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predictions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictionsResponseModel _$PredictionsResponseModelFromJson(
        Map<String, dynamic> json) =>
    PredictionsResponseModel(
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) => PredictionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

PredictionModel _$PredictionModelFromJson(Map<String, dynamic> json) =>
    PredictionModel(
      description: json['description'] as String,
      placeId: json['place_id'] as String,
    );
