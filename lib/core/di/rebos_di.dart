part of 'di.dart';

_rebosDIInit() {
  di.registerLazySingleton(
    () => SignInRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
      di<NotifiApiService>(),
      di<NotifiService>(),
    ),
  );
  di.registerLazySingleton(
    () => SignUpRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
      di<NotifiApiService>(),
      di<NotifiService>(),
    ),
  );
  di.registerLazySingleton(
    () => OtpForgotPasswordRebo(
      di<ApiService>(),
    ),
  );
  di.registerLazySingleton(
    () => ChangePassRebo(
      di<ApiService>(),
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
}
