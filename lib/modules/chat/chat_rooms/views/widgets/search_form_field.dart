part of '../chat_rooms.dart';

class _SearchFormField extends StatelessWidget {
  const _SearchFormField();

  @override
  Widget build(BuildContext context) {
    final chatRoomsBloc = BlocProvider.of<ChatRoomsBloc>(context);
    final language = Language.of(context);

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
        prefixIcon: const Icon(CupertinoIcons.search),
        hintText: language.search,
        filled: true,
        fillColor: ColorManger.textFormbBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (value) {
        chatRoomsBloc.add(ChatRoomsEvent.onSearch(text: value.toLowerCase()));
      },
    );
  }
}
