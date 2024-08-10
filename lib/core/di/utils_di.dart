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
    () => ApiService(di<Dio>(), baseUrl: Env.apiBaseUrl),
  );

  di.registerLazySingleton(
    () => PlacesService(
      di<Dio>(),
      baseUrl: PlacesConsts.baseUrl,
    ),
  );
  di.registerLazySingleton(
    () => const FlutterSecureStorage(),
  );
  di.registerLazySingleton(
    () => LocalStorageService(
      di<FlutterSecureStorage>(),
    ),
  );
  di.registerLazySingleton(
    () => LocationService(
      di<Dio>(),
    ),
  );

  di.registerLazySingleton(
    () => ApiChatService(
      di<Dio>(),
      baseUrl: Env.apiChatBaseUrl,
    ),
  );
  di.registerLazySingleton(
      () => NotifiApiService(di<Dio>(), baseUrl: Env.apiNotifiBaseUrl));
  di.registerLazySingleton<FirebaseMessaging>(() => FirebaseMessaging.instance);

  di.registerLazySingleton(
    () => FCMManger(
      di<FirebaseMessaging>(),
    ),
  );
}
