import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/commuter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  diInit();
  runApp(
    const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Commuter(),
    ),
  );
}
