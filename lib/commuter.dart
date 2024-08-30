import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/core/localization/controller/localization_bloc.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/di.dart';
import 'core/routes/app_route.dart';

class Commuter extends StatelessWidget {
  const Commuter({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di<LocalizationBloc>()),
        BlocProvider(create: (context) => di<AppThemeBloc>()),
        BlocProvider(
          create: (context) => di<MainBloc>()
            ..add(
              const MainEvent.started(),
            ),
          lazy: false,
        ),
      ],
      child: const ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: _Commuter(),
      ),
    );
  }
}

class _Commuter extends StatelessWidget {
  const _Commuter();

  @override
  Widget build(BuildContext context) {
    final appThemeBloc = BlocProvider.of<AppThemeBloc>(context);
    return BlocBuilder<LocalizationBloc, LocalizationState>(
      builder: (context, state) {
        return BlocBuilder<AppThemeBloc, AppThemeState>(
          builder: (context, state) {
            return BlocBuilder<MainBloc, MainState>(
              builder: (context, state) {
                return MaterialApp(
                  locale: const Locale('en'),
                  localizationsDelegates: const [
                    Language.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: Language.delegate.supportedLocales,
                  debugShowCheckedModeBanner: false,
                  theme: appThemeBloc.appTheme.theme,
                  darkTheme: appThemeBloc.appTheme.theme,
                  themeMode: appThemeBloc.themeMode,
                  builder: PopLoading.init(),
                  home: Pages.home.view,
                );
              },
            );
          },
        );
      },
    );
  }
}
