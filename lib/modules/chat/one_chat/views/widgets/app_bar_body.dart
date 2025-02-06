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
        leading: Hero(
          tag: args.friendId,
          child: ProfileAvatar(
            size: 25.w,
            radius: 100.r,
            name: args.friendName,
            imageUrl: args.friendImageUrl,
          ),
        ),
        title: Text(
          maxLines: 1,
          args.friendName,
          style: TextStyles.ts15B,
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
