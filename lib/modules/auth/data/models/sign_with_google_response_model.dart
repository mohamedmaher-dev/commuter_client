import 'package:json_annotation/json_annotation.dart';

part 'sign_with_google_response_model.g.dart';

@JsonSerializable()
class SignWithGoogleResponseModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final String role;
  final bool active;

  SignWithGoogleResponseModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.active,
  });

  factory SignWithGoogleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignWithGoogleResponseModelFromJson(json);
}
