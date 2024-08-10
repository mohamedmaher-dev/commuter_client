import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/themes/controller/app_theme_bloc.dart';

class AddSheduleView extends StatelessWidget {
  const AddSheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.w),
      shrinkWrap: true,
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.all(5.w),
              child: Card(
                child: Center(
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month),
                    trailing: Icon(
                      Icons.delete,
                      color: ColorManger.red,
                    ),
                    title: Text(
                      'Riyadh',
                      style: TextStyles.tsP15B,
                    ),
                    subtitle: Text(Jiffy.now().add(days: 25).yMMMEdjm),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.w),
              child: Card(
                child: Center(
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month),
                    trailing: Icon(
                      Icons.delete,
                      color: ColorManger.red,
                    ),
                    title: Text(
                      'Mecca',
                      style: TextStyles.tsP15B,
                    ),
                    subtitle: Text(Jiffy.now().add(days: 21).yMMMEdjm),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.w),
              child: Card(
                child: Center(
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month),
                    trailing: Icon(
                      Icons.delete,
                      color: ColorManger.red,
                    ),
                    title: Text(
                      'Almadina Almonawara',
                      style: TextStyles.tsP15B,
                    ),
                    subtitle: Text(Jiffy.now().add(days: 7).yMMMEdjm),
                  ),
                ),
              ),
            ),
            FilledButton.icon(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const _AddBody(),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text('Add Schedules Trip'),
            )
          ],
        ),
      ],
    );
  }
}

class _AddBody extends StatelessWidget {
  const _AddBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.location_pin),
              title: Text(
                "Not Selected",
                style: TextStyles.tsP12B,
              ),
              subtitle: const Text('Location of the trip'),
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
                "Not Selected",
                style: TextStyles.tsP12B,
              ),
              subtitle: const Text('Date of the trip'),
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
              label: const Text('Add Schedules Trip'),
            )
          ],
        ),
      ),
    );
  }
}
