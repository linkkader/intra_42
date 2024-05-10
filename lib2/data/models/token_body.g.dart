// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenBodyImpl _$$TokenBodyImplFromJson(Map<String, dynamic> json) =>
    _$TokenBodyImpl(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: (json['expires_in'] as num?)?.toInt(),
      refreshToken: json['refresh_token'] as String?,
      scope: json['scope'] as String?,
      createdAt: (json['created_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TokenBodyImplToJson(_$TokenBodyImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'scope': instance.scope,
      'created_at': instance.createdAt,
    };
