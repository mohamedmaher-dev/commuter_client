part of '../profile_view.dart';

class _PickImageSheet extends StatelessWidget {
  const _PickImageSheet(this.myProfilePicCubit);
  final MyProfilePicCubit myProfilePicCubit;

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(
            textAlign: TextAlign.center,
            language.choose_your_picture,
            style: TextStyles.tsP20B,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: OutlinedButton.icon(
                  onPressed: () {
                    AppRouter.pop(context: context);
                    myProfilePicCubit.pickProfilePic(
                        source: ImageSource.camera);
                  },
                  icon: const Icon(Icons.camera_alt),
                  label: Text(language.from_camera),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: OutlinedButton.icon(
                  onPressed: () {
                    AppRouter.pop(context: context);

                    myProfilePicCubit.pickProfilePic(
                        source: ImageSource.gallery);
                  },
                  icon: const Icon(Icons.image),
                  label: Text(language.from_gallery),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
