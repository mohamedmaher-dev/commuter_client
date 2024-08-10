import 'package:json_annotation/json_annotation.dart';
part 'forgot_pass_response_model.g.dart';

@JsonSerializable()
class ForgotPassResponseModel {
  final String status;
  final String message;

  ForgotPassResponseModel({required this.status, required this.message});
  factory ForgotPassResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPassResponseModelFromJson(json);
}
