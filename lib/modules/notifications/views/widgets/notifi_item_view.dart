part of '../notifi_view.dart';

class _NotifiItemView extends StatelessWidget {
  const _NotifiItemView({
    required this.currentPage,
    required this.title,
    required this.subtitle,
    required this.notifiId,
    required this.time,
  });
  final NotifiPage currentPage;
  final String title;
  final String subtitle;
  final String notifiId;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final notifiBloc = BlocProvider.of<NotifiBloc>(context);
    return ListTile(
      leading: const Icon(CupertinoIcons.bell_circle_fill),
      title: Text(
        title,
        style: TextStyles.tsP12B,
      ),
      subtitle: Text(subtitle),
      trailing: Text(
        Jiffy.parseFromDateTime(time).fromNow(),
      ),
      onTap: () {
        showCupertinoModalPopup(
          context: context,
          builder: (context) => Card(
            margin: EdgeInsets.all(10.w),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                        ColorManger.red,
                      ),
                    ),
                    onPressed: () {
                      notifiBloc.add(
                          NotifiEvent.deleteNotifiEvent(notifiId: notifiId));
                      Navigator.pop(context);
                    },
                    label: const Text('Delete'),
                    icon: const Icon(Icons.delete),
                  ),
                ),
                if (currentPage == NotifiPage.newNotifi)
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        AppRouter.pop(context: context);
                        notifiBloc
                            .add(NotifiEvent.readNotifi(notifiId: notifiId));
                      },
                      label: const Text('Read'),
                      icon: const Icon(Icons.done),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
