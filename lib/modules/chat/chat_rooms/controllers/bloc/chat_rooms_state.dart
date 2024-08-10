part of 'chat_rooms_bloc.dart';

@freezed
class ChatRoomsState with _$ChatRoomsState {
  const factory ChatRoomsState.initial() = _Initial;
  const factory ChatRoomsState.loading() = _Loading;
  const factory ChatRoomsState.success({required List<ChatRoomModel> rooms}) =
      _Success;
  const factory ChatRoomsState.empty() = _Empty;
  const factory ChatRoomsState.error() = _Error;
}
