part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.changePassHide() = ChangePassHide;
  const factory SignUpEvent.phoneFieldChanged(PhoneNumber phoneNumber) =
      PhoneFieldChanged;
  const factory SignUpEvent.phoneValidChanged(bool isValid) = PhoneValidChanged;

  const factory SignUpEvent.signUp() = SignUp;
}
