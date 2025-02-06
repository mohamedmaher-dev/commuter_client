part of '../sign_in_view.dart';

class _SignInIntroMsg extends StatelessWidget {
  const _SignInIntroMsg({required this.language});
  final Language language;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AssetsManger.imagesLogo,
          width: MediaQuery.of(context).size.width / 2,
        ),
        Text(
          language.welcome_back,
          style: TextStyles.tsP25B,
        ),
        Text(
          language.sign_in_with_your_mail_and_password,
          style: TextStyles.tsP10N,
        ),
      ],
    );
  }
}
