// ignore_for_file: unused_element

part of '../settings_view.dart';

class _MapSettingBody extends StatelessWidget {
  const _MapSettingBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Map Settings',
            style: TextStyles.tsP15B,
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: const Text('Show Traffic'),
                leading: const Icon(Icons.traffic),
                trailing: Switch(
                  value: false,
                  onChanged: (value) async {},
                ),
              ),
              const Divider(),
              ListTile(
                title: const Text('Show 3D Buildings'),
                leading: const Icon(Icons.business_rounded),
                trailing: Switch(
                  value: false,
                  onChanged: (value) async {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
