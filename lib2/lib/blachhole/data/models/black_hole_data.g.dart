// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'black_hole_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlackHoleData _$$_BlackHoleDataFromJson(Map<String, dynamic> json) =>
    _$_BlackHoleData(
      isAlumni: json['is_alumni'] as bool?,
      agu: json['agu'],
      aguDate: json['agu_date'],
      singularity: json['singularity'] as int?,
      bhDate: json['bh_date'] as String?,
    );

Map<String, dynamic> _$$_BlackHoleDataToJson(_$_BlackHoleData instance) =>
    <String, dynamic>{
      'is_alumni': instance.isAlumni,
      'agu': instance.agu,
      'agu_date': instance.aguDate,
      'singularity': instance.singularity,
      'bh_date': instance.bhDate,
    };
