part of '../sign_up_view.dart';

class _SignUpIntroMsg extends StatelessWidget {
  const _SignUpIntroMsg();

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AssetsManger.imagesLogo,
          width: MediaQuery.of(context).size.width / 2,
        ),
        Text(
          language.create_account,
          style: TextStyles.tsP30B,
        ),
        Text(
          language.welcom_to_commuter,
          style: TextStyles.tsP15B,
        ),
      ],
    );
  }
}
