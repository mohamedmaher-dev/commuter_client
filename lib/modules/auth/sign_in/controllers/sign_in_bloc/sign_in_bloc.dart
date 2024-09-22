import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_client/modules/auth/sign_in/data/rebos/sign_in_rebo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../data/models/sign_in_response_model.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController emailForgotPassController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final formKeyForgotPass = GlobalKey<FormState>();
  bool passIsHide = true;
  final SignInRebo _signInRebo;
  SignInBloc(this._signInRebo) : super(const _Initial()) {
    on<SignInEvent>(
      (event, emit) async {
        await event.whenOrNull(
          changePassIsHide: () {
            _changePassIsHideMethod(emit);
          },
          signIn: () async {
            await _signIn(emit);
          },
          forgotPass: () async {
            await _forgotPasswordMethod(emit);
          },
        );
      },
    );
  }

  Future<void> _forgotPasswordMethod(Emitter<SignInState<dynamic>> emit) async {
    if (formKeyForgotPass.currentState!.validate()) {
      emit(const SignInState.pLoading());
      final forgetPasswordResult = await _signInRebo.sendResetCode(
        forgotPassRequestModel: ForgotPassRequestModel(
          email: emailForgotPassController.text,
        ),
      );
      forgetPasswordResult.when(
        success: (data) {
          emit(SignInState.successForgotPass(data));
        },
        failure: (apiErrorModel) {
          emit(SignInState.failure(apiErrorModel.msg));
        },
      );
    }
  }

  void _changePassIsHideMethod(Emitter<SignInState<dynamic>> emit) {
    passIsHide = !passIsHide;
    emit(SignInState.passIsHide(passIsHide));
  }

  Future<void> _signIn(Emitter<SignInState<dynamic>> emit) async {
    if (formKey.currentState!.validate()) {
      emit(const SignInState.pLoading());
      final signInResult = await _signInRebo.signIn(
        signInRequestModel: SignInRequestModel(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
      await signInResult.when(
        success: (data) async {
          if (data.userData.active) {
            await _saveUserMethod(data, emit);
          } else {
            emit(SignInState.userNotActive(data));
          }
        },
        failure: (apiErrorModel) {
          emit(SignInState.failure(apiErrorModel.msg));
        },
      );
    }
  }

  Future<void> _saveUserMethod(
      SignInResponseModel data, Emitter<SignInState<dynamic>> emit) async {
    final saveUserAuthInfo = await _signInRebo.saveUserAuthInfo(
      email: emailController.text,
      password: passwordController.text,
      id: data.userData.id,
      token: data.token,
    );
    saveUserAuthInfo.when(
      success: (result) {
        emit(SignInState.successSignIn(data));
      },
      failure: (error) {
        emit(SignInState.failure(error));
      },
    );
  }
}
