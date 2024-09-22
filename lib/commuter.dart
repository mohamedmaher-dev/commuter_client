import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/core/localization/app_localization_controller.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/themes/app_theme_controller.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routes/app_route.dart';

class Commuter extends StatelessWidget {
  const Commuter({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return MaterialApp(
            locale: AppLocalizationController.locale,
            localizationsDelegates: const [
              Language.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: Language.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.theme,
            darkTheme: AppTheme.theme,
            themeMode: AppTheme.themeMode,
            builder: PopLoading.init(),
            home: Pages.splash.view,
          );
        },
      ),
    );
  }
}
