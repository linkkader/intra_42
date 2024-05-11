// Created by linkkader on 13/11/2022

// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
abstract class Event with _$Event {
  const factory Event({
    int? id,
    String? name,
    String? description,
    String? location,
    String? kind,
    @JsonKey(name: 'max_people')
    int? maxPeople,
    @JsonKey(name: 'nbr_subscribers')
    int? nbrSubscribers,
    @JsonKey(name: 'begin_at')
    DateTime? beginAt,
    @JsonKey(name: 'end_at')
    DateTime? endAt,
    @JsonKey(name: 'campus_ids')
    List<int>? campusIds,
    @JsonKey(name: 'cursus_ids')
    List<int>? cursusIds,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
    @JsonKey(name: 'prohibition_of_cancellation')
    int? prohibitionOfCancellation,
    Waitlist? waitlist,
    List<Theme>? themes,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
abstract class Theme with _$Theme {
  const factory Theme({
    int? id,
    String? name,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updatedAt')
    DateTime? updated_at,
  }) = _Theme;

  factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);
}

@freezed
abstract class Waitlist with _$Waitlist {
  const factory Waitlist({
    int? id,
    @JsonKey(name: 'waitlistable_id')
    int? waitlistableId,
    @JsonKey(name: 'waitlistable_type')
    String? waitlistableType,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _Waitlist;

  factory Waitlist.fromJson(Map<String, dynamic> json) => _$WaitlistFromJson(json);
}
