// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      kind: json['kind'] as String?,
      maxPeople: (json['max_people'] as num?)?.toInt(),
      nbrSubscribers: (json['nbr_subscribers'] as num?)?.toInt(),
      beginAt: json['begin_at'] == null
          ? null
          : DateTime.parse(json['begin_at'] as String),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      campusIds: (json['campus_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      cursusIds: (json['cursus_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      prohibitionOfCancellation:
          (json['prohibition_of_cancellation'] as num?)?.toInt(),
      waitlist: json['waitlist'] == null
          ? null
          : Waitlist.fromJson(json['waitlist'] as Map<String, dynamic>),
      themes: (json['themes'] as List<dynamic>?)
          ?.map((e) => Theme.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'kind': instance.kind,
      'max_people': instance.maxPeople,
      'nbr_subscribers': instance.nbrSubscribers,
      'begin_at': instance.beginAt?.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
      'campus_ids': instance.campusIds,
      'cursus_ids': instance.cursusIds,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'prohibition_of_cancellation': instance.prohibitionOfCancellation,
      'waitlist': instance.waitlist,
      'themes': instance.themes,
    };

_$ThemeImpl _$$ThemeImplFromJson(Map<String, dynamic> json) => _$ThemeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ThemeImplToJson(_$ThemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updated_at?.toIso8601String(),
    };

_$WaitlistImpl _$$WaitlistImplFromJson(Map<String, dynamic> json) =>
    _$WaitlistImpl(
      id: (json['id'] as num?)?.toInt(),
      waitlistableId: (json['waitlistable_id'] as num?)?.toInt(),
      waitlistableType: json['waitlistable_type'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$WaitlistImplToJson(_$WaitlistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'waitlistable_id': instance.waitlistableId,
      'waitlistable_type': instance.waitlistableType,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
