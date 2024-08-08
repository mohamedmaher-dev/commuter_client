import 'package:json_annotation/json_annotation.dart';
part 'predictions_response_model.g.dart';

@JsonSerializable(createToJson: false)
class PredictionsResponseModel {
  final List<PredictionModel> predictions;

  PredictionsResponseModel({required this.predictions});

  factory PredictionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PredictionsResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class PredictionModel {
  final String description;
  @JsonKey(name: 'place_id')
  final String placeId;

  PredictionModel({required this.description, required this.placeId});

  factory PredictionModel.fromJson(Map<String, dynamic> json) =>
      _$PredictionModelFromJson(json);
}
