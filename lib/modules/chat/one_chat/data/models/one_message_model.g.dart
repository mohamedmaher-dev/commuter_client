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

Map<String, dynamic> _$OneMessageModelToJson(OneMessageModel instance) =>
    <String, dynamic>{
      '_id': instance.messageId,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'message': instance.message,
      'timestamp': instance.timestamp.toIso8601String(),
    };
