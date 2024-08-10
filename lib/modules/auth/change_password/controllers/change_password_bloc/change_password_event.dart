part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.started() = _Started;
  const factory ChangePasswordEvent.changeHidePass() = ChangeHidePass;
  const factory ChangePasswordEvent.changePassword() = ChangePassword;
}
