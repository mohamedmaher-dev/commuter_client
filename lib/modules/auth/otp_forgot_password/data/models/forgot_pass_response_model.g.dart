// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_pass_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPassResponseModel _$ForgotPassResponseModelFromJson(
        Map<String, dynamic> json) =>
    ForgotPassResponseModel(
      status: json['status'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ForgotPassResponseModelToJson(
        ForgotPassResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
