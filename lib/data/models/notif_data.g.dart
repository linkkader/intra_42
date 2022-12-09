// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notif_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotifData _$$_NotifDataFromJson(Map<String, dynamic> json) => _$_NotifData(
      id: json['id'] as int?,
      author: json['author'] as String?,
      title: json['title'] as String?,
      text: json['text'] as String?,
      kind: json['kind'] as String?,
      image: json['image'],
      expireAt: json['expireAt'] == null
          ? null
          : DateTime.parse(json['expireAt'] as String),
      link: json['link'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      concern: json['concern'],
      notificationId: json['notification_id'] as int?,
      userId: json['user_id'] as int?,
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$$_NotifDataToJson(_$_NotifData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'title': instance.title,
      'text': instance.text,
      'kind': instance.kind,
      'image': instance.image,
      'expireAt': instance.expireAt?.toIso8601String(),
      'link': instance.link,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'concern': instance.concern,
      'notification_id': instance.notificationId,
      'user_id': instance.userId,
      'read': instance.read,
    };
