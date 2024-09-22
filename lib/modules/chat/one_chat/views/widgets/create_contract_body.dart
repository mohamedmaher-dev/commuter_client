import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_theme_controller.dart';

class CreateContractBody extends StatelessWidget {
  const CreateContractBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            language.create_contract,
            style: TextStyles.tsP15B,
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: language.total_price),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration(hintText: language.number_of_months),
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
          FilledButton(
            onPressed: () {},
            child: const Text('Confirm'),
          )
        ],
      ),
    );
  }
}
