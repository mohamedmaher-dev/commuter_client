import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_model.g.dart';

@JsonSerializable(createFactory: false)
class SignUpRequestModel {
  final String name;
  final String email;
  final String password;
  @JsonKey(name: 'passwordConfirm')
  final String confirmPassword;
  @JsonKey(name: 'phone')
  final String phoneNumber;
  SignUpRequestModel({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestModelToJson(this);
}
