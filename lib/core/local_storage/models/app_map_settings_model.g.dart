// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_map_settings_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppMapSettingsModelAdapter extends TypeAdapter<AppMapSettingsModel> {
  @override
  final int typeId = 4;

  @override
  AppMapSettingsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppMapSettingsModel(
      trafficEnabled: fields[0] as bool?,
      buildings3DEnabled: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AppMapSettingsModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.trafficEnabled)
      ..writeByte(1)
      ..write(obj.buildings3DEnabled);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppMapSettingsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
