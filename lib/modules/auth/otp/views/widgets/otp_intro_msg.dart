part of '../otp_view.dart';

class _OtpIntroMsg extends StatelessWidget {
  const _OtpIntroMsg();

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          language.Phone_Verification,
          style: TextStyles.tsP25B,
        ),
        Text(
          language.Enter_OTP_Code_Here,
          style: TextStyles.tsP15N,
        ),
      ],
    );
  }
}
