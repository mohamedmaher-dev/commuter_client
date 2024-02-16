// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../di/di.dart';
part '../color_manger.dart';
part '../app_theme.dart';
part 'app_theme_event.dart';
part 'app_theme_state.dart';
part 'app_theme_bloc.freezed.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  _AppTheme get appTheme => _AppTheme();
  ThemeMode themeMode = ThemeMode.dark;
  AppThemeBloc() : super(const _Initial()) {
    on<AppThemeEvent>(
      (event, emit) {
        event.whenOrNull(
          changeTheme: () {
            if (themeMode == ThemeMode.light) {
              themeMode = ThemeMode.dark;
            } else {
              themeMode = ThemeMode.light;
            }
            emit(AppThemeState.refresh(themeMode: themeMode));
          },
        );
      },
    );
  }
}
