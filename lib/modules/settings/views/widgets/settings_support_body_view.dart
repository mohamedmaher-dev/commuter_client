// ignore_for_file: camel_case_types

part of '../settings_view.dart';

class _SettingsSupportBody_view extends StatelessWidget {
  const _SettingsSupportBody_view({
    required this.mainBloc,
  });
  final MainBloc mainBloc;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
