import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/widgets/empty_view.dart';
import 'package:commuter_client/core/widgets/error_view.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/core/widgets/profile_image.dart';
import 'package:commuter_client/modules/chat/one_chat/controllers/room_chat_bloc/chat_room_bloc.dart';
import 'package:commuter_client/modules/chat/one_chat/data/models/chat_room_args_model.dart';
import 'package:commuter_client/modules/chat/one_chat/views/widgets/create_contract_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../data/models/one_message_model.dart';
part 'widgets/message_item.dart';
part 'widgets/bottom_body.dart';
part 'widgets/app_bar_body.dart';
part 'widgets/sparator_view.dart';

class OneChatView extends StatelessWidget {
  const OneChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ChatRoomArgsModel;
    return BlocProvider(
      create: (context) => di<OneChatRoomBloc>()
        ..add(
          ChatRoomEvent.started(friendId: args.friendId),
        ),
      child: const _OneChatView(),
    );
  }
}

class _OneChatView extends StatelessWidget {
  const _OneChatView();

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Scaffold(
      appBar: const _AppBarBody(),
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<OneChatRoomBloc, ChatRoomState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.when(
                  initial: () => const LoadingView(),
                  loading: () => const LoadingView(),
                  error: () => const ErrorView(onPressed: null),
                  success: (messages, myId) => Padding(
                    padding: EdgeInsets.all(10.0.w),
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          _SparatorView(index: index, messages: messages),
                      shrinkWrap: true,
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (context, index) => _MessageItemView(
                        isMe: messages[index].senderId == myId,
                        message: messages[index].message,
                        time: Jiffy.parseFromDateTime(messages[index].timestamp)
                            .jm,
                      ),
                    ),
                  ),
                  empty: () => EmptyView(
                    icon: Icons.chat,
                    text: language.no_messages_yet,
                  ),
                );
              },
            ),
          ),
          const _BottomBody(),
        ],
      ),
    );
  }
}

// bool _showTime(List<OneMessageModel> messages, int index) {
//   if (index == 0) {
//     return true;
//   } else {
//     if (Jiffy.parseFromDateTime(messages[index].timestamp).jm ==
//         Jiffy.parseFromDateTime(messages[index - 1].timestamp).jm) {
//       return false;
//     } else {
//       return true;
//     }
//   }
// }
