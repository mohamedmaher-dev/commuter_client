import 'package:commuter_client/modules/auth/change_password/views/change_password_view.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/views/otp_forgot_password_view.dart';
import 'package:commuter_client/modules/chat/chat_rooms/views/chat_rooms.dart';
import 'package:commuter_client/modules/home/views/home_view.dart';
import 'package:commuter_client/modules/my_commutes/views/my_commutes_view.dart';
import 'package:commuter_client/modules/nearby_commuters/view/nearby_commuters_view.dart';
import 'package:commuter_client/modules/notifications/views/notifi_view.dart';
import 'package:commuter_client/modules/chat/one_chat/views/one_chat_view.dart';
import 'package:commuter_client/modules/onBoarding/views/onBoarding_view.dart';
import 'package:commuter_client/modules/profiles/my_profile/views/profile_view.dart';
import 'package:commuter_client/modules/settings/views/settings_view.dart';
import 'package:commuter_client/modules/splash/views/splash_view.dart';
import 'package:commuter_client/modules/transactions/wallet/views/wallet_view.dart';
import 'package:commuter_client/modules/where_to/views/whare_to_view.dart';
import 'package:flutter/material.dart';

import '../../modules/auth/sign_in/views/sign_in_view.dart';
import '../../modules/auth/sign_up/views/sign_up_view.dart';
import '../../modules/check_permission/views/check_permission_view.dart';
import '../../modules/profiles/commuter_profile/views/commuter_profile_view.dart';
import '../../modules/support_help/views/support_help_view.dart';
part 'app_pages.dart';

class AppRouter {
  const AppRouter._();
  static _getRoute(Pages page, Object? arguments) => MaterialPageRoute(
        builder: (context) => page.view,
        settings: RouteSettings(arguments: arguments),
      );

  static Future<void> push({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) async {
    await Navigator.of(context).push(
      _getRoute(page, arguments),
    );
  }

  static pushReplacement({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) =>
      Navigator.of(context).pushReplacement(
        _getRoute(page, arguments),
      );
  static pop({required BuildContext context}) => Navigator.of(context).pop();

  static pushAndRemoveUntil({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) =>
      Navigator.of(context).pushAndRemoveUntil(
        _getRoute(page, arguments),
        (route) => false,
      );
}
