import 'package:commuter_client/core/widgets/notifi_icon_view.dart';
import 'package:commuter_client/modules/home/controllers/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/routes/app_route.dart';

class AppBarView extends StatelessWidget implements PreferredSize {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return AppBar(
      forceMaterialTransparency: true,
      title: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Text(
            _getAppBarTitle(homeBloc.currentPage, context),
          );
        },
      ),
      actions: [
        const NotifiIconView(),
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

String _getAppBarTitle(int currentPage, BuildContext context) {
  final Language language = Language.of(context);
  if (currentPage == 0) {
    return language.whare_to_go;
  } else if (currentPage == 1) {
    return language.nearby_commuters;
  } else if (currentPage == 2) {
    return language.transactions;
  } else if (currentPage == 3) {
    return language.chats;
  } else if (currentPage == 4) {
    return language.profile;
  }
  return language.unknown;
}
