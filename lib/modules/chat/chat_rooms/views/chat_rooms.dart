import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/core/widgets/empty_view.dart';
import 'package:commuter_client/core/widgets/error_view.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/core/widgets/profile_image.dart';
import 'package:commuter_client/modules/chat/chat_rooms/controllers/bloc/chat_rooms_bloc.dart';
import 'package:commuter_client/modules/chat/chat_rooms/data/models/chat_room_model.dart';
import 'package:commuter_client/modules/chat/one_chat/data/models/chat_room_args_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/app_route.dart';
import '../../../../core/themes/controller/app_theme_bloc.dart';

part 'widgets/room_item_view.dart';
part 'widgets/search_form_field.dart';

class ChatRooms extends StatelessWidget {
  const ChatRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<ChatRoomsBloc>()
        ..add(
          const ChatRoomsEvent.started(),
        ),
      child: const _ChatRooms(),
    );
  }
}

class _ChatRooms extends StatelessWidget {
  const _ChatRooms();

  @override
  Widget build(BuildContext context) {
    final chatRoomsBloc = BlocProvider.of<ChatRoomsBloc>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: BlocBuilder<ChatRoomsBloc, ChatRoomsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const LoadingView(),
              loading: () => const LoadingView(),
              success: (rooms) {
                return Column(
                  children: [
                    const _SearchFormField(),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: rooms.length,
                        itemBuilder: (context, index) =>
                            _RoomItemView(rooms[index]),
                      ),
                    ),
                  ],
                );
              },
              empty: () => const EmptyView(
                text: 'No chats found',
                icon: Icons.speaker_notes_off_rounded,
              ),
              error: () => ErrorView(
                onPressed: () {
                  chatRoomsBloc.add(const ChatRoomsEvent.started());
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
