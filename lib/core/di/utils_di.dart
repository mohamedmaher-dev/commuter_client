part of 'di.dart';

_utilsDiInit() async {
  di.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );
  di.registerLazySingleton<LocalStorageService>(
    () => LocalStorageService(
      di<FlutterSecureStorage>(),
    ),
  );

  di.registerLazySingleton<AppThemeController>(
    () => AppThemeController(
      di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton<AppLocalizationController>(
    () => AppLocalizationController(
      di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton<MyBlocObserver>(
    () => MyBlocObserver(
      mainBloc: di<MainBloc>(),
    ),
  );
  di.registerLazySingleton<Dio>(() => DioFactory.getDio());
  di.registerLazySingleton<GoogleSignIn>(() => GoogleSignFactory.instance());

  di.registerLazySingleton<ApiService>(
    () => ApiService(di<Dio>(), baseUrl: Env.apiBaseUrl),
  );

  di.registerLazySingleton<PlacesService>(
    () => PlacesService(
      di<Dio>(),
      baseUrl: PlacesConsts.baseUrl,
    ),
  );
  di.registerLazySingleton<LocationService>(
    () => LocationService(
      di<Dio>(),
      di<Location>(),
      di<CheckLocationPermission>(),
    ),
  );

  di.registerLazySingleton<ApiChatService>(
    () => ApiChatService(
      di<Dio>(),
      baseUrl: Env.apiChatBaseUrl,
    ),
  );
  di.registerLazySingleton<NotifiApiService>(
      () => NotifiApiService(di<Dio>(), baseUrl: Env.apiNotifiBaseUrl));
  di.registerLazySingleton<NearbyCommutersApiService>(() =>
      NearbyCommutersApiService(di<Dio>(),
          baseUrl: Env.apiNearbyCommutersBaseUrl));
  di.registerLazySingleton<FirebaseMessaging>(() => FirebaseMessaging.instance);

  di.registerLazySingleton<NotifiService>(
    () => NotifiService(
      di<FirebaseMessaging>(),
      di<CheckNotifiPermission>(),
    ),
  );
  di.registerLazySingleton<Location>(() => Location());
  di.registerLazySingleton<CheckLocationPermission>(
      () => CheckLocationPermission(di<Location>()));
  di.registerLazySingleton<CheckNotifiPermission>(() => CheckNotifiPermission(
        di<FirebaseMessaging>(),
      ));
  di.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  di.registerLazySingleton<SignWithGoogleService>(
    () => SignWithGoogleService(
      di<Dio>(),
      baseUrl: Env.signWithGoogleBaseUrl,
    ),
  );
}
