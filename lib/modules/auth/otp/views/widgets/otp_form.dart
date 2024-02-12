part of '../otp_view.dart';

class _OtpForm extends StatelessWidget {
  const _OtpForm();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Pinput(
          androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
          pinAnimationType: PinAnimationType.scale,
          length: 6,
          defaultPinTheme: PinTheme(
            decoration: BoxDecoration(
              color: ColorManger.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            height: 50.h,
            width: 50.w,
          ),
          submittedPinTheme: PinTheme(
            decoration: BoxDecoration(
              color: ColorManger.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            height: 50.h,
            width: 50.w,
            textStyle: TextStyles.tsW20B,
          ),
          focusedPinTheme: PinTheme(
            decoration: BoxDecoration(
              color: ColorManger.colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            height: 50.h,
            width: 50.w,
            textStyle: TextStyles.tsW20B,
          ),
        ),
      ),
    );
  }
}
