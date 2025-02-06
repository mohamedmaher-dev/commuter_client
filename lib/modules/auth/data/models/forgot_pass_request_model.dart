import 'package:json_annotation/json_annotation.dart';

part 'forgot_pass_request_model.g.dart';

@JsonSerializable(createFactory: false)
class ForgotPassRequestModel {
  final String email;
  ForgotPassRequestModel({required this.email});
  Map<String, dynamic> toJson() => _$ForgotPassRequestModelToJson(this);
}
