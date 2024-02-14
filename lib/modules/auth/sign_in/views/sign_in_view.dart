import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/modules/auth/sign_in/controllers/bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/google_btn.dart';
part 'widgets/intro_msg.dart';
part 'widgets/sign_in_actions.dart';
part 'widgets/sign_in_form.dart';
part 'widgets/forgot_pass_dialog.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SignInBloc>(),
      child: const SignInViewWidget(),
    );
  }
}

class SignInViewWidget extends StatelessWidget {
  const SignInViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int parts = 4;
    final SignInBloc signInBloc = BlocProvider.of<SignInBloc>(context);
    Language language = Language.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            actions: [
              TextButton(
                onPressed: () {
                  signInBloc.add(const SignInEvent.changeLanguage());
                },
                child: Text(
                  language.Language_Name,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(10.w),
            child: ListView(
              children: [
                SizedBox(
                    height: (MediaQuery.of(context).size.height / 4) / parts),
                _SignInIntroMsg(
                  language: language,
                  signInBloc: signInBloc,
                ),
                SizedBox(
                    height: (MediaQuery.of(context).size.height / 4) / parts),
                const _SignInForm(),
                SizedBox(
                    height: (MediaQuery.of(context).size.height / 4) / parts),
                const _SignInActions(),
                SizedBox(
                    height: (MediaQuery.of(context).size.height / 4) / parts),
              ],
            ),
          ),
        );
      },
    );
  }
}
