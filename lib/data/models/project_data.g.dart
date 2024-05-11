// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDataImpl _$$ProjectDataImplFromJson(Map<String, dynamic> json) =>
    _$ProjectDataImpl(
      state: json['state'] as String?,
      finalMark: (json['final_mark'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      by: (json['by'] as List<dynamic>?)
          ?.map((e) => By.fromJson(e as Map<String, dynamic>))
          .toList(),
      projectId: (json['project_id'] as num?)?.toInt(),
      difficulty: (json['difficulty'] as num?)?.toInt(),
      duration: json['duration'] as String?,
      rules: json['rules'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$ProjectDataImplToJson(_$ProjectDataImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'final_mark': instance.finalMark,
      'id': instance.id,
      'kind': instance.kind,
      'name': instance.name,
      'x': instance.x,
      'y': instance.y,
      'by': instance.by,
      'project_id': instance.projectId,
      'difficulty': instance.difficulty,
      'duration': instance.duration,
      'rules': instance.rules,
      'description': instance.description,
      'slug': instance.slug,
    };

_$ByImpl _$$ByImplFromJson(Map<String, dynamic> json) => _$ByImpl(
      parentId: (json['parent_id'] as num?)?.toInt(),
      points: (json['points'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$ByImplToJson(_$ByImpl instance) => <String, dynamic>{
      'parent_id': instance.parentId,
      'points': instance.points,
    };
