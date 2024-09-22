part of '../one_chat_view.dart';

class _MessageItemView extends StatelessWidget {
  const _MessageItemView({
    required this.isMe,
    required this.message,
    required this.time,
  });
  final bool isMe;
  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    const int radius = 10;
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: Column(
        children: [
          Align(
            alignment: isMe
                ? AlignmentDirectional.centerEnd
                : AlignmentDirectional.centerStart,
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: isMe
                  ? BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(radius.r),
                        topEnd: Radius.circular(radius.r),
                        topStart: Radius.circular(radius.r),
                      ),
                      color: ColorManger.myGold,
                    )
                  : BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(radius.r),
                        topEnd: Radius.circular(radius.r),
                        topStart: Radius.circular(radius.r),
                      ),
                      color: ColorManger.grey,
                    ),
              child: Text(
                message,
                style: isMe
                    ? TextStyle(
                        color: ColorManger.black,
                        fontSize: 10.sp,
                      )
                    : TextStyle(
                        color: ColorManger.black,
                        fontSize: 10.sp,
                      ),
              ),
            ),
          ),
          Align(
            alignment: isMe
                ? AlignmentDirectional.centerEnd
                : AlignmentDirectional.centerStart,
            child: Text(time),
          )
        ],
      ),
    );
  }
}
