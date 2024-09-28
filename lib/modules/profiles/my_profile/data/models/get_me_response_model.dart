// ignore_for_file: library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_me_response_model.g.dart';

@JsonSerializable(createToJson: false)
class GetMeResponseModel {
  @JsonKey(name: 'data')
  final _UserData userData;

  GetMeResponseModel({required this.userData});

  factory GetMeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetMeResponseModelFromJson(json);

  GetMeResponseModel copyWith({
    double? ratingsQuantity,
    String? name,
    String? email,
    String? phone,
    String? image,
  }) {
    return GetMeResponseModel(
      userData: userData._copyWith(
        ratingsQuantity: ratingsQuantity,
        name: name,
        email: email,
        phone: phone,
        image: image,
      ),
    );
  }
}

@JsonSerializable(createToJson: false)
class _UserData {
  final double? ratingsQuantity;
  final String name;
  final String email;
  final String? phone;
  final String? image;

  _UserData({
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.ratingsQuantity,
  });

  factory _UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  _UserData _copyWith({
    double? ratingsQuantity,
    String? name,
    String? email,
    String? phone,
    String? image,
  }) {
    return _UserData(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      image: image ?? this.image,
      ratingsQuantity: ratingsQuantity ?? this.ratingsQuantity,
    );
  }
}
