part of '../notifi_view.dart';

class _NotifiAppBarView extends StatelessWidget implements PreferredSize {
  const _NotifiAppBarView();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return AppBar(
      title: Text(language.notifications),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(double.infinity, 30.h);
}
