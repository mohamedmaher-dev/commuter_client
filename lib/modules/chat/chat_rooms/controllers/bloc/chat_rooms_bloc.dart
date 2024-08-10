import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/chat/chat_rooms/data/rebos/chat_rooms_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/chat_room_model.dart';

part 'chat_rooms_event.dart';
part 'chat_rooms_state.dart';
part 'chat_rooms_bloc.freezed.dart';

class ChatRoomsBloc extends Bloc<ChatRoomsEvent, ChatRoomsState> {
  final ChatRoomRebo chatRoomRebo;
  late List<ChatRoomModel> rooms;
  ChatRoomsBloc({required this.chatRoomRebo}) : super(const _Initial()) {
    on<ChatRoomsEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const ChatRoomsState.loading());
            final roomsResult = await chatRoomRebo.getRooms();
            roomsResult.when(
              success: (data) {
                if (data.isEmpty) {
                  emit(const ChatRoomsState.empty());
                } else {
                  rooms = data;
                  emit(ChatRoomsState.success(rooms: data));
                }
              },
              failure: (apiErrorModel) {
                emit(const ChatRoomsState.error());
              },
            );
          },
          onSearch: (text) {
            if (text.isEmpty) {
              add(const ChatRoomsEvent.started());
            } else {
              List<ChatRoomModel> filteredRooms = [];
              for (var element in rooms) {
                if (element.name.toLowerCase().contains(text)) {
                  filteredRooms.add(element);
                }
              }
              emit(ChatRoomsState.success(rooms: filteredRooms));
            }
          },
        );
      },
    );
  }
}
