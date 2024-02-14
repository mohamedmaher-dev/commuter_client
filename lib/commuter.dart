import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/modules/auth/sign_in/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/di/di.dart';

class Commuter extends StatelessWidget {
  const Commuter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<MainBloc>(),
      child: const _Commuter(),
    );
  }
}

class _Commuter extends StatefulWidget {
  const _Commuter();

  @override
  State<_Commuter> createState() => _CommuterState();
}

class _CommuterState extends State<_Commuter> {
  @override
  Widget build(BuildContext context) {
    MainBloc mainBloc = BlocProvider.of<MainBloc>(context);
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return MaterialApp(
          locale: mainBloc.localizationBloc.locale,
          localizationsDelegates: const [
            Language.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: Language.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          theme: mainBloc.appThemeBloc.appTheme.theme,
          darkTheme: mainBloc.appThemeBloc.appTheme.theme,
          themeMode: mainBloc.appThemeBloc.themeMode,
          home: const SignInView(),
        );
      },
    );
  }
}
