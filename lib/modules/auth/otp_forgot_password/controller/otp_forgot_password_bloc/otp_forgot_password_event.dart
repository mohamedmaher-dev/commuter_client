part of 'otp_forgot_password_bloc.dart';

@freezed
class OtpForgotPasswordEvent with _$OtpForgotPasswordEvent {
  const factory OtpForgotPasswordEvent.started() = _Started;
  const factory OtpForgotPasswordEvent.timerChange() = TimerChange;
  const factory OtpForgotPasswordEvent.verifyResetCode(String code) =
      VerifyResetCode;
  const factory OtpForgotPasswordEvent.resendVerifyCode() = ResendVerifyCode;
}
