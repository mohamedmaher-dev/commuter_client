import 'package:commuter_client/modules/home/controllers/home_bloc/home_bloc.dart';
import 'package:commuter_client/modules/home/controllers/notifi_icon_bloc/notifi_icon_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routes/app_route.dart';

class AppBarView extends StatelessWidget implements PreferredSize {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    final notifiIconBloc = BlocProvider.of<NotifiIconBloc>(context);
    return AppBar(
      title: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Text(
            _getAppBarTitle(homeBloc.currentPage),
          );
        },
      ),
      actions: [
        BlocBuilder<NotifiIconBloc, NotifiIconState>(
          builder: (context, state) => _NotifiItem(
            showBadge: state is HasNotifications,
            onPressed: () {
              AppRouter.push(context: context, page: Pages.notifications);
              notifiIconBloc.add(const NotifiIconEvent.read());
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5.w),
          child: IconButton(
            onPressed: () {
              AppRouter.push(context: context, page: Pages.settings);
            },
            icon: const Icon(Icons.settings),
          ),
        ),
        SizedBox(width: 10.w)
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

String _getAppBarTitle(int currentPage) {
  if (currentPage == 0) {
    return 'Whare to go?';
  } else if (currentPage == 1) {
    return 'Nearby Commuters';
  } else if (currentPage == 2) {
    return 'Transactions';
  } else if (currentPage == 3) {
    return 'Chats';
  } else if (currentPage == 4) {
    return 'Profile';
  }
  return 'Unknown';
}

class _NotifiItem extends StatelessWidget {
  const _NotifiItem({required this.onPressed, required this.showBadge});
  final void Function() onPressed;
  final bool showBadge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: IconButton(
        onPressed: onPressed,
        icon: badges.Badge(
          showBadge: showBadge,
          child: const Icon(CupertinoIcons.bell_fill),
        ),
      ),
    );
  }
}
