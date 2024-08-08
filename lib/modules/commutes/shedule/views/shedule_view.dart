import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/themes/controller/app_theme_bloc.dart';
part 'widgets/shedule_item.dart';

class SheduleView extends StatefulWidget {
  const SheduleView({super.key});
  @override
  State<SheduleView> createState() => _SheduleViewState();
}

class _SheduleViewState extends State<SheduleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(10.w),
        itemBuilder: (context, index) => Card(
          child: _SheduleItem(
            index: index,
            name: _list[index]['name'],
            pick: _list[index]['pick'],
            land: _list[index]['land'],
            date: _list[index]['date'],
            time: _list[index]['time'],
          ),
        ),
        itemCount: _list.length,
      ),
    );
  }
}

List _list = [
  {
    'name': 'الاسكندرية',
    'pick': 'Cairo',
    'land': "Alex",
    'date': DateTime.now().add(const Duration(days: 11)),
    'time': DateTime.now().add(const Duration(hours: 11, minutes: 11)),
  },
  {
    'name': 'بنها',
    'pick': 'Mansoura',
    'land': "Banha",
    'date': DateTime.now().add(const Duration(days: 15)),
    'time': DateTime.now().add(const Duration(hours: 15, minutes: 15)),
  },
  {
    'name': 'ميت غمر',
    'pick': 'Giza',
    'land': "Mit Ghamr",
    'date': DateTime.now().add(const Duration(days: 17)),
    'time': DateTime.now().add(const Duration(hours: 17, minutes: 17)),
  },
];
