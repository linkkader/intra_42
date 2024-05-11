// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'black_hole_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlackHoleDataImpl _$$BlackHoleDataImplFromJson(Map<String, dynamic> json) =>
    _$BlackHoleDataImpl(
      isAlumni: json['is_alumni'] as bool?,
      agu: json['agu'],
      aguDate: json['agu_date'],
      singularity: (json['singularity'] as num?)?.toInt(),
      bhDate: json['bh_date'] as String?,
    );

Map<String, dynamic> _$$BlackHoleDataImplToJson(_$BlackHoleDataImpl instance) =>
    <String, dynamic>{
      'is_alumni': instance.isAlumni,
      'agu': instance.agu,
      'agu_date': instance.aguDate,
      'singularity': instance.singularity,
      'bh_date': instance.bhDate,
    };
