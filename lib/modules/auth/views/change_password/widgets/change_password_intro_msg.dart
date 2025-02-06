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
          language.change_password,
          style: TextStyles.tsP25B,
        ),
        Text(
          language.please_input_your_new_password_and_confirm_it,
          style: TextStyles.tsP10N,
        ),
      ],
    );
  }
}
