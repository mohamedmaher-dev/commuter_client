part of 'di.dart';

_blocDiInit() {
  di.registerLazySingleton<MyBlocObserver>(
    () => MyBlocObserver(
      mainBloc: di<MainBloc>(),
      dPrint: di<DebugPrint>(),
    ),
  );
  di.registerLazySingleton<MainBloc>(() => MainBloc());
  di.registerFactory<SignInBloc>(() => SignInBloc());
}
