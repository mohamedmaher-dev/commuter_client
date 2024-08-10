import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/modules/commutes/add_commute/views/add_commute_view.dart';
import 'package:commuter_client/modules/commutes/add_shedule/views/add_shedule_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});
  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        AppRouter.pushReplacement(context: context, page: Pages.home);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.all(10.w),
              child: CupertinoSlidingSegmentedControl(
                groupValue: page,
                thumbColor: ColorManger.primaryContainer,
                children: const {
                  0: Text('Commutes'),
                  1: Text('Schedules Trips'),
                },
                onValueChanged: (value) {
                  setState(() {
                    page = value!;
                  });
                },
              ),
            ),
            if (page == 0) const AddCommuteView(),
            if (page == 1) const AddSheduleView(),
          ],
        ),
      ),
    );
  }
}
