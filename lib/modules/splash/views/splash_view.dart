import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/modules/splash/controllers/splash_bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/themes/controller/app_theme_bloc.dart';
import '../../../core/utils/assets_manger.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SplashBloc>()..add(const SplashEvent.started()),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    final splashBloc = BlocProvider.of<SplashBloc>(context);
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        state.whenOrNull(
          noPermission: () {
            AppRouter.pushReplacement(
                context: context, page: Pages.noPermission);
          },
          success: () {
            AppRouter.pushReplacement(context: context, page: Pages.home);
          },
          noLogin: () {
            AppRouter.pushReplacement(context: context, page: Pages.signIn);
          },
          failure: (error, code) {
            if (code == 401) {
              AppRouter.pushReplacement(context: context, page: Pages.signIn);
            } else {
              splashBloc.add(const SplashEvent.started());
            }
          },
        );
      },
      child: Scaffold(
        backgroundColor: ColorManger.primaryContainer,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image.asset(
              AssetsManger.appIcon,
              fit: BoxFit.fitHeight,
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
