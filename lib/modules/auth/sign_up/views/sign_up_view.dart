import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../core/di/di.dart';
import '../../../../core/themes/text_styles.dart';
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
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            _SignUpIntroMsg(),
            Spacer(),
            SignUpForm(),
            Spacer(),
            _SignUpActions(),
          ],
        ),
      ),
    );
  }
}
