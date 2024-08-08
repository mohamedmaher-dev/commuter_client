// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_me_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMeResponseModel _$GetMeResponseModelFromJson(Map<String, dynamic> json) =>
    GetMeResponseModel(
      userData: _UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetMeResponseModelToJson(GetMeResponseModel instance) =>
    <String, dynamic>{
      'data': instance.userData,
    };

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      profileImg: json['profileImg'] as String?,
      ratingsQuantity: json['ratingsQuantity'] as int,
    );

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
      'ratingsQuantity': instance.ratingsQuantity,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'profileImg': instance.profileImg,
    };
