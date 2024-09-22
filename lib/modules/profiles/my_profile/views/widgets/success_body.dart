// ignore_for_file: prefer_const_constructors

part of '../profile_view.dart';

class _SuccessBody extends StatelessWidget {
  const _SuccessBody(this.userData);
  final GetMeResponseModel userData;

  @override
  Widget build(BuildContext context) {
    final myProfileBloc = BlocProvider.of<MyProfileBloc>(context);
    final myProfilePicCubit = BlocProvider.of<MyProfilePicCubit>(context);
    final language = Language.of(context);
    return ListView(
      padding: EdgeInsets.all(10.w),
      children: [
        _AccountBody(userData: userData),
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Column(
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(ColorManger.red),
                    elevation: const MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStatePropertyAll(ColorManger.transparent),
                  ),
                  onPressed: () {
                    myProfileBloc.add(MyProfileEvent.signOut(context));
                  },
                  icon: const Icon(Icons.exit_to_app),
                  label: Text(language.sign_out),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        FilledButton(
          onPressed: () async {
            if (myProfilePicCubit.image != null) {
              myProfileBloc.add(
                MyProfileEvent.updateProfile(
                  userData: userData,
                  imagePath: myProfilePicCubit.image!.path,
                ),
              );
              myProfilePicCubit.image = null;
            } else {
              AppSnackBar.show(
                title: language.failure_to_update_profile,
                msg: language.please_select_an_image,
                type: ContentType.failure,
                context: context,
              );
            }
          },
          child: Text(language.update_profile),
        )
      ],
    );
  }
}
