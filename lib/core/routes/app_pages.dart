part of 'app_route.dart';

enum Pages {
  initPage(view: SplashView()),
  home(view: HomeView()),
  signIn(view: SignInView()),
  otpForgotPassword(view: OtpForgotPasswordView()),
  changePassword(view: ChangePasswordView()),
  notifications(view: NotifiView()),
  chats(view: ChatRooms()),
  oneChat(view: OneChatView()),
  settings(view: SettingsView()),
  profile(view: MyProfileView()),
  wallet(view: WalletView()),
  whareTo(view: WhereToView()),
  // commutes(view: CommutesView()),
  // addRoundTrip(view: AddRoundTripView()),
  noPermission(view: CheckPermissionView()),
  supportHelp(view: SupportHelpView()),
  commuterProfile(view: CommuterProfileView()),
  splash(view: SplashView()),
  signUp(view: SignUpView()),
  nearbyCommuters(view: NearbyCommutersView()),
  myCommutes(view: MyCommutesView()),
  onBoarding(view: OnBoardingPage()),
  ;

  final Widget view;
  const Pages({required this.view});
}
