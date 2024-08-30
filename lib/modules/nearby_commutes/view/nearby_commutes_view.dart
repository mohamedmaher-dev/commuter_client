import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/controller/app_theme_bloc.dart';
import '../../../core/themes/text_styles.dart';

class NearbyCommutes extends StatefulWidget {
  const NearbyCommutes({super.key});

  @override
  State<NearbyCommutes> createState() => _NearbyCommutesState();
}

class _NearbyCommutesState extends State<NearbyCommutes> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CupertinoSlidingSegmentedControl(
        thumbColor: ColorManger.primaryContainer,
        children: const {
          0: Text('All'),
          1: Text('Online'),
          2: Text('Upcoming'),
          3: Text('Offline'),
        },
        groupValue: groupValue,
        onValueChanged: (value) {
          setState(() {
            groupValue = value!;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Filter By'),
          PopupMenuButton(
            icon: const Icon(CupertinoIcons.slider_horizontal_3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.done),
                    label: const Text('Best Match'),
                  ),
                ),
              ),
              PopupMenuItem(
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.done),
                    label: const Text('Carpooling'),
                  ),
                ),
              ),
              PopupMenuItem(
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.done),
                    label: const Text('Female Only'),
                  ),
                ),
              ),
              PopupMenuItem(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('One Way'),
                  ),
                ),
              ),
              PopupMenuItem(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Two Way'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Expanded(
        child: ListView(
          padding: EdgeInsets.all(10.w),
          shrinkWrap: true,
          children: [
            Card(
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
                                'BMW - X6',
                                style: TextStyles.tsP12B,
                              ),
                              subtitle: const Text('Car Brand - Model'),
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      ListTile(
                        title: Row(
                          children: [
                            Text(
                              'Matching',
                              style: TextStyles.tsP12B,
                            ),
                            Expanded(
                              child: ActionChip(
                                onPressed: () {},
                                label: const Text('Work'),
                                avatar: const Icon(
                                  Icons.arrow_forward_rounded,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      ExpansionTile(
                        title: Text(
                          'Pickup And Dropoff',
                          style: TextStyles.tsP12B,
                        ),
                        children: [
                          Row(
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
                                  'Dropoff',
                                  style: TextStyles.tsP12B,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(10.w),
                            margin: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorManger.primary),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(Icons.access_time_rounded),
                                    SizedBox(width: 5.w),
                                    const Text('07:00 - 07:30'),
                                    SizedBox(width: 5.w),
                                    const Icon(Icons.arrow_right_rounded),
                                    SizedBox(width: 5.w),
                                    const Text('07:30 - 08:00'),
                                    SizedBox(width: 5.w),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(Icons.location_on),
                                    SizedBox(width: 5.w),
                                    const Text('El-Horia Street'),
                                    SizedBox(width: 5.w),
                                    const Icon(Icons.arrow_right_rounded),
                                    SizedBox(width: 5.w),
                                    const Text('University Road'),
                                    SizedBox(width: 5.w),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              leading:
                                  Icon(Icons.done, color: ColorManger.primary),
                              title: const Text(
                                'Carpooling',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              leading:
                                  Icon(Icons.close, color: ColorManger.red),
                              title: const Text(
                                'Female Only',
                                textAlign: TextAlign.center,
                              ),
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
                              label: const Text('Send Request'),
                              icon: const Icon(Icons.arrow_forward_rounded),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text('Chat'),
                              icon: const Icon(Icons.chat),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text('Show On Map'),
                              icon: const Icon(Icons.map_rounded),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: ExpansionTile(
                leading: const Icon(CupertinoIcons.person_alt_circle_fill),
                title: Text(
                  'Amin Amgad',
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
                                '1.5 KM',
                                style: TextStyles.tsP12B,
                              ),
                              subtitle: const Text('Distance Left'),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'BMW - X6',
                                style: TextStyles.tsP12B,
                              ),
                              subtitle: const Text('Car Brand - Model'),
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
          ],
        ),
      ),
    ]);
  }
}
