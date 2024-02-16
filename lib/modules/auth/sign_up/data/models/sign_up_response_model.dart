import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  @JsonKey(name: 'data')
  final _UserData userData;
  final String token;

  SignUpResponseModel({required this.userData, required this.token});
  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
}

@JsonSerializable()
class _UserData {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final String password;
  final String role;
  final bool active;

  _UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.role,
    required this.active,
  });

  factory _UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
