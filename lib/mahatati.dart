import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/themes/app_theme.dart';
import 'package:commuter_client/modules/auth/otp/views/otp_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/di/di.dart';

class Mahatati extends StatelessWidget {
  const Mahatati({super.key});

  @override
  Widget build(BuildContext context) {
    final MainBloc mainBloc = di<MainBloc>();
    return MaterialApp(
      locale: mainBloc.locale,
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
      home: const OtpView(),
    );
  }
}
