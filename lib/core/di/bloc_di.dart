part of 'di.dart';

_blocDiInit() {
  di.registerLazySingleton<MainBloc>(
    () => MainBloc(
      di<AppThemeController>(),
      di<AppLocalizationController>(),
    ),
  );
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
      di<CheckPermissionRebo>(),
    ),
  );

  di.registerFactory<CommutesBloc>(
    () => CommutesBloc(
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
      di<LocalStorageService>(),
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
  di.registerFactory<MyProfileBloc>(() => MyProfileBloc(di<MyProfileRebo>()));
  di.registerFactory<MyProfilePicCubit>(() => MyProfilePicCubit());
  di.registerFactory<MyCommmutesTabCubit>(() => MyCommmutesTabCubit());
  di.registerFactory<CheckPermissionBloc>(
    () => CheckPermissionBloc(
      di<CheckPermissionRebo>(),
    ),
  );
  di.registerFactory<CheckPermIndicatorCubit>(() => CheckPermIndicatorCubit());
  di.registerFactory<NearbyCommutersBloc>(() => NearbyCommutersBloc(
        di<NearbyCommutersRebo>(),
      ));

  di.registerFactory<SettingsDeleteProfileCubit>(
    () => SettingsDeleteProfileCubit(
      di<SettingsRebo>(),
    ),
  );
  di.registerFactory<AppMapBloc>(
    () => AppMapBloc(
      locationService: di<LocationService>(),
    ),
  );
  di.registerFactory<NearbyCommutersTabsCubit>(
      () => NearbyCommutersTabsCubit());

  di.registerFactory<JoinCommuteBloc>(
    () => JoinCommuteBloc(
      di<NearbyCommutersRebo>(),
    ),
  );
}
