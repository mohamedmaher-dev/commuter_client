part of '../one_chat_view.dart';

class _SparatorView extends StatelessWidget {
  const _SparatorView({required this.index, required this.messages});
  final int index;

  final List<OneMessageModel> messages;

  @override
  Widget build(BuildContext context) {
    {
      if (_checkCond()) {
        return const SizedBox.shrink();
      } else {
        return Center(
          child: Container(
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              color: ColorManger.textFormbBackground,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Text(
              _getDateTime(messages[index].timestamp),
            ),
          ),
        );
      }
    }
  }

  String _getDateTime(DateTime time) {
    return Jiffy.parseFromDateTime(time).yMMMEd;
  }

  bool _checkCond() {
    return _getDateTime(messages[index + 1].timestamp) ==
        _getDateTime(messages[index].timestamp);
  }
}
