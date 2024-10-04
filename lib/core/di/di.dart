import 'package:commuter_client/core/bloc/bloc_observer.dart';
import 'package:commuter_client/core/env/env.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/localization/app_localization_controller.dart';
import 'package:commuter_client/core/location/location_permission.dart';
import 'package:commuter_client/core/location/places_consts.dart';
import 'package:commuter_client/core/location/places_service.dart';
import 'package:commuter_client/core/networking/api_service.dart';
import 'package:commuter_client/core/networking/dio_factory.dart';
import 'package:commuter_client/core/networking/google_sign_factory.dart';
import 'package:commuter_client/core/notifications/check_notifi_permission.dart';
import 'package:commuter_client/core/themes/app_theme_controller.dart';
import 'package:commuter_client/core/notifications/notifi_service.dart';
import 'package:commuter_client/modules/app_map/controllers/app_map/app_map_bloc.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/controllers/sign_with_google/sign_with_google_bloc.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/data/rebos/sign_with_google_rebo.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/service/sign_with_google_service.dart';
import 'package:commuter_client/modules/check_permission/controllers/check_perm_indicator_cubit/check_perm_indicator_cubit.dart';
import 'package:commuter_client/modules/check_permission/controllers/check_permission_bloc/check_permission_bloc.dart';
import 'package:commuter_client/modules/my_commutes/controller/add_schedules/add_schedules_bloc.dart';
import 'package:commuter_client/modules/my_commutes/controller/commutes_bloc/commutes_bloc.dart';
import 'package:commuter_client/modules/my_commutes/data/rebos/add_commute_rebo.dart';
import 'package:commuter_client/modules/auth/change_password/controllers/change_password_bloc/change_password_bloc.dart';
import 'package:commuter_client/modules/auth/change_password/data/rebos/change_pass_rebo.dart';
import 'package:commuter_client/modules/auth/otp_forgot_password/data/rebos/otp_forgot_password_rebo.dart';
import 'package:commuter_client/modules/auth/sign_in/data/rebos/sign_in_rebo.dart';
import 'package:commuter_client/modules/auth/sign_up/controllers/sign_up_bloc/sign_up_bloc.dart';
import 'package:commuter_client/modules/auth/sign_up/data/rebos/sign_up_rebo.dart';
import 'package:commuter_client/modules/chat/chat_rooms/controllers/bloc/chat_rooms_bloc.dart';
import 'package:commuter_client/modules/chat/chat_rooms/data/rebos/chat_rooms_rebo.dart';
import 'package:commuter_client/modules/chat/chat_rooms/service/api_chat_service.dart';
import 'package:commuter_client/modules/home/controllers/home_bloc/home_bloc.dart';
import 'package:commuter_client/modules/chat/one_chat/controllers/room_chat_bloc/chat_room_bloc.dart';
import 'package:commuter_client/modules/chat/one_chat/data/rebos/chat_room_rebo.dart';
import 'package:commuter_client/modules/home/controllers/notifi_icon_bloc/notifi_icon_bloc.dart';
import 'package:commuter_client/modules/home/data/rebos/home_rebo.dart';
import 'package:commuter_client/modules/my_commutes/controller/my_commutes_tab/my_commmutes_tab_cubit.dart';
import 'package:commuter_client/modules/my_commutes/data/rebos/add_schedule_rebo.dart';
import 'package:commuter_client/modules/nearby_commuters/controllers/join_commute/join_commute_bloc.dart';
import 'package:commuter_client/modules/nearby_commuters/controllers/nearby_commuters_bloc/nearby_commuters_bloc.dart';
import 'package:commuter_client/modules/nearby_commuters/controllers/nearby_commuters_tabs/nearby_commuters_tabs_cubit.dart';
import 'package:commuter_client/modules/notifications/controllers/notifi_bloc/notifi_bloc.dart';
import 'package:commuter_client/modules/notifications/data/rebos/notifi_rebo.dart';
import 'package:commuter_client/modules/notifications/service/notifi_api_service.dart';
import 'package:commuter_client/modules/pick_location/controllers/pick_location_bloc/pick_location_bloc.dart';
import 'package:commuter_client/modules/pick_location/data/rebos/pick_location_rebo.dart';
import 'package:commuter_client/modules/profiles/my_profile/controllers/my_profile_bloc/my_profile_bloc.dart';
import 'package:commuter_client/modules/profiles/my_profile/controllers/my_profile_pic_cubit/my_profile_pic_cubit.dart';
import 'package:commuter_client/modules/settings/controllers/settings_delete_profile/settings_delete_profile_cubit.dart';
import 'package:commuter_client/modules/splash/data/rebos/splash_rebo.dart';
import 'package:commuter_client/modules/where_to/controllers/search_for_place_bloc/search_for_place_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_bloc/where_to_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_my_commutes_bloc/where_to_my_commutes_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_switch_cubit/where_to_switch_cubit.dart';
import 'package:commuter_client/modules/where_to/data/rebos/where_to_rebo.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:location/location.dart';
import '../../modules/auth/otp_forgot_password/controller/otp_forgot_password_bloc/otp_forgot_password_bloc.dart';
import '../../modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import '../../modules/check_permission/data/rebos/check_permission_rebo.dart';
import '../../modules/nearby_commuters/data/rebos/nearby_commuters_rebo.dart';
import '../../modules/nearby_commuters/service/nearby_commuters_api_service.dart';
import '../../modules/profiles/my_profile/data/rebos/profile_rebo.dart';
import '../../modules/settings/data/rebos/settings_rebo.dart';
import '../../modules/splash/controllers/splash_bloc/splash_bloc.dart';
import '../../modules/where_to/controllers/where_to_panel/where_to_panel_bloc.dart';
import '../bloc/main_bloc.dart';
import '../location/location_service.dart';
part 'utils_di.dart';
part 'bloc_di.dart';
part 'rebos_di.dart';

GetIt di = GetIt.instance;

Future<void> diInit() async {
  await _blocDiInit();
  await _utilsDiInit();
  await _rebosDIInit();
}
