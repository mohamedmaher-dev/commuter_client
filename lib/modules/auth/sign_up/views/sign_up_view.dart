import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/utils/assets_manger.dart';
import 'package:commuter_client/core/validation/form_validation.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/views/sign_with_google_view.dart';
import 'package:commuter_client/modules/auth/sign_up/controllers/sign_up_bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../core/routes/app_route.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../../../core/widgets/app_snack_bar.dart';
part 'widgets/sign_up_actions.dart';
part 'widgets/sign_up_form.dart';
part 'widgets/sign_up_intro_msg.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SignUpBloc>(),
      child: const _SignUpView(),
    );
  }
}

class _SignUpView extends StatelessWidget {
  const _SignUpView();

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        PopLoading.dismiss();

        state.whenOrNull(
          pLoading: () {
            PopLoading.show();
          },
          failure: (error) {
            AppSnackBar.show(
              title: language.failure,
              msg: error,
              type: ContentType.failure,
              context: context,
            );
          },
          success: () {
            AppRouter.pushReplacement(context: context, page: Pages.splash);
          },
        );
      },
      child: Scaffold(
        backgroundColor: ColorManger.primaryContainer,
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
      ),
    );
  }
}
