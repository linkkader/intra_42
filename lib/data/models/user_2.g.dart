// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$User2Impl _$$User2ImplFromJson(Map<String, dynamic> json) => _$User2Impl(
      name: json['name'] as String,
      login: json['login'] as String,
      img: json['img'] as String,
      bhDate: DateTime.parse(json['bhDate'] as String),
      campusName: json['campusName'] as String,
    );

Map<String, dynamic> _$$User2ImplToJson(_$User2Impl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'login': instance.login,
      'img': instance.img,
      'bhDate': instance.bhDate.toIso8601String(),
      'campusName': instance.campusName,
    };
