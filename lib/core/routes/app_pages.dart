part of 'app_route.dart';

enum Pages {
  signIn(view: SignInView()),
  signUp(view: SignUpView()),
  otp(view: OtpView());

  final Widget view;
  const Pages({required this.view});
}
