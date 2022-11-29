// Created by linkkader on 17/11/2022

import 'package:isar/isar.dart';
import '../../core/extensions/string_ext.dart';
import '../models/black_hole_data.dart';

part 'black_hole.g.dart';

@Collection()
class BlackHoleIsar {
  final Id? id;
  final bool? isAlumni;
  final DateTime? updatedAt;
  @ignore
  final dynamic agu;
  @ignore
  final dynamic aguDate;
  final int? singularity;
  final DateTime? bhDate;

  const BlackHoleIsar({this.isAlumni, this.agu, this.aguDate, this.singularity, this.bhDate, this.updatedAt, this.id = 0});

  factory BlackHoleIsar.fromFreezed(BlackHoleData? objet) => BlackHoleIsar (
    isAlumni: objet?.isAlumni,
    singularity: objet?.singularity,
    bhDate: objet?.bhDate?.toDateTime2(),
  );

  BlackHoleData toFreezed() => BlackHoleData(
    isAlumni: isAlumni,
    agu: agu,
    aguDate: aguDate,
    singularity: singularity,
    bhDate: bhDate?.toIso8601String(),
  );
  BlackHoleIsar copyWith({int? id, bool? isAlumni, dynamic agu, dynamic aguDate, int? singularity, DateTime? bhDate, DateTime? updatedAt}) => BlackHoleIsar(
    id: id ?? this.id,
    isAlumni: isAlumni ?? this.isAlumni,
    agu: agu ?? this.agu,
    aguDate: aguDate ?? this.aguDate,
    singularity: singularity ?? this.singularity,
    bhDate: bhDate ?? this.bhDate,
    updatedAt: updatedAt ?? this.updatedAt,
  );

}

