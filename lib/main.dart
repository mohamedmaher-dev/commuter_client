import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/mahatati.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/bloc/main_bloc.dart';

void main() {
  diInit();
  runApp(
    BlocProvider(
      create: (context) => di<MainBloc>()..add(const MainEvent.started()),
      child: const ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: Mahatati(),
      ),
    ),
  );
}
