import 'package:json_annotation/json_annotation.dart';
part 'change_pass_request_model.g.dart';

@JsonSerializable(createFactory: false)
class ChangePassRequestModel {
  final String email;
  final String newPassword;
  ChangePassRequestModel({required this.email, required this.newPassword});

  Map<String, dynamic> toJson() => _$ChangePassRequestModelToJson(this);
}
