// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModuleHiveAdapter extends TypeAdapter<ModuleHive> {
  @override
  final int typeId = 4;

  @override
  ModuleHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModuleHive(
      moduleId: fields[1] as String,
      lessonMap: (fields[2] as Map).cast<String, String>(),
      moduleProgress: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, ModuleHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.moduleId)
      ..writeByte(2)
      ..write(obj.lessonMap)
      ..writeByte(3)
      ..write(obj.moduleProgress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModuleHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
