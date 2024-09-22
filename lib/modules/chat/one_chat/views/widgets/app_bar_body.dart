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
          child: Hero(
            tag: args.friendId,
            child: args.friendImageUrl == null
                ? ProfileImage(
                    fontSize: 20.sp,
                    size: 15.w,
                    type: ImageType.avatar,
                    value: args.friendName,
                    color: args.color,
                  )
                : ProfileImage(
                    fontSize: 15.sp,
                    size: 30.w,
                    type: ImageType.networkImage,
                    value: args.friendImageUrl!,
                    color: args.color,
                  ),
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
