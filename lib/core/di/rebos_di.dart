part of 'di.dart';

_rebosDIInit() {
  di.registerLazySingleton(
    () => SignInRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
      di<NotifiApiService>(),
      di<FCMManger>(),
    ),
  );
  di.registerLazySingleton(
    () => SignUpRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
      di<NotifiApiService>(),
      di<FCMManger>(),
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
      userSecretDataModel: di<UserSecretDataModel>(),
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
    () => OneChatRoomRebo(
      secretDataModel: di<UserSecretDataModel>(),
    ),
  );

  di.registerLazySingleton(
    () => ChatRoomRebo(
      apiChatService: di<ApiChatService>(),
      userSecretDataModel: di<UserSecretDataModel>(),
    ),
  );

  di.registerLazySingleton(
    () => NotifiRebo(
      notifiApiService: di<NotifiApiService>(),
      userSecretDataModel: di<UserSecretDataModel>(),
      fcmManger: di<FCMManger>(),
    ),
  );

  di.registerLazySingleton(
    () => HomeRebo(
      notifiApiService: di<NotifiApiService>(),
      userSecretDataModel: di<UserSecretDataModel>(),
    ),
  );
}
