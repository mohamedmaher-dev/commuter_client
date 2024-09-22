import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/themes/app_theme_controller.dart';

class SchedulesItemBody extends StatelessWidget {
  const SchedulesItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
