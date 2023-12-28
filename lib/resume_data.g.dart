// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResumeAdapter extends TypeAdapter<Resume> {
  @override
  final int typeId = 0;

  @override
  Resume read(BinaryReader reader) {
    return Resume(
      name: reader.readString(),
      skills: reader.readString(),
      experince: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Resume obj) {
    writer.writeString(obj.name);
    writer.writeString(obj.skills);
    writer.writeString(obj.experince);
  }
}
