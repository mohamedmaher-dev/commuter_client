part of 'di.dart';

_rebosDIInit() {
  di.registerLazySingleton(
    () => SignUpRebo(
      di<ApiAuthService>(),
      di<LocalStorageService>(),
      di<NotifiApiService>(),
      di<NotifiService>(),
    ),
  );

  di.registerLazySingleton(
    () => WhereToRebo(
      placesService: di<PlacesService>(),
      apiService: di<ApiService>(),
      locationService: di<LocationService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton(
    () => SplashRebo(
      di<LocalStorageService>(),
      di<ApiService>(),
    ),
  );
  di.registerLazySingleton(
    () => AddCommuteRebo(
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => PickLocationRebo(
      di<LocationService>(),
    ),
  );

  di.registerLazySingleton(
    () => OneChatRoomRebo(),
  );

  di.registerLazySingleton(
    () => ChatRoomRebo(
      apiChatService: di<ApiChatService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton(
    () => NotifiRebo(
      notifiApiService: di<NotifiApiService>(),
      fcmManger: di<NotifiService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton(
    () => HomeRebo(
      notifiApiService: di<NotifiApiService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton(
    () => MyProfileRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => CheckPermissionRebo(
      locationPermission: di<CheckLocationPermission>(),
      notifiPermission: di<CheckNotifiPermission>(),
    ),
  );
  di.registerLazySingleton(
    () => NearbyCommutersRebo(
      apiNearbyCommutersService: di<NearbyCommutersApiService>(),
      apiService: di<ApiService>(),
      locationService: di<LocationService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => SettingsRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => AddScheduleRebo(
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => AuthRebo(
      apiAuthService: di<ApiAuthService>(),
    ),
  );
  di.registerLazySingleton<SignInWithGoogleRebo>(
    () => SignInWithGoogleRebo(
      localStorageService: di<LocalStorageService>(),
      apiAuthService: di<ApiAuthService>(),
      notifiApiService: di<NotifiApiService>(),
      signWithGoogleService: di<SignWithGoogleService>(),
      googleSignIn: di<GoogleSignIn>(),
      firebaseAuthService: di<FirebaseAuth>(),
    ),
  );
  di.registerFactory<SignInWithEmailRebo>(
    () => SignInWithEmailRebo(
      localStorageService: di<LocalStorageService>(),
      apiAuthService: di<ApiAuthService>(),
      notifiApiService: di<NotifiApiService>(),
    ),
  );
}
