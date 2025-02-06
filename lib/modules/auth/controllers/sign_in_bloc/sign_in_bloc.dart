import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/data/rebos/sign_in/sign_in_with_email_rebo.dart';
import 'package:commuter_client/modules/auth/data/models/sign_in_request_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/forgot_pass_request_model.dart';
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
  final SignInWithEmailRebo _signInRebo;
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

  Future<void> _forgotPasswordMethod(Emitter<SignInState> emit) async {
    if (formKeyForgotPass.currentState!.validate()) {
      emit(const SignInState.pLoading());
      final forgetPasswordResult = await _signInRebo.sendResetCode(
        ForgotPassRequestModel(
          email: emailForgotPassController.text,
        ),
      );
      forgetPasswordResult.when(
        success: (data) {
          emit(const SignInState.successForgotPass());
        },
        failure: (apiErrorModel) {
          emit(SignInState.failure(apiErrorModel.msg));
        },
      );
    }
  }

  void _changePassIsHideMethod(Emitter<SignInState> emit) {
    passIsHide = !passIsHide;
    emit(SignInState.passIsHide(passIsHide));
  }

  Future<void> _signIn(Emitter<SignInState> emit) async {
    if (formKey.currentState!.validate()) {
      emit(const SignInState.pLoading());
      final signInResult = await _signInRebo.signIn(
        SignInRequestModel(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
      await signInResult.when(
        success: (data) async {
          if (data.userData.active) {
            emit(const SignInState.successSignIn());
          } else {
            emit(const SignInState.userNotActive());
          }
        },
        failure: (apiErrorModel) {
          emit(SignInState.failure(apiErrorModel.msg));
        },
      );
    }
  }
}
