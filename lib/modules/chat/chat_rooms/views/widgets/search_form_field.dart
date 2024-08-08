part of '../chat_rooms.dart';

class _SearchFormField extends StatelessWidget {
  const _SearchFormField();

  @override
  Widget build(BuildContext context) {
    final chatRoomsBloc = BlocProvider.of<ChatRoomsBloc>(context);

    return TextFormField(
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0),
        prefixIcon: Icon(CupertinoIcons.search),
        hintText: 'بحث',
      ),
      onChanged: (value) {
        chatRoomsBloc.add(ChatRoomsEvent.onSearch(text: value.toLowerCase()));
      },
    );
  }
}
