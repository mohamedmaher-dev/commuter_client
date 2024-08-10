part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = Loading;
  const factory SplashState.noLogin() = NoLogin;
  const factory SplashState.noPermission() = NoPermission;
  const factory SplashState.success() = Success;
  const factory SplashState.failure(
      {required String error, required int code}) = Failure;
}
