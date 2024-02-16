import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/validation/form_validation.dart';
import 'package:commuter_client/core/widgets/info_dialog.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:commuter_client/modules/auth/change_password/controllers/change_password_bloc/change_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/text_styles.dart';

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
        state.maybeWhen(
          pLoading: () {
            PopLoading.show();
          },
          failure: (error) {
            PopLoading.dismiss();
            showDialog(
              context: context,
              builder: (context) =>
                  InfoDialog(title: language.Failure, msg: error),
            );
          },
          success: () {
            PopLoading.dismiss();
            AppRouter.pushReplacement(
              context: context,
              page: Pages.signIn,
            );
          },
          orElse: () {
            PopLoading.dismiss();
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
                language.Confirm,
              ),
            )
          ],
        ),
      ),
    );
  }
}
