// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClusterItemImpl _$$ClusterItemImplFromJson(Map<String, dynamic> json) =>
    _$ClusterItemImpl(
      host: json['host'] as String?,
      beginAt: json['begin_at'] as String?,
      endAt: json['end_at'] as String?,
      login: json['login'] as String?,
      cdnUri: json['cdn_uri'] as String?,
      image: json['image'] as String?,
      campusId: (json['campus_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClusterItemImplToJson(_$ClusterItemImpl instance) =>
    <String, dynamic>{
      'host': instance.host,
      'begin_at': instance.beginAt,
      'end_at': instance.endAt,
      'login': instance.login,
      'cdn_uri': instance.cdnUri,
      'image': instance.image,
      'campus_id': instance.campusId,
    };
