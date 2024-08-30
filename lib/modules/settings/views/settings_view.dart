import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/localization/generated/l10n.dart';
import '../../../core/routes/app_route.dart';
import '../../../core/themes/controller/app_theme_bloc.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/language_btn.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          onPressed: () {
            AppRouter.pushReplacement(context: context, page: Pages.home);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.w),
        children: [
          ListTile(
            title: Text(
              'General',
              style: TextStyles.tsP15B,
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Night Mode'),
                    leading: const Icon(Icons.dark_mode),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) => {},
                    ),
                  ),
                  const ListTile(
                    title: Text('Current Language'),
                    leading: Icon(Icons.language),
                    trailing: LanguageBTN(),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              'My Profile',
              style: TextStyles.tsP15B,
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Delete My Profile'),
                    leading: const Icon(Icons.delete),
                    trailing: ElevatedButton.icon(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        foregroundColor: MaterialStatePropertyAll(
                          ColorManger.red,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (contextDialog) => AlertDialog(
                            title: const Text('Delete Profile'),
                            content: const Text(
                              'Are you sure you want to delete the profile?',
                            ),
                            actions: [
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                  elevation: const MaterialStatePropertyAll(0),
                                  foregroundColor: MaterialStatePropertyAll(
                                    ColorManger.red,
                                  ),
                                ),
                                onPressed: () {
                                  AppRouter.pop(context: contextDialog);
                                },
                                icon: const Icon(Icons.delete),
                                label: Text(
                                  language.Confirm,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.delete),
                      label: const Text('Delete'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.support_agent),
              title: Text(
                'Support And Help',
                style: TextStyles.tsP15B,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                AppRouter.push(context: context, page: Pages.supportHelp);
              },
            ),
          ),
        ],
      ),
    );
  }
}
