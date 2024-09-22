// ignore_for_file: library_prefixes

import 'package:commuter_client/core/models/user_type_enum.dart';
import 'package:commuter_client/core/networking/socket_io_consts.dart';
import 'package:commuter_client/modules/chat/one_chat/data/models/emit_msg_model.dart';
import 'package:commuter_client/modules/chat/one_chat/data/models/join_room_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketIo;

class OneChatRoomRebo {
  OneChatRoomRebo();
  void joinRoom(String friendId, String userId, socketIo.Socket socket) async {
    final joinRoomModel = JoinRoomModel(
      userId: userId,
      driverId: friendId,
    );
    socket.emit(SocketIoConsts.joinRoomEvent, joinRoomModel.toJson());
  }

  void sendMessage({
    required String message,
    required String friendId,
    required String userId,
    required socketIo.Socket socket,
  }) async {
    final emitMsgModel = EmitMsgModel(
      senderId: userId,
      senderType: UserType.user.name,
      receiverId: friendId,
      receiverType: UserType.driver.name,
      message: message,
    );
    socket.emit(SocketIoConsts.sendMessageEvent, emitMsgModel.toJson());
  }
}
