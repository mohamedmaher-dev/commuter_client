import 'package:flutter/material.dart';

class AppLanguageModel {
  final String countryCode;
  final String langauageCode;
  final String languageName;
  AppLanguageModel({
    required this.countryCode,
    required this.langauageCode,
    required this.languageName,
  });

  Locale toLocale() {
    return Locale(
      langauageCode,
      countryCode,
    );
  }
}
