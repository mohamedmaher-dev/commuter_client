import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/controllers/sign_with_google/sign_with_google_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/di/di.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/utils/assets_manger.dart';
import '../../../../core/widgets/app_snack_bar.dart';

class SignWithGoogleView extends StatelessWidget {
  const SignWithGoogleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SignWithGoogleBloc>(),
      child: const _SignWithGoogleViewBody(),
    );
  }
}

class _SignWithGoogleViewBody extends StatelessWidget {
  const _SignWithGoogleViewBody();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    final bloc = BlocProvider.of<SignWithGoogleBloc>(context);
    return BlocListener<SignWithGoogleBloc, SignWithGoogleState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          loading: () => PopLoading.show(),
          failure: (error) => AppSnackBar.show(
            title: language.failure,
            msg: error,
            type: ContentType.failure,
            context: context,
          ),
          startSuccess: (token) {
            bloc.add(SignWithGoogleEvent.sign(token));
          },
        );
      },
      child: OutlinedButton.icon(
        icon: SvgPicture.asset(
          AssetsManger.svgsGoogleIcon,
          height: 30.h,
        ),
        label: Text(language.sign_in_with_google),
        onPressed: () {
          bloc.add(const SignWithGoogleEvent.started());
        },
      ),
    );
  }
}
