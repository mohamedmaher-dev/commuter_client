import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/validation/form_validation.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:commuter_client/modules/auth/controllers/change_password_bloc/change_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../../../core/widgets/app_snack_bar.dart';

part 'widgets/change_password_intro_msg.dart';
part 'widgets/change_password_form.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<ChangePasswordBloc>(),
      child: const _ChangePasswordView(),
    );
  }
}

class _ChangePasswordView extends StatelessWidget {
  const _ChangePasswordView();

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    final ChangePasswordBloc changePasswordBloc =
        BlocProvider.of<ChangePasswordBloc>(context);
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
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
            AppSnackBar.show(
              title: language.change_password,
              msg: language.the_password_has_been_changed_successfully,
              type: ContentType.success,
              context: context,
            );
            AppRouter.pushReplacement(
              context: context,
              page: Pages.signIn,
            );
          },
        );
      },
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(10.w),
          children: [
            SizedBox(height: 50.h),
            const _IntroMsg(),
            SizedBox(height: 50.h),
            const _ChangePasswordForm(),
            SizedBox(height: 50.h),
            FilledButton(
              onPressed: () {
                changePasswordBloc.add(
                  const ChangePasswordEvent.changePassword(),
                );
              },
              child: Text(
                language.confirm,
              ),
            )
          ],
        ),
      ),
    );
  }
}
