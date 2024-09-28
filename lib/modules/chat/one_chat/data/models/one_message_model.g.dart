// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneMessageModel _$OneMessageModelFromJson(Map<String, dynamic> json) =>
    OneMessageModel(
      messageId: json['_id'] as String,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      message: json['message'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );
