// Created by linkkader on 17/11/2022


import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'black_hole_data.freezed.dart';
part 'black_hole_data.g.dart';

@freezed
abstract class BlackHoleData with _$BlackHoleData {
  const factory BlackHoleData({
    @JsonKey(name: 'is_alumni')
    bool? isAlumni,
    dynamic agu,
    @JsonKey(name: 'agu_date')
    dynamic aguDate,
    @JsonKey(name: 'singularity')
    int? singularity,
    @JsonKey(name: 'bh_date')
    String? bhDate,
  }) = _BlackHoleData;

  factory BlackHoleData.fromJson(Map<String, dynamic> json) => _$BlackHoleDataFromJson(json);
}
