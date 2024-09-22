part of "../settings_view.dart";

class _SettingMyProfileBodyView extends StatelessWidget {
  const _SettingMyProfileBodyView({required this.mainBloc});
  final MainBloc mainBloc;

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    final bloc = BlocProvider.of<SettingsDeleteProfileCubit>(context);
    return BlocListener<SettingsDeleteProfileCubit, SettingsDeleteProfileState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          loading: () => PopLoading.show(),
          success: () => AppRouter.pushAndRemoveUntil(
              context: context, page: Pages.splash),
        );
      },
      child: Column(
        children: [
          ListTile(
            title: Text(
              language.my_profile,
              style: TextStyles.tsP15B,
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(language.delete_my_profile),
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
                          title: Text(language.delete_my_profile),
                          content: Text(
                            language
                                .are_you_sure_you_want_to_delete_the_profile,
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
                                bloc.deleteProfile();
                              },
                              icon: const Icon(Icons.delete),
                              label: Text(
                                language.delete,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(Icons.delete),
                    label: Text(language.delete),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
