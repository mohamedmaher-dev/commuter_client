part of 'di.dart';

_blocDiInit() {
  di.registerLazySingleton(() => LocalizationBloc());
  di.registerLazySingleton(() => AppThemeBloc());
  di.registerLazySingleton<MainBloc>(() => MainBloc());
  di.registerFactory<SignInBloc>(
    () => SignInBloc(
      di<SignInRebo>(),
    ),
  );
  di.registerFactory<OtpForgotPasswordBloc>(
    () => OtpForgotPasswordBloc(
      di<OtpForgotPasswordRebo>(),
      di<MainBloc>().signInBloc,
    ),
  );
  di.registerFactory<ChangePasswordBloc>(
    () => ChangePasswordBloc(
      di<MainBloc>().signInBloc,
      di<ChangePassRebo>(),
    ),
  );
  di.registerFactory<SignUpBloc>(
    () => SignUpBloc(
      di<SignUpRebo>(),
    ),
  );
}
