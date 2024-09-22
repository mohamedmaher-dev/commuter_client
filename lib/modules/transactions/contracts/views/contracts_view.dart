import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';

class ContractsView extends StatelessWidget {
  const ContractsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        _ContarctItem(),
      ],
    );
  }
}

class _ContarctItem extends StatelessWidget {
  const _ContarctItem();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Card(
        child: ExpansionTile(
          leading: const Icon(Icons.person),
          title: Text(
            'Mohamed Maher',
            style: TextStyles.tsP12B,
          ),
          subtitle: Text(language.commuter_name),
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.numbers),
                    title: Text(
                      'C-1245879',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text(language.contract_number),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month),
                    title: Text(
                      '24/04/2024',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text(language.contract_date),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.route_outlined),
                    title: Text(
                      'Home',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text(language.commute_name),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.numbers),
                    title: Text(
                      'C-1245879',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text(language.commute_id),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.location_pin),
                    title: Text(
                      'Cairo, Egypt',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text(language.commute_location),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.payments),
                    title: Text(
                      '1000 SAR',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text(language.total_price),
                  ),
                ),
              ],
            ),
            EasyStepper(
              defaultStepBorderType: BorderType.normal,
              finishedStepIconColor: ColorManger.primaryContainer,
              activeStepIconColor: ColorManger.primary,
              unreachedStepIconColor: ColorManger.transparent,
              unreachedStepBorderColor: ColorManger.primary,
              unreachedStepTextColor: ColorManger.primary,
              borderThickness: 3,
              lineStyle: const LineStyle(
                lineType: LineType.normal,
                lineThickness: 2,
              ),
              showLoadingAnimation: false,
              stepBorderRadius: 10.r,
              stepShape: StepShape.rRectangle,
              activeStep: 1,
              steps: const [
                EasyStep(
                  enabled: true,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
                EasyStep(
                  enabled: false,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
                EasyStep(
                  enabled: true,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
                EasyStep(
                  enabled: true,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
