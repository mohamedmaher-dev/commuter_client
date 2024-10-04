import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/commuter.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/localization/app_localization_controller.dart';
import 'package:commuter_client/core/notifications/notifi_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/bloc/bloc_observer.dart';
import 'core/location/location_service.dart';
import 'core/themes/app_theme_controller.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await diInit();
  await di<LocalStorageService>().init();
  await di<AppLocalizationController>().init();
  await di<AppThemeController>().init();
  await di<NotifiService>().init();
  await di<LocationService>().locationServiceInit();
  Bloc.observer = di<MyBlocObserver>();
  runApp(
    BlocProvider(
      create: (context) => di<MainBloc>()..add(const MainEvent.started()),
      child: const Commuter(),
    ),
  );
}
