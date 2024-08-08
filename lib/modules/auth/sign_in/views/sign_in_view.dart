import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/core/validation/form_validation.dart';
import 'package:commuter_client/core/widgets/app_snack_bar.dart';
import 'package:commuter_client/core/widgets/language_btn.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/controller/app_theme_bloc.dart';
import '../../../../core/utils/assets_manger.dart';
import '../../widgets/google_btn.dart';
import '../controllers/sign_in_bloc/sign_in_bloc.dart';
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
      child: const _SignInView(),
    );
  }
}

class _SignInView extends StatelessWidget {
  const _SignInView();

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          pLoading: () {
            PopLoading.show();
          },
          failure: (error) {
            AppSnackBar.show(
              title: language.Failure,
              msg: error,
              type: ContentType.failure,
              context: context,
            );
          },
          successSignIn: (data) {
            AppRouter.pushReplacement(context: context, page: Pages.splash);
          },
          successForgotPass: (data) {
            AppRouter.pushReplacement(
              context: context,
              page: Pages.otpForgotPassword,
            );
          },
          userNotActive: (data) {
            AppSnackBar.show(
              title: language.Warning,
              msg: language.This_Account_Not_Active,
              type: ContentType.warning,
              context: context,
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: ColorManger.primaryContainer,
        appBar: AppBar(
          forceMaterialTransparency: true,
          actions: const [
            LanguageBTN(),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10.w),
          child: ListView(
            children: [
              SizedBox(height: 50.h),
              _SignInIntroMsg(language: language),
              SizedBox(height: 50.h),
              const _SignInForm(),
              SizedBox(height: 50.h),
              const _SignInActions(),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
