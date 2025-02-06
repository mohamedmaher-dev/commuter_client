part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  const factory ChangePasswordState.passHideChanged(bool isHide) =
      PassHideChanged;
  const factory ChangePasswordState.pLoading() = PLoading;
  const factory ChangePasswordState.success() = Success;
  const factory ChangePasswordState.failure(String error) = Failure;
}
