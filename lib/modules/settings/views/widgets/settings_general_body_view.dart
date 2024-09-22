part of "../settings_view.dart";

class _SettingsGeneralBodyView extends StatelessWidget {
  const _SettingsGeneralBodyView({required this.mainBloc});
  final MainBloc mainBloc;

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Column(
      children: [
        ListTile(
          title: Text(
            language.general,
            style: TextStyles.tsP15B,
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(language.night_mode),
                leading: const Icon(Icons.dark_mode),
                trailing: Switch(
                  value: AppTheme.themeMode == ThemeMode.dark,
                  onChanged: (value) async {
                    mainBloc.add(const MainEvent.changeTheme());
                  },
                ),
              ),
              const Divider(),
              ListTile(
                title: Text(language.current_language),
                leading: const Icon(Icons.language),
                trailing: ElevatedButton(
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) =>
                          _LanguageBottomSheetBody(mainBloc: mainBloc),
                    );
                  },
                  child: Text(language.current_language_value),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
