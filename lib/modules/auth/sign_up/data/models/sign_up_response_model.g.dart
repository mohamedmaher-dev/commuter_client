// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponseModel _$SignUpResponseModelFromJson(Map<String, dynamic> json) =>
    SignUpResponseModel(
      userData: _UserData.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$SignUpResponseModelToJson(
        SignUpResponseModel instance) =>
    <String, dynamic>{
      'data': instance.userData,
      'token': instance.token,
    };

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      role: json['role'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'active': instance.active,
    };
