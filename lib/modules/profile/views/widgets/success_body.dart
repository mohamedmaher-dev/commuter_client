part of '../profile_view.dart';

class _SuccessBody extends StatelessWidget {
  const _SuccessBody();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.w),
      children: [
        const _AccountBody(
          imgUrl: null,
          email: 'mohamedmaher.personal@gmail.com',
          name: 'Mohamed Maher',
          phone: '01065027589',
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Column(
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(ColorManger.red),
                    elevation: const MaterialStatePropertyAll(0),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.exit_to_app),
                  label: const Text('Sign Out'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        FilledButton(
          onPressed: () async {
            // profileBloc.add(const ProfileEvent.updateMe());
          },
          child: const Text('Update Profile'),
        )
      ],
    );
  }
}
