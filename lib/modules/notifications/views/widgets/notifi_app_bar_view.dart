part of '../notifi_view.dart';

class _NotifiAppBarView extends StatelessWidget implements PreferredSize {
  const _NotifiAppBarView();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Notifications'),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 30.h);
}
