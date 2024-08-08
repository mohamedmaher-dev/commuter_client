import 'package:json_annotation/json_annotation.dart';
part 'emit_msg_model.g.dart';

@JsonSerializable(createFactory: false)
class EmitMsgModel {
  final String senderId;
  final String senderType;
  final String receiverId;
  final String receiverType;
  final String message;
  EmitMsgModel({
    required this.senderId,
    required this.senderType,
    required this.receiverId,
    required this.receiverType,
    required this.message,
  });

  Map<String, dynamic> toJson() => _$EmitMsgModelToJson(this);
}
