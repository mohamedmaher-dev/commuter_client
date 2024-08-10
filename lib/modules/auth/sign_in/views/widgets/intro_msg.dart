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
          AssetsManger.logo,
          width: MediaQuery.of(context).size.width / 2,
        ),
        Text(
          language.Welcome_Back,
          style: TextStyles.tsP25B,
        ),
        Text(
          language.Sign_In_With_Your_Mail_And_Password,
          style: TextStyles.tsP10N,
        ),
      ],
    );
  }
}
