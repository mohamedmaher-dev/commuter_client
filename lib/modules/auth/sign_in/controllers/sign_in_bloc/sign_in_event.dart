part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.changePassIsHide() = ChangePassIsHide;
  const factory SignInEvent.forgotPass() = ForgotPasss;
  const factory SignInEvent.signIn() = SignIn;
}
