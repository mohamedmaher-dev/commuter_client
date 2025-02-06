import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/data/models/change_pass_request_model.dart';
import 'package:commuter_client/modules/auth/data/rebos/auth_rebo.dart';
import 'package:commuter_client/modules/auth/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final SignInBloc _signInBloc;
  final AuthRebo _changePassRebo;
  bool isHide = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  ChangePasswordBloc(
    this._signInBloc,
    this._changePassRebo,
  ) : super(const _Initial()) {
    on<ChangePasswordEvent>(
      (event, emit) async {
        await event.whenOrNull(
          changeHidePass: () async {
            isHide = !isHide;
            emit(ChangePasswordState.passHideChanged(isHide));
          },
          changePassword: () async {
            await _changePasswordMethod(emit);
          },
        );
      },
    );
  }

  Future<void> _changePasswordMethod(Emitter<ChangePasswordState> emit) async {
    if (formKey.currentState!.validate()) {
      emit(const ChangePasswordState.pLoading());
      final changePasswordResult = await _changePassRebo.changePassword(
        ChangePassRequestModel(
          email: _signInBloc.emailForgotPassController.text,
          newPassword: passwordController.text,
        ),
      );
      changePasswordResult.when(
        success: (data) {
          emit(const ChangePasswordState.success());
        },
        failure: (apiErrorModel) {
          emit(ChangePasswordState.failure(apiErrorModel.msg));
        },
      );
    }
  }
}
