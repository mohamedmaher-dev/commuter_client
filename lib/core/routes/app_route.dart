import 'package:flutter/material.dart';

import '../../modules/auth/otp/views/otp_view.dart';
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
}
