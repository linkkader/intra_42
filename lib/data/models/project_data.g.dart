// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectData _$$_ProjectDataFromJson(Map<String, dynamic> json) =>
    _$_ProjectData(
      state: json['state'] as String?,
      finalMark: json['final_mark'] as int?,
      id: json['id'] as int?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      by: (json['by'] as List<dynamic>?)
          ?.map((e) => By.fromJson(e as Map<String, dynamic>))
          .toList(),
      projectId: json['project_id'] as int?,
      difficulty: json['difficulty'] as int?,
      duration: json['duration'] as String?,
      rules: json['rules'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$_ProjectDataToJson(_$_ProjectData instance) =>
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

_$_By _$$_ByFromJson(Map<String, dynamic> json) => _$_By(
      parentId: json['parent_id'] as int?,
      points: (json['points'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$_ByToJson(_$_By instance) => <String, dynamic>{
      'parent_id': instance.parentId,
      'points': instance.points,
    };
