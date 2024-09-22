// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_commute_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalCommuteModelAdapter extends TypeAdapter<LocalCommuteModel> {
  @override
  final int typeId = 2;

  @override
  LocalCommuteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalCommuteModel(
      commuteName: fields[0] as String,
      latitude: fields[1] as double,
      longitude: fields[2] as double,
      id: fields[4] as String,
      isPinned: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, LocalCommuteModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.commuteName)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj.isPinned)
      ..writeByte(4)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalCommuteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
