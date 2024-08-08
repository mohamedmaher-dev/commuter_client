part of '../change_password_view.dart';

class _IntroMsg extends StatelessWidget {
  const _IntroMsg();

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10.h),
        Text(
          language.Change_Password,
          style: TextStyles.tsP25B,
        ),
        Text(
          language.Please_Input_Your_New_Password_And_Confirm_It,
          style: TextStyles.tsP10N,
        ),
      ],
    );
  }
}
