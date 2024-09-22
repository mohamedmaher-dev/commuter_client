import 'dart:async';

import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../core/themes/app_theme_controller.dart';

class OtpView extends StatefulWidget {
  const OtpView({
    super.key,
    required this.onCompleted,
    required this.onResendCode,
    required this.title,
    required this.subTitle,
    required this.language,
    required this.currentTime,
    required this.onTimerChange,
  });
  final Function(String) onCompleted;
  final void Function() onResendCode;
  final void Function() onTimerChange;
  final String title;
  final String subTitle;
  final Language language;
  final int currentTime;

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (widget.currentTime > 0) {
          widget.onTimerChange();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyles.tsP25B,
              ),
              Text(
                widget.subTitle,
                style: TextStyles.tsP15N,
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Pinput(
                // androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
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
                    color: ColorManger.primaryContainer,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  height: 50.h,
                  width: 50.w,
                  textStyle: TextStyles.ts20B,
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
                  textStyle: TextStyles.ts20B,
                ),
                onCompleted: widget.onCompleted,
              ),
            ),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.currentTime.toString(),
                  style: TextStyles.tsP30B,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.language.seconds_left,
                ),
              ),
              TextButton(
                onPressed: widget.onResendCode,
                child: Text(widget.language.resend_otp_code),
              )
            ],
          )
        ],
      ),
    );
  }
}
