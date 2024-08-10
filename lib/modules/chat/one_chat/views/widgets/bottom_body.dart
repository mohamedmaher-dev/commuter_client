part of '../one_chat_view.dart';

class _BottomBody extends StatelessWidget {
  const _BottomBody();

  @override
  Widget build(BuildContext context) {
    final chatRoomBloc = BlocProvider.of<OneChatRoomBloc>(context);

    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Row(
        textDirection: TextDirection.ltr,
        children: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const CreateContractBody(),
              );
            },
            icon: const Icon(Icons.handshake_rounded),
          ),
          Expanded(
            child: TextFormField(
              controller: chatRoomBloc.textController,
              decoration: const InputDecoration(
                hintText: 'اكتب رسالتك ....',
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          SizedBox(
            width: 50,
            height: 50,
            child: IconButton.filled(
              onPressed: () {
                chatRoomBloc.add(const ChatRoomEvent.onSendMessage());
              },
              icon: const Directionality(
                textDirection: TextDirection.ltr,
                child: Icon(
                  Icons.send,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
