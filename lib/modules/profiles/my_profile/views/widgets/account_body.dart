part of '../profile_view.dart';

class _AccountBody extends StatelessWidget {
  final GetMeResponseModel userData;

  const _AccountBody({
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    final myProfilePicCubit = BlocProvider.of<MyProfilePicCubit>(context);
    final myProfileBloc = BlocProvider.of<MyProfileBloc>(context);

    final language = Language.of(context);
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            badges.Badge(
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeStyle: const badges.BadgeStyle(
                badgeColor: ColorManger.transparent,
              ),
              badgeContent: IconButton.filledTonal(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  showModalBottomSheet(
                    showDragHandle: true,
                    context: context,
                    builder: (contextDialog) =>
                        _PickImageSheet(myProfilePicCubit),
                  );
                },
              ),
              position: badges.BadgePosition.bottomStart(),
              child: BlocBuilder<MyProfilePicCubit, MyProfilePicState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      if (userData.userData.image == null) {
                        return ProfileImage(
                          fontSize: 15.sp,
                          value: userData.userData.name,
                          type: ImageType.avatar,
                          size: MediaQuery.of(context).size.width / 6,
                          color: ColorManger.primaryContainer,
                        );
                      } else {
                        return ProfileImage(
                          fontSize: 15.sp,
                          value: userData.userData.image!,
                          type: ImageType.networkImage,
                          size: MediaQuery.of(context).size.width / 3,
                          color: ColorManger.primaryContainer,
                        );
                      }
                    },
                    imageSelected: (image) {
                      return ProfileImage(
                        fontSize: 15.sp,
                        value: image.path,
                        type: ImageType.localImage,
                        size: MediaQuery.of(context).size.width / 3,
                        color: ColorManger.primaryContainer,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 10.h),
            ProfileRatingBar(rating: userData.userData.ratingsQuantity ?? 0),
            SizedBox(height: 10.h),
            _UserInfoItem(
              title: language.mail,
              value: userData.userData.email,
              icon: Icons.email,
              onPressed: () {
                _showEdit(
                  context,
                  _EditDialogBody(
                    initialValue: userData.userData.email,
                    onComplete: (value) {
                      myProfileBloc.add(
                        MyProfileEvent.changeData(
                          newUserData: userData.copyWith(email: value),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            _UserInfoItem(
              title: language.name,
              value: userData.userData.name,
              icon: Icons.person,
              onPressed: () {
                _showEdit(
                  context,
                  _EditDialogBody(
                    initialValue: userData.userData.name,
                    onComplete: (value) {
                      myProfileBloc.add(
                        MyProfileEvent.changeData(
                          newUserData: userData.copyWith(name: value),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            _UserInfoItem(
              title: language.phone,
              value: userData.userData.phone ?? language.not_available,
              icon: Icons.phone,
              onPressed: () {
                _showEdit(
                  context,
                  _EditDialogBody(
                    initialValue: userData.userData.phone ?? '',
                    onComplete: (value) {
                      myProfileBloc.add(
                        MyProfileEvent.changeData(
                          newUserData: userData.copyWith(phone: value),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _UserInfoItem extends StatelessWidget {
  const _UserInfoItem({
    required this.title,
    required this.value,
    required this.icon,
    required this.onPressed,
  });

  final String title;
  final String value;
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        value,
        style: TextStyles.tsP12B,
        maxLines: 1,
      ),
      subtitle: Text(title),
      leading: Icon(icon),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.edit),
      ),
    );
  }
}

_showEdit(BuildContext context, _EditDialogBody body) async {
  await showDialog(
    context: context,
    builder: (context) => body,
  );
}

class _EditDialogBody extends StatelessWidget {
  const _EditDialogBody({required this.initialValue, required this.onComplete});
  final String initialValue;
  final void Function(String value) onComplete;
  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController(text: initialValue);
    final language = Language.of(context);
    return AlertDialog(
      title: Text(language.edit),
      content: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintText: language.enter_text,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            onComplete(textEditingController.text);
            AppRouter.pop(context: context);
          },
          child: Text(language.confirm),
        ),
      ],
    );
  }
}
