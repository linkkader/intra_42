// Created by linkkader on 11/9/22

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/params/hive_constants.dart';
part 'token_body.freezed.dart';
part 'token_body.g.dart';

@freezed
abstract class TokenBody with _$TokenBody {
  const factory TokenBody({
    @JsonKey(name: 'access_token')
    String? accessToken,
    @JsonKey(name: 'token_type')
    String? tokenType,
    @JsonKey(name: 'expires_in')
    int? expiresIn,
    @JsonKey(name: 'refresh_token')
    String? refreshToken,
    String? scope,
    @JsonKey(name: 'created_at')
    int? createdAt,
  }) = _TokenBody;

  factory TokenBody.fromJson(Map<String, dynamic> json) => _$TokenBodyFromJson(json);
}