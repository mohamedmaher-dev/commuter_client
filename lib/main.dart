import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/commuter.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/utils/fcm_manger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/bloc/bloc_observer.dart';
import 'core/location/location_service.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await diInit();
  await Hive.initFlutter();
  // await di<LocalizationController>().init();
  // await di<AppThemeController>().init();
  await di<LocalStorageService>().init();
  await di<FCMManger>().init();
  await di<LocationService>().locationServiceInit();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = di<MyBlocObserver>();
  await ScreenUtil.ensureScreenSize();

  runApp(const Commuter());
}


//USER_ID = 66afae216f7174dde627adff
//DRIVER_ID = 65e0e42a394d7b4edc4535b7