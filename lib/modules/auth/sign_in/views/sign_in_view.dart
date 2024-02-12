import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/modules/auth/sign_in/controllers/bloc/sign_in_bloc.dart';
import 'package:commuter_client/modules/auth/sign_in/views/widgets/intro_msg.dart';
import 'package:commuter_client/modules/auth/sign_in/views/widgets/sign_in_actions.dart';
import 'package:commuter_client/modules/auth/sign_in/views/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SignInBloc>(),
      child: const _SignInView(),
    );
  }
}

class _SignInView extends StatelessWidget {
  const _SignInView();

  @override
  Widget build(BuildContext context) {
    final Language language = di<Language>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              language.ar,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SignInIntroMsg(),
            Spacer(),
            SignInForm(),
            Spacer(),
            SignInActions(),
          ],
        ),
      ),
    );
  }
}
