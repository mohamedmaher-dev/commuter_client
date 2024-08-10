import 'package:json_annotation/json_annotation.dart';

part 'chat_room_model.g.dart';

@JsonSerializable(createToJson: false)
class ChatRoomModel {
  final String id;
  final String lastMessage;
  final String name;
  final String? image;

  ChatRoomModel(
      {required this.id,
      required this.lastMessage,
      required this.name,
      required this.image});

  factory ChatRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomModelFromJson(json);
}
