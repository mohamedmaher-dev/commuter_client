import 'package:commuter_client/core/localization/controller/localization_bloc.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageBTN extends StatelessWidget {
  const LanguageBTN({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalizationBloc localizationBloc =
        BlocProvider.of<LocalizationBloc>(context);
    final Language language = Language.of(context);
    return TextButton(
      onPressed: () {
        localizationBloc.add(const LocalizationEvent.changeLanguage());
      },
      child: Text(
        language.Language_Name,
      ),
    );
  }
}
