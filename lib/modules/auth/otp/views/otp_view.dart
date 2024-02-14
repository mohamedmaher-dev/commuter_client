import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/localization/generated/l10n.dart';
part 'widgets/otp_intro_msg.dart';
part 'widgets/otp_form.dart';
part 'widgets/otp_action.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            _OtpIntroMsg(),
            Spacer(),
            _OtpForm(),
            Spacer(),
            _OtpActions(),
          ],
        ),
      ),
    );
  }
}
