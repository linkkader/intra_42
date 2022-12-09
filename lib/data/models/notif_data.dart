

// To parse this JSON data, do
//
//     final team = teamFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notif_data.freezed.dart';
part 'notif_data.g.dart';

@freezed
abstract class NotifData with _$NotifData {
  const factory NotifData({
    int? id,
    String? author,
    String? title,
    String? text,
    String? kind,
    dynamic image,
    DateTime? expireAt,
    String? link,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
    dynamic concern,
    @JsonKey(name: 'notification_id')
    int? notificationId,
    @JsonKey(name: 'user_id')
    int? userId,
    bool? read,
  }) = _NotifData;

  factory NotifData.fromJson(Map<String, dynamic> json) => _$NotifDataFromJson(json);
}