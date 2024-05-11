// Created by linkkader on 14/11/2022

// To parse this JSON data, do
//
//     final expertise = expertiseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'expertise.freezed.dart';
part 'expertise.g.dart';

@freezed
abstract class Expertise with _$Expertise {
  const factory Expertise({
    int? id,
    String? name,
    String? slug,
    String? url,
    String? kind,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'expertises_users_url')
    String? expertisesUsersUrl,
  }) = _Expertise;

  factory Expertise.fromJson(Map<String, dynamic> json) => _$ExpertiseFromJson(json);
}
