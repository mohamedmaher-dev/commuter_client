import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';

class AddSchedulesBottomSheetBody extends StatelessWidget {
  const AddSchedulesBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.location_pin),
            title: Text(
              language.not_selected,
              style: TextStyles.tsP12B,
            ),
            subtitle: Text(language.location_of_the_trip),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text(
              language.not_selected,
              style: TextStyles.tsP12B,
            ),
            subtitle: Text(language.date_of_the_trip),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
          const Spacer(),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: Text(language.add_schedules_trip),
          )
        ],
      ),
    );
  }
}
