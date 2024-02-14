part of 'di.dart';

_blocDiInit() {
  di.registerLazySingleton<MainBloc>(
    () => MainBloc(
      appThemeBloc: di<AppThemeBloc>(),
      localizationBloc: di<LocalizationBloc>(),
    ),
  );
  di.registerLazySingleton(() => LocalizationBloc());
  di.registerLazySingleton(() => AppThemeBloc());
  di.registerFactory<SignInBloc>(
    () => SignInBloc(
      mainBloc: di<MainBloc>(),
    ),
  );
}
