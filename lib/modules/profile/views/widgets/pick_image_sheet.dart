part of '../profile_view.dart';

class _PickImageSheet extends StatelessWidget {
  const _PickImageSheet();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(
            textAlign: TextAlign.center,
            'Choose You Pic',
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
                    // AppRouter.pop(context: context);
                    // profileBloc.add(
                    //   const ProfileEvent.pickImage(
                    //     imageSourse: ImageSource.camera,
                    //   ),
                    // );
                  },
                  icon: const Icon(Icons.camera_alt),
                  label: const Text(
                    'From Camera',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: OutlinedButton.icon(
                  onPressed: () {
                    // AppRouter.pop(context: context);

                    // profileBloc.add(
                    //   const ProfileEvent.pickImage(
                    //     imageSourse: ImageSource.gallery,
                    //   ),
                    // );
                  },
                  icon: const Icon(Icons.storage),
                  label: const Text(
                    'From Storage',
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
