import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/widgets/empty_view.dart';
import 'package:commuter_client/core/widgets/error_view.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/modules/my_commutes/controller/add_schedules/add_schedules_bloc.dart';
import 'package:commuter_client/modules/my_commutes/controller/commutes_bloc/commutes_bloc.dart';
import 'package:commuter_client/modules/my_commutes/controller/my_commutes_tab/my_commmutes_tab_cubit.dart';
import 'package:commuter_client/modules/my_commutes/views/widgets/add_commute_botttom_sheet_body.dart';
import 'package:commuter_client/modules/my_commutes/views/widgets/add_schedules_bottom_sheet_body.dart';
import 'package:commuter_client/modules/my_commutes/views/widgets/my_commute_item_body.dart';
import 'package:commuter_client/modules/my_commutes/views/widgets/schedules_item_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/localization/generated/l10n.dart';
import '../../../core/themes/app_theme_controller.dart';

class MyCommutesView extends StatelessWidget {
  const MyCommutesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<MyCommmutesTabCubit>(),
        ),
        BlocProvider(
          create: (context) =>
              di<CommutesBloc>()..add(const CommutesEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              di<AddSchedulesBloc>()..add(const AddSchedulesEvent.started()),
        ),
      ],
      child: const _MyCommutesViewBody(),
    );
  }
}

class _MyCommutesViewBody extends StatelessWidget {
  const _MyCommutesViewBody();

  @override
  Widget build(BuildContext context) {
    final myCommmutesTabCubi = BlocProvider.of<MyCommmutesTabCubit>(context);
    final addCommuteBloc = BlocProvider.of<CommutesBloc>(context);
    final addSchedulesBloc = BlocProvider.of<AddSchedulesBloc>(context);
    final language = Language.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(language.my_commutes),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          switch (myCommmutesTabCubi.page) {
            case MyCommutesTab.myCommutes:
              showModalBottomSheet(
                showDragHandle: true,
                context: context,
                builder: (context) => AddCommuteBottomSheetBody(
                  addCommuteBloc: addCommuteBloc,
                ),
              );
              break;
            case MyCommutesTab.scheduledTrips:
              showModalBottomSheet(
                showDragHandle: true,
                context: context,
                builder: (context) =>
                    AddSchedulesBottomSheetBody(bloc: addSchedulesBloc),
              );
              break;
          }
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: BlocBuilder<MyCommmutesTabCubit, MyCommmutesTabState>(
          builder: (context, state) {
            return Column(
              children: [
                CupertinoSlidingSegmentedControl(
                  groupValue: myCommmutesTabCubi.page,
                  thumbColor: ColorManger.primaryContainer,
                  children: {
                    MyCommutesTab.myCommutes: Text(language.commutes),
                    MyCommutesTab.scheduledTrips:
                        Text(language.schedules_trips),
                  },
                  onValueChanged: (value) {
                    BlocProvider.of<MyCommmutesTabCubit>(context)
                        .changePage(value!);
                  },
                ),
                if (myCommmutesTabCubi.page == MyCommutesTab.myCommutes)
                  Expanded(
                    child: BlocBuilder<CommutesBloc, CommutesState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const LoadingView(),
                          failure: (message, id) => const ErrorView(),
                          empty: () => EmptyView(
                            icon: Icons.route_outlined,
                            text: language.no_commutes_found,
                          ),
                          success: (localCommutes) => ListView.builder(
                            padding: EdgeInsets.all(10.w),
                            itemCount: localCommutes.length,
                            itemBuilder: (context, index) {
                              return MyCommuteItemBody(
                                commute: localCommutes[index],
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                if (myCommmutesTabCubi.page == MyCommutesTab.scheduledTrips)
                  Expanded(
                    child: BlocBuilder<AddSchedulesBloc, AddSchedulesState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const LoadingView(),
                          failure: () => const ErrorView(),
                          empty: () => EmptyView(
                            icon: Icons.calendar_month,
                            text: language
                                .no_schedules_trips_found_please_add_one,
                          ),
                          success: (commutes) => ListView.builder(
                            padding: EdgeInsets.all(10.w),
                            itemCount: commutes.length,
                            itemBuilder: (context, index) {
                              return SchedulesItemBody(
                                localScheduleModel: commutes[index],
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
