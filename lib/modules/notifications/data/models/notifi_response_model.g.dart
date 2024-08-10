// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifi_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotifiResponseModel _$NotifiResponseModelFromJson(Map<String, dynamic> json) =>
    NotifiResponseModel(
      json['_id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isRead: json['read'] as bool,
    );
