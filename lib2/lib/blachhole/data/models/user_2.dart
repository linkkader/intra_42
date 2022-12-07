// Created by linkkader on 28/11/2022

// To parse this JSON data, do
//
//     final user2 = user2FromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_2.freezed.dart';
part 'user_2.g.dart';

@freezed
abstract class User2 with _$User2 {
  const factory User2({
    required String name,
    required String login,
    required String img,
    required DateTime bhDate,
    required String campusName,
  }) = _User2;

  factory User2.fromJson(Map<String, dynamic> json) => _$User2FromJson(json);
}
