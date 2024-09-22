import 'package:commuter_client/core/local_storage/hive_adapter_type.dart';
import 'package:hive/hive.dart';

part 'app_general_settings_model.g.dart';

@HiveType(typeId: HiveAdapterType.appGeneralSettingsModel)
class AppGeneralSettingsModel {
  @HiveField(0)
  final String? locale;
  @HiveField(1)
  final bool? isDark;
  AppGeneralSettingsModel({required this.locale, required this.isDark});

  factory AppGeneralSettingsModel.init() {
    return AppGeneralSettingsModel(locale: 'en', isDark: true);
  }

  AppGeneralSettingsModel copyWith({String? locale, bool? isDark}) {
    return AppGeneralSettingsModel(
      locale: locale ?? this.locale,
      isDark: isDark ?? this.isDark,
    );
  }
}
