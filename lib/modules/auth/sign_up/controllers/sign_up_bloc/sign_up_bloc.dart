import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:commuter_client/modules/auth/sign_up/data/rebos/sign_up_rebo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRebo _signUpRebo;
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  PhoneNumber phoneNumber = PhoneNumber();
  bool phoneNumberIsValid = false;
  bool isHide = true;

  SignUpBloc(this._signUpRebo) : super(const _Initial()) {
    on<SignUpEvent>(
      (event, emit) async {
        await event.whenOrNull(
          changePassHide: () {
            isHide = !isHide;
            emit(SignUpState.passHideChanged(isHide));
          },
          phoneFieldChanged: (phoneNumber) {
            this.phoneNumber = phoneNumber;
          },
          phoneValidChanged: (isValid) {
            phoneNumberIsValid = isValid;
          },
          signUp: () async {
            await _signUpMethod(emit);
          },
        );
      },
    );
  }

  Future<void> _signUpMethod(Emitter<SignUpState> emit) async {
    if (formKey.currentState!.validate() && phoneNumberIsValid) {
      emit(const SignUpState.pLoading());
      final signUpResult = await _signUpRebo.signUp(
        signUpRequestModel: SignUpRequestModel(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
          phoneNumber: phoneNumber.phoneNumber!,
        ),
      );
      await signUpResult.when(
        success: (data) async {
          await _saveUserDataMethod(data, emit);
        },
        failure: (apiErrorModel) {
          emit(SignUpState.failure(apiErrorModel.msg));
        },
      );
    }
  }

  Future<void> _saveUserDataMethod(
      SignUpResponseModel data, Emitter<SignUpState> emit) async {
    final saveUserDataResult = await _signUpRebo.saveUserAuthInfo(
      email: emailController.text,
      password: passwordController.text,
      id: data.userData.id,
      token: data.token,
    );
    saveUserDataResult.when(
      success: (result) {
        emit(const SignUpState.success());
      },
      failure: (error) {
        emit(SignUpState.failure(error));
      },
    );
  }
}
