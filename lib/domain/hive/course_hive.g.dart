// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseHiveAdapter extends TypeAdapter<CourseHive> {
  @override
  final int typeId = 3;

  @override
  CourseHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseHive(
      courseId: fields[1] as String,
      moduleMap: (fields[2] as Map).cast<String, ModuleHive>(),
      courseProgress: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CourseHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.courseId)
      ..writeByte(2)
      ..write(obj.moduleMap)
      ..writeByte(3)
      ..write(obj.courseProgress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
