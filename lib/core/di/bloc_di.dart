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
  di.registerFactory<HomeBloc>(
    () => HomeBloc(),
  );
  di.registerFactory<SplashBloc>(
    () => SplashBloc(
      di<SplashRebo>(),
    ),
  );

  di.registerFactory<AddCommuteBloc>(
    () => AddCommuteBloc(
      di<AddCommuteRebo>(),
    ),
  );

  di.registerFactory<PickLocationBloc>(
    () => PickLocationBloc(
      di<PickLocationRebo>(),
    ),
  );
  di.registerFactory<SearchForPlaceBloc>(
      () => SearchForPlaceBloc(di<WhereToRebo>()));

  di.registerFactory<OneChatRoomBloc>(
    () => OneChatRoomBloc(
      di<OneChatRoomRebo>(),
      di<UserSecretDataModel>(),
    ),
  );
  di.registerFactory<ChatRoomsBloc>(
    () => ChatRoomsBloc(
      chatRoomRebo: di<ChatRoomRebo>(),
    ),
  );
  di.registerFactory<NotifiBloc>(
    () => NotifiBloc(
      di<NotifiRebo>(),
    ),
  );

  di.registerFactory<WhereToBloc>(
    () => WhereToBloc(
      di<WhereToRebo>(),
    ),
  );
  di.registerFactory<WhereToPanelBloc>(
    () => WhereToPanelBloc(
      di<WhereToRebo>(),
    ),
  );

  di.registerFactory<WhereToSwitchCubit>(() => WhereToSwitchCubit());
  di.registerFactory<WhereToMyCommutesBloc>(
    () => WhereToMyCommutesBloc(
      di<WhereToRebo>(),
    ),
  );
  di.registerFactory<NotifiIconBloc>(
    () => NotifiIconBloc(
      di<HomeRebo>(),
    ),
  );
}
