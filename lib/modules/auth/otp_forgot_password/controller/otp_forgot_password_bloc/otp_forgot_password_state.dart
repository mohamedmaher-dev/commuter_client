part of 'otp_forgot_password_bloc.dart';

@freezed
class OtpForgotPasswordState with _$OtpForgotPasswordState {
  const factory OtpForgotPasswordState.initial() = _Initial;
  const factory OtpForgotPasswordState.refresh(int time) = Refresh;
  const factory OtpForgotPasswordState.pLoading() = PLoading;
  const factory OtpForgotPasswordState.successVerifyCode() = SuccessVerifyCode;
  const factory OtpForgotPasswordState.successSendCode() = SuccessSendCode;
  const factory OtpForgotPasswordState.failure(String error) = Failure;
  const factory OtpForgotPasswordState.outTime(int id) = OutTime;
}
