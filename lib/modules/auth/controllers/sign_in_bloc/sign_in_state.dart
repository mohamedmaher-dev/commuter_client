part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.passIsHide(bool isHide) = PassIsHide;
  const factory SignInState.pLoading() = PLoading;
  const factory SignInState.userNotActive() = UserNotActive;
  const factory SignInState.successSignIn() = SuccessSignIn;
  const factory SignInState.successForgotPass() = SuccessForgotPass;
  const factory SignInState.failure(String error) = Failure;
}
