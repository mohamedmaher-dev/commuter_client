part of 'di.dart';

_utilsDiInit() async {
  di.registerLazySingleton(() => const DebugPrint());
  di.registerLazySingleton(
    () => MyBlocObserver(
      dPrint: di<DebugPrint>(),
      mainBloc: di<MainBloc>(),
    ),
  );
  di.registerLazySingleton<Dio>(() => DioFactory.getDio());
  di.registerLazySingleton(
    () => ApiService(
      di<Dio>(),
      baseUrl: ApiConsts.baseUrl,
    ),
  );
}
