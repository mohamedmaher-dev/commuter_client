// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponseModel _$SignInResponseModelFromJson(Map<String, dynamic> json) =>
    SignInResponseModel(
      userData: _UserData.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      active: json['active'] as bool,
    );
