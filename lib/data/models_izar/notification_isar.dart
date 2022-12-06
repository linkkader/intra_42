// Created by linkkader on 6/12/2022

import 'package:isar/isar.dart';

part 'notification_isar.g.dart';

enum NotificationType {
  corrector,
  corrected,
  nullType
}

@Collection()
class NotificationIsar{
  final Id? id;
  final String? data;
  final int? scaleTeamId;
  final DateTime? lastNotify;
  @enumerated
  final NotificationType type;
  const NotificationIsar({this.data, this.id = Isar.autoIncrement, this.scaleTeamId, this.lastNotify, this.type = NotificationType.nullType});

  NotificationIsar copyWith({Id? id, String? data, int? scaleTeamId, DateTime? lastNotify, NotificationType? type}) => NotificationIsar(
    id: id ?? this.id,
    data: data ?? this.data,
    scaleTeamId: scaleTeamId ?? this.scaleTeamId,
    lastNotify: lastNotify ?? this.lastNotify,
    type: type ?? this.type,
  );
}