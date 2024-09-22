import 'package:commuter_client/core/localization/models/app_language_model.dart';
import 'package:flutter/material.dart';

import '../local_storage/local_storage_service.dart';

class AppLocalizationController {
  static late Locale locale;
  final LocalStorageService _localStorageService;
  AppLocalizationController(this._localStorageService);
  Future<void> init() async {
    final appSettingsModel =
        await _localStorageService.getAppSettings.then((value) => value);
    if (appSettingsModel.locale == null) {
      locale = const Locale('en');
    } else {
      locale = Locale(appSettingsModel.locale!);
    }
  }

  Future<void> changeLanguage(Locale locale) async {
    final appSettingsModel =
        await _localStorageService.getAppSettings.then((value) => value);
    await _localStorageService.saveAppSettings(
      appSettingsModel: appSettingsModel.copyWith(
        locale: locale.languageCode,
      ),
    );
    AppLocalizationController.locale = locale;
  }

  static List<AppLanguageModel> get appLanguages => [
        AppLanguageModel(
            countryCode: 'sa', langauageCode: 'ar', languageName: 'العربية'),
        AppLanguageModel(
            countryCode: 'us', langauageCode: 'en', languageName: 'English'),
        AppLanguageModel(
            countryCode: 'in', langauageCode: 'ur', languageName: 'اردو'),
      ];
}
