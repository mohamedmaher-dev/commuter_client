import 'package:commuter_client/core/localization/controller/localization_bloc.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/modules/auth/sign_in/controllers/bloc/sign_in_bloc.dart';
import 'package:debug_print_flutter/debug_print_flutter.dart';
import 'package:get_it/get_it.dart';
import '../bloc/main_bloc.dart';
part 'utils_di.dart';
part 'bloc_di.dart';

GetIt di = GetIt.instance;

diInit() {
  _blocDiInit();
  _utilsDiInit();
}
