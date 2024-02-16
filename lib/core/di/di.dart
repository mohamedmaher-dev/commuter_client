import 'package:commuter_client/core/bloc/bloc_observer.dart';
import 'package:commuter_client/core/localization/controller/localization_bloc.dart';
import 'package:commuter_client/core/networking/api_consts.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/core/networking/dio_factory.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/modules/auth/change_password/controllers/change_password_bloc/change_password_bloc.dart';
import 'package:commuter_client/modules/auth/change_password/data/rebos/change_pass_rebo.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/rebos/otp_forgot_password_rebo.dart';
import 'package:commuter_client/modules/auth/sign_in/data/rebos/sign_in_rebo.dart';
import 'package:commuter_client/modules/auth/sign_up/controllers/sign_up_bloc/sign_up_bloc.dart';
import 'package:commuter_client/modules/auth/sign_up/data/rebos/sign_up_rebo.dart';
import 'package:debug_print_flutter/debug_print_flutter.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../modules/auth/otp_forgot_password/controller/otp_forgot_password_bloc/otp_forgot_password_bloc.dart';
import '../../modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import '../bloc/main_bloc.dart';
part 'utils_di.dart';
part 'bloc_di.dart';
part 'rebos_di.dart';

GetIt di = GetIt.instance;

Future<void> diInit() async {
  await _blocDiInit();
  await _utilsDiInit();
  await _rebosDIInit();
}
