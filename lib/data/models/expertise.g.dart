// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expertise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Expertise _$$_ExpertiseFromJson(Map<String, dynamic> json) => _$_Expertise(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      url: json['url'] as String?,
      kind: json['kind'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      expertisesUsersUrl: json['expertises_users_url'] as String?,
    );

Map<String, dynamic> _$$_ExpertiseToJson(_$_Expertise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'url': instance.url,
      'kind': instance.kind,
      'created_at': instance.createdAt?.toIso8601String(),
      'expertises_users_url': instance.expertisesUsersUrl,
    };
