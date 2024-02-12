import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/localization/generated/l10n.dart';
import '../../../../../core/utils/assets_manger.dart';

class SignInActions extends StatelessWidget {
  const SignInActions({super.key});

  @override
  Widget build(BuildContext context) {
    final Language language = di<Language>();

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: Text(
                  language.Sign_In,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                child: SvgPicture.asset(
                  AssetsManger.googleIcon,
                  height: 30.h,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        TextButton(
          onPressed: () {},
          child: Text(
            language.Already_Have_An_Account,
          ),
        )
      ],
    );
  }
}
