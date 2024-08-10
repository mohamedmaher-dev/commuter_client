part of 'sign_in_bloc.dart';

@freezed
class SignInState<T> with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.passIsHide(bool isHide) = PassIsHide;
  const factory SignInState.pLoading() = PLoading;
  const factory SignInState.userNotActive(T data) = UserNotActive<T>;
  const factory SignInState.successSignIn(T data) = SuccessSignIn<T>;
  const factory SignInState.successForgotPass(T data) = SuccessForgotPass<T>;
  const factory SignInState.failure(String error) = Failure;
}
