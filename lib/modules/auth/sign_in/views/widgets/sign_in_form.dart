import 'package:commuter_client/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/generated/l10n.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Language language = di<Language>();

    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: language.Mail,
            prefixIcon: const Icon(Icons.mail),
          ),
        ),
        SizedBox(height: 10.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: language.Password,
            prefixIcon: const Icon(Icons.password),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                language.Forgot_Password,
              ),
            )
          ],
        ),
      ],
    );
  }
}
