import 'package:json_annotation/json_annotation.dart';
part 'change_pass_response_model.g.dart';

@JsonSerializable()
class ChangePassResponseModel {
  final String token;

  ChangePassResponseModel({required this.token});

  factory ChangePassResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePassResponseModelFromJson(json);
}
