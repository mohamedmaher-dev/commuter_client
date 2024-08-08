import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/controller/app_theme_bloc.dart';
import '../../../core/themes/text_styles.dart';

class NearbyCommutes extends StatelessWidget {
  const NearbyCommutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CupertinoSlidingSegmentedControl(
        thumbColor: ColorManger.primaryContainer,
        children: const {
          0: Text('All'),
          1: Text('Carpooling'),
          2: Text('Female Only'),
        },
        groupValue: 0,
        onValueChanged: (value) {},
      ),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.all(10.w),
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) => Card(
            child: ExpansionTile(
              leading: const Icon(CupertinoIcons.person_alt_circle_fill),
              title: Text(
                'Mohamed Maher',
                style: TextStyles.tsP12B,
              ),
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '14 Minutes',
                              style: TextStyles.tsP12B,
                            ),
                            subtitle: const Text('Time Left'),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              'BMW',
                              style: TextStyles.tsP12B,
                            ),
                            subtitle: const Text('Car Brand'),
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        'Matching',
                        style: TextStyles.tsP12B,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.all(2.w),
                        child: ActionChip(
                          onPressed: () {},
                          label: const Text('Work'),
                          avatar: const Icon(
                            Icons.arrow_forward_rounded,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              textAlign: TextAlign.center,
                              'Pickup',
                              style: TextStyles.tsP12B,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              textAlign: TextAlign.center,
                              'Landing',
                              style: TextStyles.tsP12B,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(color: ColorManger.primary),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.access_time_rounded),
                            SizedBox(width: 5.w),
                            const Text('07:00 - 07:30'),
                            SizedBox(width: 5.w),
                            Container(
                              width: 1.w,
                              height: 15.h,
                              color: ColorManger.white,
                            ),
                            const Icon(Icons.access_time_rounded),
                            SizedBox(width: 5.w),
                            const Text('07:30 - 08:00'),
                            SizedBox(width: 5.w),
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            title: const Text('Carpooling'),
                            value: true,
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          width: 1.w,
                          height: 15.h,
                          color: ColorManger.white,
                        ),
                        Expanded(
                          child: CheckboxListTile(
                            title: const Text('Female Only'),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            label: const Text('Join'),
                            icon: const Icon(Icons.add),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            label: const Text('Chat'),
                            icon: const Icon(Icons.chat),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
