
import 'package:isar/isar.dart';
import '../models/token_body.dart';

part 'token_body_isar.g.dart';

@collection
class TokenBodyIsar {
  final Id id;
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final String? refreshToken;
  final String? scope;
  final int? createdAt;

  const TokenBodyIsar({this.accessToken, this.tokenType, this.expiresIn, this.refreshToken, this.scope, this.createdAt, required this.id});

  factory TokenBodyIsar.fromFreezed(TokenBody? objet, int current) => TokenBodyIsar (
    id: current,
    accessToken: objet?.accessToken,
    tokenType: objet?.tokenType,
    expiresIn: objet?.expiresIn,
    refreshToken: objet?.refreshToken,
    scope: objet?.scope,
    createdAt: objet?.createdAt,
  );

  TokenBody toFreezed() => TokenBody(
    accessToken: accessToken,
    tokenType: tokenType,
    expiresIn: expiresIn,
    refreshToken: refreshToken,
    scope: scope,
    createdAt: createdAt,
  );

}

