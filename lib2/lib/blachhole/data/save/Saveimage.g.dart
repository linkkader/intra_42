// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Saveimage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaveImgAdapter extends TypeAdapter<SaveImg> {
  @override
  final int typeId = 3;

  @override
  SaveImg read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveImg(
      (fields[0] as List).cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, SaveImg obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveImgAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
