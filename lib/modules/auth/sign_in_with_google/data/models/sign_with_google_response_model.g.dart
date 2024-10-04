// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_with_google_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignWithGoogleResponseModel _$SignWithGoogleResponseModelFromJson(
        Map<String, dynamic> json) =>
    SignWithGoogleResponseModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$SignWithGoogleResponseModelToJson(
        SignWithGoogleResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'active': instance.active,
    };
