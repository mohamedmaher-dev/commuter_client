// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_schedule_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalScheduleModelAdapter extends TypeAdapter<LocalScheduleModel> {
  @override
  final int typeId = 5;

  @override
  LocalScheduleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalScheduleModel(
      localationName: fields[1] as String,
      date: fields[2] as String,
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LocalScheduleModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.localationName)
      ..writeByte(2)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalScheduleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
