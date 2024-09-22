import 'package:flutter/material.dart';

class ChatRoomArgsModel {
  final String friendId;
  final String friendName;
  final String? friendImageUrl;
  final Color color;
  ChatRoomArgsModel({
    required this.friendId,
    required this.friendName,
    required this.friendImageUrl,
    required this.color,
  });
}
