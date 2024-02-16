import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/forgot_pass_response_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/models/verify_reset_code_response_model.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/rebos/otp_forgot_password_rebo.dart';
import 'package:commuter_client/modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/forgot_pass_request_model.dart';

part 'otp_forgot_password_event.dart';
part 'otp_forgot_password_state.dart';
part 'otp_forgot_password_bloc.freezed.dart';

class OtpForgotPasswordBloc
    extends Bloc<OtpForgotPasswordEvent, OtpForgotPasswordState> {
  final SignInBloc _signInBloc;
  final OtpForgotPasswordRebo _otpForgotPasswordRebo;
  int currentTime = 30;
  late VerifyResetCodeResponseModel verifyResetCodeResponseModel;
  late ForgotPassResponseModel forgotPassResponseModel;

  OtpForgotPasswordBloc(this._otpForgotPasswordRebo, this._signInBloc)
      : super(const _Initial()) {
    on<OtpForgotPasswordEvent>(
      (event, emit) async {
        await event.whenOrNull(
          timerChange: () {
            currentTime--;
            emit(OtpForgotPasswordState.refresh(currentTime));
          },
          verifyResetCode: (code) async {
            await _verifyResetCodeMethod(emit, code);
          },
          resendVerifyCode: () async {
            await _resendVerifyCodeMethod(emit);
          },
        );
      },
    );
  }

  Future<void> _resendVerifyCodeMethod(
      Emitter<OtpForgotPasswordState> emit) async {
    emit(const OtpForgotPasswordState.pLoading());
    final resendCodeResult = await _otpForgotPasswordRebo.sendResetCode(
      forgotPassRequestModel: ForgotPassRequestModel(
        email: _signInBloc.emailForgotPassController.text,
      ),
    );
    currentTime = 30;
    resendCodeResult.when(
      success: (data) {
        emit(const OtpForgotPasswordState.successSendCode());
        forgotPassResponseModel = data;
      },
      failure: (apiErrorModel) {
        emit(OtpForgotPasswordState.failure(apiErrorModel.msg));
      },
    );
  }

  Future<void> _verifyResetCodeMethod(
      Emitter<OtpForgotPasswordState> emit, String code) async {
    if (currentTime > 0) {
      emit(const OtpForgotPasswordState.pLoading());
      final verifyResetCodeResult =
          await _otpForgotPasswordRebo.verifyResetCode(
        verifyResetCodeRequestModel:
            VerifyResetCodeRequestModel(resetCode: code),
      );
      verifyResetCodeResult.when(
        success: (data) {
          emit(const OtpForgotPasswordState.successVerifyCode());
        },
        failure: (error) {
          emit(OtpForgotPasswordState.failure(error.msg));
        },
      );
    } else {
      emit(OtpForgotPasswordState.outTime(state.hashCode));
    }
  }
}
