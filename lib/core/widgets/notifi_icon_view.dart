import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;
import '../../modules/home/controllers/notifi_icon_bloc/notifi_icon_bloc.dart';
import '../routes/app_route.dart';

class NotifiIconView extends StatelessWidget {
  const NotifiIconView({super.key});

  @override
  Widget build(BuildContext context) {
    final notifiIconBloc = BlocProvider.of<NotifiIconBloc>(context);

    return BlocBuilder<NotifiIconBloc, NotifiIconState>(
      builder: (context, state) => _NotifiItem(
        showBadge: state is HasNotifications,
        onPressed: () {
          AppRouter.push(context: context, page: Pages.notifications);
          notifiIconBloc.add(const NotifiIconEvent.read());
        },
      ),
    );
  }
}

class _NotifiItem extends StatelessWidget {
  const _NotifiItem({required this.onPressed, required this.showBadge});
  final void Function() onPressed;
  final bool showBadge;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: badges.Badge(
        showBadge: showBadge,
        child: const Icon(CupertinoIcons.bell_fill),
      ),
    );
  }
}
