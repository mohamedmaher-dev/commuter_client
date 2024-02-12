part of '../sign_up_view.dart';

class _SignUpIntroMsg extends StatelessWidget {
  const _SignUpIntroMsg();

  @override
  Widget build(BuildContext context) {
    Language language = di<Language>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          language.Create_Account,
          style: TextStyles.tsP30B,
        ),
        Text(
          language.Welcom_To_Commuter,
          style: TextStyles.tsP15B,
        ),
      ],
    );
  }
}
