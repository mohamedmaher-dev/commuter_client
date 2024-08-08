import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_me_response_model.g.dart';

@JsonSerializable()
class GetMeResponseModel {
  @JsonKey(name: 'data')
  final _UserData userData;

  GetMeResponseModel({required this.userData});

  factory GetMeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetMeResponseModelFromJson(json);
}

@JsonSerializable()
class _UserData {
  final int ratingsQuantity;
  final String name;
  final String email;
  final String? phone;
  final String? profileImg;

  _UserData({
    required this.name,
    required this.email,
    required this.phone,
    required this.profileImg,
    required this.ratingsQuantity,
  });

  factory _UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
