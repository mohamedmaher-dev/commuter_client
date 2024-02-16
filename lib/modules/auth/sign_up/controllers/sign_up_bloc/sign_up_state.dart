part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.passHideChanged(bool isHide) = PassHideChanged;
  const factory SignUpState.pLoading() = PLoading;
  const factory SignUpState.success() = Success;
  const factory SignUpState.failure(String error) = Failure;
}
