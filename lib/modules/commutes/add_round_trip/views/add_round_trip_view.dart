import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddRoundTripView extends StatelessWidget {
  const AddRoundTripView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            'Set Round Trip',
            style: TextStyles.tsP15B,
          ),
          subtitle: const Text('Work'),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.w),
        children: [
          Text(
            'Pick Up',
            style: TextStyles.tsP15B,
          ),
          SizedBox(height: 5.h),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: 'Alex',
                    readOnly: true,
                    decoration: const InputDecoration(
                      hintText: 'Start Time',
                      prefixIcon: Icon(
                        Icons.location_on,
                      ),
                    ),
                  ),
                  Divider(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.h,
                        width: 35.w,
                        child: const Icon(Icons.access_time),
                      ),
                      Expanded(
                        child: Text(
                          'Landing Time',
                          style: TextStyles.tsP12B,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('Start Time'),
                      ),
                      const Icon(Icons.arrow_forward_rounded),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('End Time'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 25.h),
          Text(
            'Drop Off',
            style: TextStyles.tsP15B,
          ),
          SizedBox(height: 5.h),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: 'Cairo',
                    readOnly: true,
                    decoration: const InputDecoration(
                      hintText: 'Start Time',
                      prefixIcon: Icon(
                        Icons.location_on,
                      ),
                    ),
                  ),
                  Divider(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.h,
                        width: 35.w,
                        child: const Icon(Icons.access_time),
                      ),
                      Expanded(
                        child: Text(
                          'Time Window',
                          style: TextStyles.tsP12B,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('Strart Time'),
                      ),
                      const Icon(Icons.arrow_forward_rounded),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('End Time'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text(
              'Set Round Trip',
            ),
          )
        ],
      ),
    );
  }
}
