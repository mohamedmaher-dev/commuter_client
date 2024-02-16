import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/commuter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/bloc/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await diInit();
  Bloc.observer = di<MyBlocObserver>();
  runApp(
    const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Commuter(),
    ),
  );
}
