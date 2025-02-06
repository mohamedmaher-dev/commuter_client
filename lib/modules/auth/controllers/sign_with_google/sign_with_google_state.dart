part of 'sign_with_google_bloc.dart';

@freezed
class SignWithGoogleState with _$SignWithGoogleState {
  const factory SignWithGoogleState.initial() = _Initial;
  const factory SignWithGoogleState.loading() = _Loading;
  const factory SignWithGoogleState.startSuccess() = _StartSuccess;
  const factory SignWithGoogleState.signSuccess() = _SignSuccess;
  const factory SignWithGoogleState.failure(String msg) = _Failure;
}
