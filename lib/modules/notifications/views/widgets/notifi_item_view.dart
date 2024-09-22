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
    final language = Language.of(context);

    return CupertinoContextMenu.builder(
      actions: [
        if (currentPage == NotifiPage.newNotifi)
          CupertinoContextMenuAction(
            trailingIcon: CupertinoIcons.eye,
            onPressed: () {
              notifiBloc.add(NotifiEvent.readNotifi(notifiId: notifiId));
              Navigator.pop(context);
            },
            child: Text(language.read),
          ),
        CupertinoContextMenuAction(
          isDestructiveAction: true,
          trailingIcon: CupertinoIcons.delete,
          child: Text(language.delete),
          onPressed: () {
            notifiBloc.add(NotifiEvent.deleteNotifiEvent(notifiId: notifiId));
            Navigator.pop(context);
          },
        ),
      ],
      builder: (context, animation) => Card(
        child: ListTile(
          leading: const Icon(CupertinoIcons.bell_circle_fill),
          title: Text(
            title,
            style: TextStyles.tsP12B,
          ),
          subtitle: Text(subtitle),
          trailing: Text(
            Jiffy.parseFromDateTime(time).fromNow(),
          ),
        ),
      ),
    );
  }
}
