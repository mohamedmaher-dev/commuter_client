import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../local_storage/local_storage_service.dart';
import '../utils/assets_manger.dart';
part 'color_manger.dart';
part 'app_theme.dart';
part 'text_styles.dart';

class AppThemeController {
  final LocalStorageService _localStorageService;
  static late ThemeMode _themeMode;
  static late String _darkMapStyle;
  AppThemeController(this._localStorageService);
  Future<void> init() async {
    _darkMapStyle =
        await rootBundle.loadString(AssetsManger.mapStylesNightStyle);
    final appSettingsModel =
        await _localStorageService.getAppSettings.then((value) => value);
    if (appSettingsModel.isDark == true) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
  }

  Future<void> changeThemeMode() async {
    final appSettingsModel =
        await _localStorageService.getAppSettings.then((value) => value);
    _themeMode =
        _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await _localStorageService.saveAppSettings(
      appSettingsModel: appSettingsModel.copyWith(
        isDark: _themeMode == ThemeMode.dark,
      ),
    );
  }
}
