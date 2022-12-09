// Created by linkkader on 6/12/2022

import 'package:isar/isar.dart';

import '../models/notif_data.dart';

part 'notification_isar.g.dart';

enum NotificationType {
  corrector,
  corrected,
  evaluationPointSales,
  newEvent,
  eventUpdated,
  nullType
}

@Collection()
class NotificationIsar{
  final Id? id;
  final String? data;
  @Index()
  final int? scaleTeamId;
  final bool? read;
  final DateTime? lastNotify;
  final NotifDataIsar? notifData;
  @enumerated
  final NotificationType type;
  const NotificationIsar({this.data, this.id = Isar.autoIncrement, this.scaleTeamId, this.lastNotify, this.type = NotificationType.nullType, this.notifData, this.read});

  NotificationIsar copyWith({Id? id, String? data, int? scaleTeamId, DateTime? lastNotify, NotificationType? type, NotifDataIsar? notifData, bool? read}) => NotificationIsar(
    id: id ?? this.id,
    data: data ?? this.data,
    scaleTeamId: scaleTeamId ?? this.scaleTeamId,
    lastNotify: lastNotify ?? this.lastNotify,
    type: type ?? this.type,
    notifData: notifData ?? this.notifData,
    read: read ?? this.read
  );
}


@Embedded()
class NotifDataIsar {
  final int? id;
  final String? author;
  final String? title;
  final String? text;
  final String? kind;
  @ignore
  final dynamic image;
  final DateTime? expireAt;
  final String? link;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @ignore
  final dynamic concern;
  final int? notificationId;
  final int? userId;
  final bool? read;

  const NotifDataIsar({this.id, this.author, this.title, this.text, this.kind, this.image, this.expireAt, this.link, this.createdAt, this.updatedAt, this.concern, this.notificationId, this.userId, this.read, });

  factory NotifDataIsar.fromFreezed(NotifData? objet) => NotifDataIsar (
    id: objet?.id,
    author: objet?.author,
    title: objet?.title,
    text: objet?.text,
    kind: objet?.kind,
    expireAt: objet?.expireAt,
    link: objet?.link,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
    notificationId: objet?.notificationId,
    userId: objet?.userId,
    read: objet?.read,
  );

  NotifData toFreezed() => NotifData(
    id: id,
    author: author,
    title: title,
    text: text,
    kind: kind,
    image: image,
    expireAt: expireAt,
    link: link,
    createdAt: createdAt,
    updatedAt: updatedAt,
    concern: concern,
    notificationId: notificationId,
    userId: userId,
    read: read,
  );

}

