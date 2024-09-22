part of '../chat_rooms.dart';

class _RoomItemView extends StatelessWidget {
  _RoomItemView(this.room);
  final ChatRoomModel room;
  final Color color = ColorManger.random;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(5.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: Hero(
                  tag: room.id,
                  child: room.image == null
                      ? ProfileImage(
                          fontSize: 15.sp,
                          size: 35.w,
                          type: ImageType.avatar,
                          value: room.name,
                          color: color,
                        )
                      : ProfileImage(
                          fontSize: 15.sp,
                          size: 35.w,
                          type: ImageType.networkImage,
                          value: room.image!,
                          color: color,
                        ),
                ),
              ),
            ),
            const VerticalDivider(
              thickness: 5,
              color: ColorManger.white,
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  AppRouter.push(
                    context: context,
                    page: Pages.oneChat,
                    arguments: ChatRoomArgsModel(
                      friendId: room.id,
                      friendName: room.name,
                      friendImageUrl: room.image,
                      color: color,
                    ),
                  );
                },
                title: Text(
                  room.name,
                  style: TextStyles.ts15B,
                ),
                subtitle: Text(
                  maxLines: 1,
                  room.lastMessage,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
