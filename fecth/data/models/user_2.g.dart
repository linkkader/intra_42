// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User2 _$$_User2FromJson(Map<String, dynamic> json) => _$_User2(
      name: json['name'] as String,
      login: json['login'] as String,
      img: json['img'] as String,
      bhDate: DateTime.parse(json['bhDate'] as String),
      campusName: json['campusName'] as String,
    );

Map<String, dynamic> _$$_User2ToJson(_$_User2 instance) => <String, dynamic>{
      'name': instance.name,
      'login': instance.login,
      'img': instance.img,
      'bhDate': instance.bhDate.toIso8601String(),
      'campusName': instance.campusName,
    };
