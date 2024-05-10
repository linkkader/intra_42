import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:intra_42/core/extensions/string_ext.dart';
part 'logtime.freezed.dart';


String logTimeToJson(Map<String, String> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v)));

Map<DateTime, LogTime> logTimeFromJson(Map<String, String> map) => map.map((key, value) {
  var split = value.split(':');
  var day = DateTime.parse(key);
  var dur = Duration(hours: split[0].toInt(), minutes: split[1].toInt(), seconds: split[2].substringBefore('.').toInt());
  var e = LogTime(duration: dur, day: day);
  return MapEntry(day, e);
});

@freezed
class LogTime with _$LogTime{
  const factory LogTime({
    required Duration duration,
    required DateTime day,
  }) = _LogTime;
}