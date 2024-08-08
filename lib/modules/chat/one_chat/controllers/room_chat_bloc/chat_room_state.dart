part of 'chat_room_bloc.dart';

@freezed
class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState.initial() = _Initial;
  const factory ChatRoomState.loading() = _Loading;
  const factory ChatRoomState.error() = _Error;
  const factory ChatRoomState.success(
      {required List<OneMessageModel> messages,
      required String myId}) = _Success;
  const factory ChatRoomState.empty() = _Empty;
}
