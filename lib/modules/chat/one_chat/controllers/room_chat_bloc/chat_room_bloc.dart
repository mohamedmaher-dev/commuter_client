import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_client/core/networking/socket_io_consts.dart';
import 'package:commuter_client/core/networking/socket_io_factory.dart';
import 'package:commuter_client/modules/chat/one_chat/data/models/one_message_model.dart';
import 'package:commuter_client/modules/chat/one_chat/data/rebos/chat_room_rebo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketIo;

part 'chat_room_event.dart';
part 'chat_room_state.dart';
part 'chat_room_bloc.freezed.dart';

class OneChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
  final UserSecretDataModel _userSecretDataModel;
  final TextEditingController textController = TextEditingController();
  final OneChatRoomRebo _chatRoomRebo;
  final socketIo.Socket _socket = SocketIoFactory.instance();
  late String friendId;
  late List<OneMessageModel> messages;
  OneChatRoomBloc(this._chatRoomRebo, this._userSecretDataModel)
      : super(const _Initial()) {
    _socket.onConnect((data) => add(const _ChatRoomOnConnect()));
    _socket.onError((data) => add(_ChatRoomErrorEvent(data.toString())));
    _socket.on(
      SocketIoConsts.loadMessagesEvent,
      (data) => add(_ChatRoomLoadMessages(data)),
    );
    _socket.on(
      SocketIoConsts.onMessage,
      (data) => add(ChatRoomEvent.onMessage(data)),
    );
    on<ChatRoomEvent>(
      (event, emit) {
        event.when(
          started: (friendId) {
            this.friendId = friendId;
            emit(const ChatRoomState.loading());
            _socket.connect();
          },
          onConnect: () {
            _chatRoomRebo.joinRoom(friendId, _socket);
          },
          onError: (error) {
            emit(const ChatRoomState.error());
          },
          onLoadMessages: (data) {
            data as List;
            messages = data.map((e) => OneMessageModel.fromJson(e)).toList();
            if (data.isNotEmpty) {
              emit(ChatRoomState.success(
                  messages: messages.reversed.toList(),
                  myId: _userSecretDataModel.userId));
            } else {
              emit(const ChatRoomState.empty());
            }
          },
          onSendMessage: () {
            if (textController.text.trim().isNotEmpty) {
              _chatRoomRebo.sendMessage(
                friendId: friendId,
                message: textController.text,
                socket: _socket,
              );
              textController.clear();
            }
          },
          onMessage: (data) {
            data as Map<String, dynamic>;
            messages.add(OneMessageModel.fromJson(data));
            emit(ChatRoomState.success(
                messages: messages.reversed.toList(),
                myId: _userSecretDataModel.userId));
          },
        );
      },
    );
  }
  @override
  Future<void> close() {
    _socket.disconnect();
    _socket.dispose();
    return super.close();
  }
}
