import 'package:commuter_client/core/local_storage/hive_adapter_type.dart';
import 'package:hive/hive.dart';

part 'app_settings_model.g.dart';

@HiveType(typeId: HiveAdapterType.appSettingsModel)
class AppSettingsModel {
  @HiveField(0)
  final String? locale;
  @HiveField(1)
  final bool? isDark;
  AppSettingsModel({required this.locale, required this.isDark});

  factory AppSettingsModel.init() {
    return AppSettingsModel(locale: 'en', isDark: true);
  }

  AppSettingsModel copyWith({String? locale, bool? isDark}) {
    return AppSettingsModel(
      locale: locale ?? this.locale,
      isDark: isDark ?? this.isDark,
    );
  }
}
