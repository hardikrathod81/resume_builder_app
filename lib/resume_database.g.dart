// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_database.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResumeAdapter extends TypeAdapter<Resume> {
  @override
  final int typeId = 0;

  @override
  Resume read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Resume(
      name: fields[0] as String,
      skills: fields[1] as String,
      experince: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Resume obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.skills)
      ..writeByte(2)
      ..write(obj.experince);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResumeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
