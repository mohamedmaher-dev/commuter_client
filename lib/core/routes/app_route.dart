import 'package:commuter_client/modules/auth/change_password/views/change_password_view.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/views/otp_forgot_password_view.dart';
import 'package:commuter_client/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../modules/auth/sign_in/views/sign_in_view.dart';
import '../../modules/auth/sign_up/views/sign_up_view.dart';
part 'app_pages.dart';

class AppRouter {
  const AppRouter._();
  static _getRoute(Pages page) =>
      MaterialPageRoute(builder: (context) => page.view);

  static push({required BuildContext context, required Pages page}) =>
      Navigator.of(context).push(
        _getRoute(page),
      );
  static pushReplacement(
          {required BuildContext context, required Pages page}) =>
      Navigator.of(context).pushReplacement(
        _getRoute(page),
      );
  static pop({required BuildContext context}) => Navigator.of(context).pop();
}
