part of 'sign_with_google_bloc.dart';

@freezed
class SignWithGoogleEvent with _$SignWithGoogleEvent {
  const factory SignWithGoogleEvent.started() = _Started;
  const factory SignWithGoogleEvent.sign(String token) = _Sign;
}