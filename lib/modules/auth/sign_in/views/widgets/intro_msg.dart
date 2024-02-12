import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/themes/text_styles.dart';

class SignInIntroMsg extends StatelessWidget {
  const SignInIntroMsg({super.key});

  @override
  Widget build(BuildContext context) {
    final Language language = di<Language>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          language.Welcome_Back,
          style: TextStyles.tsP30B,
        ),
        Text(
          language.Sign_In_With_Your_Mail_And_Password,
          style: TextStyles.tsP10N,
        ),
      ],
    );
  }
}
