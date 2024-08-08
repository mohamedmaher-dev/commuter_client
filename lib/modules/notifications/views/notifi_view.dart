import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/core/widgets/empty_view.dart';
import 'package:commuter_client/core/widgets/error_view.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/modules/notifications/controllers/notifi_bloc/notifi_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../../core/themes/controller/app_theme_bloc.dart';
part 'widgets/notifi_item_view.dart';
part 'widgets/notifi_app_bar_view.dart';

class NotifiView extends StatelessWidget {
  const NotifiView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<NotifiBloc>()..add(const NotifiEvent.started()),
      child: const _NotifiView(),
    );
  }
}

class _NotifiView extends StatelessWidget {
  const _NotifiView();

  @override
  Widget build(BuildContext context) {
    final notifiBloc = BlocProvider.of<NotifiBloc>(context);
    return Scaffold(
      appBar: const _NotifiAppBarView(),
      body: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: Column(
          children: [
            BlocBuilder<NotifiBloc, NotifiState>(
              builder: (context, state) {
                return CupertinoSlidingSegmentedControl(
                  thumbColor: ColorManger.primaryContainer,
                  children: const <NotifiPage, Widget>{
                    NotifiPage.newNotifi: Text('New'),
                    NotifiPage.readedNotifi: Text('Readed'),
                  },
                  onValueChanged: (value) {
                    notifiBloc.add(
                      NotifiEvent.changePage(
                        newPage: value as NotifiPage,
                      ),
                    );
                  },
                  groupValue: notifiBloc.currentPage,
                );
              },
            ),
            SizedBox(height: 5.h),
            BlocBuilder<NotifiBloc, NotifiState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Expanded(child: LoadingView()),
                  loading: () => const Expanded(child: LoadingView()),
                  success: (currentPage, notifis) => Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => _NotifiItemView(
                        currentPage: currentPage,
                        title: notifis[index].title,
                        subtitle: notifis[index].body,
                        notifiId: notifis[index].notificationId,
                        time: notifis[index].createdAt,
                      ),
                      itemCount: notifis.length,
                    ),
                  ),
                  empty: () => const Expanded(
                    child: EmptyView(
                      text: 'No Notifications',
                      icon: Icons.notifications_off_rounded,
                    ),
                  ),
                  failure: () => Expanded(
                    child: ErrorView(
                      onPressed: () {
                        notifiBloc.add(const NotifiEvent.started());
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
