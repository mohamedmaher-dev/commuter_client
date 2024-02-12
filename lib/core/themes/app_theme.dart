import 'package:commuter_client/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/main_bloc.dart';
part 'font_manger.dart';
part 'color_manger.dart';

class AppTheme {
  AppTheme._();
  static String get fontFamily => FontManger.font;
  static bool get useM3 => true;
  static ThemeMode get themeMode => ThemeMode.dark;
  static bool get isLight => themeMode == ThemeMode.light;
  static ThemeData get theme => ThemeData(
        colorScheme: ColorManger.colorScheme,
        fontFamily: AppTheme.fontFamily,
        useMaterial3: AppTheme.useM3,
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(
              Size(
                double.infinity,
                40.h,
              ),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(
              Size(
                double.infinity,
                40.h,
              ),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
        ),
      );
}
