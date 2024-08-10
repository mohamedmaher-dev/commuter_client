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
    ),
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

  di.registerLazySingleton(() => ApiChatService(di<Dio>()));
  di.registerLazySingleton(() => NotifiApiService(di<Dio>()));
  di.registerLazySingleton<FirebaseMessaging>(() => FirebaseMessaging.instance);

  di.registerLazySingleton(
    () => FCMManger(
      di<FirebaseMessaging>(),
    ),
  );
}
