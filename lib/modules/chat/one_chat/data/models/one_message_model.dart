import 'package:json_annotation/json_annotation.dart';

part 'one_message_model.g.dart';

@JsonSerializable(createToJson: false)
class OneMessageModel {
  @JsonKey(name: '_id')
  final String messageId;
  final String senderId;
  final String receiverId;
  final String message;
  final DateTime timestamp;
  OneMessageModel({
    required this.messageId,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.timestamp,
  });
  factory OneMessageModel.fromJson(Map<String, dynamic> json) =>
      _$OneMessageModelFromJson(json);
}
