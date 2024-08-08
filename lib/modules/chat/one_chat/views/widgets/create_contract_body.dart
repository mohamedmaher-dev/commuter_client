import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/text_styles.dart';

class CreateContractBody extends StatelessWidget {
  const CreateContractBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            'Create Contract',
            style: TextStyles.tsP15B,
          ),
          const Divider(),
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Total Price'),
                ),
              ),
              SizedBox(width: 10.w),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Number of months'),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(2.w),
                child: ActionChip(
                  onPressed: () {},
                  label: const Text('Work'),
                  avatar: const Icon(
                    Icons.done,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2.w),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Home'),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          FilledButton.icon(
            onPressed: () {},
            label: const Text('Confirm'),
          )
        ],
      ),
    );
  }
}
