// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_general_settings_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppGeneralSettingsModelAdapter
    extends TypeAdapter<AppGeneralSettingsModel> {
  @override
  final int typeId = 3;

  @override
  AppGeneralSettingsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppGeneralSettingsModel(
      locale: fields[0] as String?,
      isDark: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AppGeneralSettingsModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.locale)
      ..writeByte(1)
      ..write(obj.isDark);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppGeneralSettingsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
