import 'package:commuter_client/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/di/di.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/text_styles.dart';
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
