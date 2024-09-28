// ignore_for_file: unnecessary_null_comparison

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/local_storage/models/local_schedule_model.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/utils/uuid_gen.dart';
import 'package:commuter_client/core/widgets/app_snack_bar.dart';
import 'package:commuter_client/modules/my_commutes/controller/add_schedules/add_schedules_bloc.dart';
import 'package:commuter_client/modules/pick_location/views/pick_location_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';

class AddSchedulesBottomSheetBody extends StatefulWidget {
  const AddSchedulesBottomSheetBody({super.key, required this.bloc});
  final AddSchedulesBloc bloc;

  @override
  State<AddSchedulesBottomSheetBody> createState() =>
      _AddSchedulesBottomSheetBodyState();
}

class _AddSchedulesBottomSheetBodyState
    extends State<AddSchedulesBottomSheetBody> {
  DateTime dateTimePicked = DateTime.now();
  String? locationNamePicked;
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
              locationNamePicked ?? language.not_selected,
              style: TextStyles.tsP12B,
            ),
            subtitle: Text(language.location_of_the_trip),
            trailing: const Icon(Icons.add),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => PickLocationView(
                  onPickLocation: (latLng, placemark) {
                    locationNamePicked = placemark.locality;
                  },
                ),
              );
              setState(() {});
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text(
              Jiffy.parseFromDateTime(dateTimePicked).yMMMEdjm,
              style: TextStyles.tsP12B,
            ),
            subtitle: Text(language.date_of_the_trip),
            trailing: const Icon(Icons.add),
            onTap: () async {
              await showModalBottomSheet(
                context: context,
                builder: (context) => Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    children: [
                      Expanded(
                        child: CupertinoDatePicker(
                          initialDateTime: dateTimePicked,
                          onDateTimeChanged: (DateTime dateTime) {
                            dateTimePicked = dateTime;
                          },
                        ),
                      ),
                      FilledButton(
                        onPressed: () {
                          AppRouter.pop(context: context);
                        },
                        child: Text(
                          language.confirm,
                        ),
                      )
                    ],
                  ),
                ),
              );
              setState(() {});
            },
          ),
          const Spacer(),
          FilledButton.icon(
            onPressed: () {
              if (locationNamePicked != null) {
                widget.bloc.add(
                  AddSchedulesEvent.add(
                    LocalScheduleModel(
                      localationName: locationNamePicked!,
                      date: dateTimePicked.toString(),
                      id: UuidGen.fromTimeBase,
                    ),
                  ),
                );
                AppRouter.pop(context: context);
              } else {
                AppRouter.pop(context: context);
                AppSnackBar.show(
                  context: context,
                  title: language.failure,
                  msg: language.enter_location,
                  type: ContentType.failure,
                );
              }
            },
            icon: const Icon(Icons.add),
            label: Text(language.add_schedules_trip),
          )
        ],
      ),
    );
  }
}
