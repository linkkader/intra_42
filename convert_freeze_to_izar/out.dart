
import 'package:isar/isar.dart';

@collection
class NotifDataIsar {
  final int? id;
  final String? author;
  final String? title;
  final String? text;
  final String? kind;
  @ignore
  final dynamic? image;
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

