import 'package:commuter_client/core/routes/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickTime extends StatelessWidget {
  const PickTime({
    super.key,
    required this.onPressed,
  });
  final Function(DateTime) onPressed;
  @override
  Widget build(BuildContext context) {
    DateTime? dateTime;
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.r),
            ),
          ),
          height: 250,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.time,
            onDateTimeChanged: (value) {
              dateTime = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: FilledButton(
            onPressed: () {
              onPressed(dateTime ?? DateTime.now());
              AppRouter.pop(context: context);
            },
            child: const Text('تأكيد'),
          ),
        )
      ],
    );
  }
}
