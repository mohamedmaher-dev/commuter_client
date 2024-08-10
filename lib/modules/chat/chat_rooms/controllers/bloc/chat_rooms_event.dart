part of 'chat_rooms_bloc.dart';

@freezed
class ChatRoomsEvent with _$ChatRoomsEvent {
  const factory ChatRoomsEvent.started() = _Started;
  const factory ChatRoomsEvent.onSearch({required String text}) = _OnSearch;
}
