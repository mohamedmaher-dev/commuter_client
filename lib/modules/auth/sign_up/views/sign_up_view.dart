import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/core/widgets/google_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../core/routes/app_route.dart';
part 'widgets/sign_up_actions.dart';
part 'widgets/sign_up_form.dart';
part 'widgets/sign_up_intro_msg.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SignUpView();
  }
}

class _SignUpView extends StatelessWidget {
  const _SignUpView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: ListView(
          children: [
            const _SignUpIntroMsg(),
            SizedBox(height: 50.h),
            const SignUpForm(),
            SizedBox(height: 50.h),
            const _SignUpActions(),
          ],
        ),
      ),
    );
  }
}
