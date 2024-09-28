// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_me_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMeResponseModel _$GetMeResponseModelFromJson(Map<String, dynamic> json) =>
    GetMeResponseModel(
      userData: _UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      ratingsQuantity: (json['ratingsQuantity'] as num?)?.toDouble(),
    );
