part of '../otp_view.dart';

class _OtpActions extends StatelessWidget {
  const _OtpActions();

  @override
  Widget build(BuildContext context) {
    Language language = di<Language>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            '60',
            style: TextStyles.tsP30B,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            language.Seconds_Left,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(language.Resend_OTP_Code),
        )
      ],
    );
  }
}
