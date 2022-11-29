// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_body_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTokenBodyIsarCollection on Isar {
  IsarCollection<TokenBodyIsar> get tokenBodyIsars => this.collection();
}

const TokenBodyIsarSchema = CollectionSchema(
  name: r'TokenBodyIsar',
  id: 7713283983871033107,
  properties: {
    r'accessToken': PropertySchema(
      id: 0,
      name: r'accessToken',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.long,
    ),
    r'expiresIn': PropertySchema(
      id: 2,
      name: r'expiresIn',
      type: IsarType.long,
    ),
    r'refreshToken': PropertySchema(
      id: 3,
      name: r'refreshToken',
      type: IsarType.string,
    ),
    r'scope': PropertySchema(
      id: 4,
      name: r'scope',
      type: IsarType.string,
    ),
    r'tokenType': PropertySchema(
      id: 5,
      name: r'tokenType',
      type: IsarType.string,
    )
  },
  estimateSize: _tokenBodyIsarEstimateSize,
  serialize: _tokenBodyIsarSerialize,
  deserialize: _tokenBodyIsarDeserialize,
  deserializeProp: _tokenBodyIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tokenBodyIsarGetId,
  getLinks: _tokenBodyIsarGetLinks,
  attach: _tokenBodyIsarAttach,
  version: '3.0.5',
);

int _tokenBodyIsarEstimateSize(
  TokenBodyIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.accessToken;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.refreshToken;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.scope;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tokenType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tokenBodyIsarSerialize(
  TokenBodyIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accessToken);
  writer.writeLong(offsets[1], object.createdAt);
  writer.writeLong(offsets[2], object.expiresIn);
  writer.writeString(offsets[3], object.refreshToken);
  writer.writeString(offsets[4], object.scope);
  writer.writeString(offsets[5], object.tokenType);
}

TokenBodyIsar _tokenBodyIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TokenBodyIsar(
    accessToken: reader.readStringOrNull(offsets[0]),
    createdAt: reader.readLongOrNull(offsets[1]),
    expiresIn: reader.readLongOrNull(offsets[2]),
    id: id,
    refreshToken: reader.readStringOrNull(offsets[3]),
    scope: reader.readStringOrNull(offsets[4]),
    tokenType: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _tokenBodyIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tokenBodyIsarGetId(TokenBodyIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tokenBodyIsarGetLinks(TokenBodyIsar object) {
  return [];
}

void _tokenBodyIsarAttach(
    IsarCollection<dynamic> col, Id id, TokenBodyIsar object) {}

extension TokenBodyIsarQueryWhereSort
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QWhere> {
  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TokenBodyIsarQueryWhere
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QWhereClause> {
  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TokenBodyIsarQueryFilter
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QFilterCondition> {
  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accessToken',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accessToken',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accessToken',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accessToken',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accessToken',
        value: '',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      accessTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accessToken',
        value: '',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      createdAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      createdAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      createdAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      createdAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      expiresInIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expiresIn',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      expiresInIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expiresIn',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      expiresInEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiresIn',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      expiresInGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expiresIn',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      expiresInLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expiresIn',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      expiresInBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expiresIn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refreshToken',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refreshToken',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refreshToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refreshToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refreshToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refreshToken',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'refreshToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'refreshToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refreshToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refreshToken',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refreshToken',
        value: '',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      refreshTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refreshToken',
        value: '',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scope',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scope',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scope',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scope',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scope',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scope',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'scope',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'scope',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'scope',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'scope',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scope',
        value: '',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      scopeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'scope',
        value: '',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tokenType',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tokenType',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tokenType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tokenType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tokenType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tokenType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tokenType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tokenType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tokenType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tokenType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tokenType',
        value: '',
      ));
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterFilterCondition>
      tokenTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tokenType',
        value: '',
      ));
    });
  }
}

extension TokenBodyIsarQueryObject
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QFilterCondition> {}

extension TokenBodyIsarQueryLinks
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QFilterCondition> {}

extension TokenBodyIsarQuerySortBy
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QSortBy> {
  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> sortByAccessToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      sortByAccessTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> sortByExpiresIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresIn', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      sortByExpiresInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresIn', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      sortByRefreshToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      sortByRefreshTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> sortByScope() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scope', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> sortByScopeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scope', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> sortByTokenType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenType', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      sortByTokenTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenType', Sort.desc);
    });
  }
}

extension TokenBodyIsarQuerySortThenBy
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QSortThenBy> {
  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenByAccessToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      thenByAccessTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenByExpiresIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresIn', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      thenByExpiresInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresIn', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      thenByRefreshToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      thenByRefreshTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refreshToken', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenByScope() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scope', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenByScopeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scope', Sort.desc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy> thenByTokenType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenType', Sort.asc);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QAfterSortBy>
      thenByTokenTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tokenType', Sort.desc);
    });
  }
}

extension TokenBodyIsarQueryWhereDistinct
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QDistinct> {
  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QDistinct> distinctByAccessToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accessToken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QDistinct> distinctByExpiresIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expiresIn');
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QDistinct> distinctByRefreshToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refreshToken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QDistinct> distinctByScope(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scope', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TokenBodyIsar, TokenBodyIsar, QDistinct> distinctByTokenType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tokenType', caseSensitive: caseSensitive);
    });
  }
}

extension TokenBodyIsarQueryProperty
    on QueryBuilder<TokenBodyIsar, TokenBodyIsar, QQueryProperty> {
  QueryBuilder<TokenBodyIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TokenBodyIsar, String?, QQueryOperations> accessTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accessToken');
    });
  }

  QueryBuilder<TokenBodyIsar, int?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<TokenBodyIsar, int?, QQueryOperations> expiresInProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expiresIn');
    });
  }

  QueryBuilder<TokenBodyIsar, String?, QQueryOperations>
      refreshTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refreshToken');
    });
  }

  QueryBuilder<TokenBodyIsar, String?, QQueryOperations> scopeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scope');
    });
  }

  QueryBuilder<TokenBodyIsar, String?, QQueryOperations> tokenTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tokenType');
    });
  }
}
