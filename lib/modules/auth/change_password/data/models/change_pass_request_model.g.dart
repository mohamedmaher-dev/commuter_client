// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'change_pass_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePassRequestModel _$ChangePassRequestModelFromJson(
        Map<String, dynamic> json) =>
    ChangePassRequestModel(
      email: json['email'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$ChangePassRequestModelToJson(
        ChangePassRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
    };
