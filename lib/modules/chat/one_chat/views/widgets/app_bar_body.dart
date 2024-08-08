part of '../one_chat_view.dart';

class _AppBarBody extends StatelessWidget implements PreferredSize {
  const _AppBarBody();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ChatRoomArgsModel;
    return AppBar(
      title: ListTile(
        onTap: () {},
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: ProfileImage(size: 35.w, url: args.friendImageUrl)),
        title: Text(
          args.friendName,
          style: TextStyles.tsP15B,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert_rounded,
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(double.infinity, 40.h);
}
