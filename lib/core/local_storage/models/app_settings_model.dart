import 'package:hive/hive.dart';

part 'app_settings_model.g.dart';

@HiveType(typeId: 1)
class AppSettingsModel {
  @HiveField(0)
  final String? locale;
  @HiveField(1)
  final bool? isDark;
  AppSettingsModel({required this.locale, required this.isDark});

  factory AppSettingsModel.init() {
    return AppSettingsModel(locale: 'ar', isDark: true);
  }

  AppSettingsModel copyWith({String? locale, bool? isDark}) {
    return AppSettingsModel(
      locale: locale ?? this.locale,
      isDark: isDark ?? this.isDark,
    );
  }
}
