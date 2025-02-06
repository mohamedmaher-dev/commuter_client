// ignore_for_file: library_private_types_in_public_api

import 'package:json_annotation/json_annotation.dart';
part 'sign_in_response_model.g.dart';

@JsonSerializable(createToJson: false)
class SignInResponseModel {
  @JsonKey(name: 'data')
  final _UserData userData;
  final String token;

  SignInResponseModel({required this.userData, required this.token});
  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _UserData {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final String role;
  final bool active;

  _UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.active,
  });

  factory _UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
