part of 'chat_room_bloc.dart';

@freezed
class ChatRoomEvent with _$ChatRoomEvent {
  const factory ChatRoomEvent.started({required String friendId}) = _Started;
  const factory ChatRoomEvent.onConnect() = _ChatRoomOnConnect;
  const factory ChatRoomEvent.onError(String error) = _ChatRoomErrorEvent;
  const factory ChatRoomEvent.onLoadMessages(dynamic data) =
      _ChatRoomLoadMessages;
  const factory ChatRoomEvent.onSendMessage() = _ChatRoomSendMessage;
  const factory ChatRoomEvent.onMessage(dynamic data) = _OnMessageSent;
}
