part of 'di.dart';

_rebosDIInit() {
  di.registerLazySingleton(() => SignInRebo(di<ApiService>()));
  di.registerLazySingleton(() => SignUpRebo(di<ApiService>()));
  di.registerLazySingleton(() => OtpForgotPasswordRebo(di<ApiService>()));
  di.registerLazySingleton(() => ChangePassRebo(di<ApiService>()));
}
