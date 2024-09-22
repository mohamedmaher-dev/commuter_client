import 'package:commuter_client/core/local_storage/hive_adapter_type.dart';
import 'package:hive/hive.dart';
part 'app_map_settings_model.g.dart';

@HiveType(typeId: HiveAdapterType.appMapSettingsModel)
class AppMapSettingsModel {
  @HiveField(0)
  final bool? trafficEnabled;
  @HiveField(1)
  final bool? buildings3DEnabled;
  AppMapSettingsModel({
    required this.trafficEnabled,
    required this.buildings3DEnabled,
  });

  factory AppMapSettingsModel.init() {
    return AppMapSettingsModel(
        trafficEnabled: false, buildings3DEnabled: false);
  }

  AppMapSettingsModel copyWith({
    bool? trafficEnabled,
    bool? buildings3DEnabled,
  }) {
    return AppMapSettingsModel(
      trafficEnabled: trafficEnabled ?? this.trafficEnabled,
      buildings3DEnabled: buildings3DEnabled ?? this.buildings3DEnabled,
    );
  }
}
