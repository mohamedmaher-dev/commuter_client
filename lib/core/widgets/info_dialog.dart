import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key, required this.title, required this.msg});
  final String title;
  final String msg;

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: [
        ElevatedButton(
          onPressed: () {
            AppRouter.pop(context: context);
          },
          child: Text(
            language.Ok,
          ),
        ),
      ],
    );
  }
}
