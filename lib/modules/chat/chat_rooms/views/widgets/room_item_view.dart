part of '../chat_rooms.dart';

class _RoomItemView extends StatelessWidget {
  const _RoomItemView(this.room);

  final ChatRoomModel room;

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
                child: ProfileImage(size: 50.w, url: room.image),
              ),
            ),
            VerticalDivider(
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
                    ),
                  );
                },
                title: Text(
                  room.name,
                  style: TextStyles.tsP15B,
                ),
                subtitle: Text(
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
