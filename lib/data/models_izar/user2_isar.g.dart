// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user2_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetUser2IsarCollection on Isar {
  IsarCollection<User2Isar> get user2Isars => this.collection();
}

const User2IsarSchema = CollectionSchema(
  name: r'User2Isar',
  id: 6066169526467193074,
  properties: {
    r'bhDate': PropertySchema(
      id: 0,
      name: r'bhDate',
      type: IsarType.dateTime,
    ),
    r'campusName': PropertySchema(
      id: 1,
      name: r'campusName',
      type: IsarType.string,
    ),
    r'img': PropertySchema(
      id: 2,
      name: r'img',
      type: IsarType.string,
    ),
    r'login': PropertySchema(
      id: 3,
      name: r'login',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _user2IsarEstimateSize,
  serialize: _user2IsarSerialize,
  deserialize: _user2IsarDeserialize,
  deserializeProp: _user2IsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'login': IndexSchema(
      id: 5058649952372311932,
      name: r'login',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'login',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _user2IsarGetId,
  getLinks: _user2IsarGetLinks,
  attach: _user2IsarAttach,
  version: '3.0.5',
);

int _user2IsarEstimateSize(
  User2Isar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.campusName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.img;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.login;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _user2IsarSerialize(
  User2Isar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.bhDate);
  writer.writeString(offsets[1], object.campusName);
  writer.writeString(offsets[2], object.img);
  writer.writeString(offsets[3], object.login);
  writer.writeString(offsets[4], object.name);
}

User2Isar _user2IsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = User2Isar(
    bhDate: reader.readDateTimeOrNull(offsets[0]),
    campusName: reader.readStringOrNull(offsets[1]),
    img: reader.readStringOrNull(offsets[2]),
    login: reader.readStringOrNull(offsets[3]),
    name: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _user2IsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _user2IsarGetId(User2Isar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _user2IsarGetLinks(User2Isar object) {
  return [];
}

void _user2IsarAttach(IsarCollection<dynamic> col, Id id, User2Isar object) {}

extension User2IsarByIndex on IsarCollection<User2Isar> {
  Future<User2Isar?> getByLogin(String? login) {
    return getByIndex(r'login', [login]);
  }

  User2Isar? getByLoginSync(String? login) {
    return getByIndexSync(r'login', [login]);
  }

  Future<bool> deleteByLogin(String? login) {
    return deleteByIndex(r'login', [login]);
  }

  bool deleteByLoginSync(String? login) {
    return deleteByIndexSync(r'login', [login]);
  }

  Future<List<User2Isar?>> getAllByLogin(List<String?> loginValues) {
    final values = loginValues.map((e) => [e]).toList();
    return getAllByIndex(r'login', values);
  }

  List<User2Isar?> getAllByLoginSync(List<String?> loginValues) {
    final values = loginValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'login', values);
  }

  Future<int> deleteAllByLogin(List<String?> loginValues) {
    final values = loginValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'login', values);
  }

  int deleteAllByLoginSync(List<String?> loginValues) {
    final values = loginValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'login', values);
  }

  Future<Id> putByLogin(User2Isar object) {
    return putByIndex(r'login', object);
  }

  Id putByLoginSync(User2Isar object, {bool saveLinks = true}) {
    return putByIndexSync(r'login', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByLogin(List<User2Isar> objects) {
    return putAllByIndex(r'login', objects);
  }

  List<Id> putAllByLoginSync(List<User2Isar> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'login', objects, saveLinks: saveLinks);
  }
}

extension User2IsarQueryWhereSort
    on QueryBuilder<User2Isar, User2Isar, QWhere> {
  QueryBuilder<User2Isar, User2Isar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension User2IsarQueryWhere
    on QueryBuilder<User2Isar, User2Isar, QWhereClause> {
  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> idBetween(
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

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> loginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'login',
        value: [null],
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> loginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'login',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> loginEqualTo(
      String? login) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'login',
        value: [login],
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterWhereClause> loginNotEqualTo(
      String? login) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'login',
              lower: [],
              upper: [login],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'login',
              lower: [login],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'login',
              lower: [login],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'login',
              lower: [],
              upper: [login],
              includeUpper: false,
            ));
      }
    });
  }
}

extension User2IsarQueryFilter
    on QueryBuilder<User2Isar, User2Isar, QFilterCondition> {
  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> bhDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bhDate',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> bhDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bhDate',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> bhDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bhDate',
        value: value,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> bhDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bhDate',
        value: value,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> bhDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bhDate',
        value: value,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> bhDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bhDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> campusNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'campusName',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition>
      campusNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'campusName',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> campusNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'campusName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition>
      campusNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'campusName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> campusNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'campusName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> campusNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'campusName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition>
      campusNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'campusName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> campusNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'campusName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> campusNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'campusName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> campusNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'campusName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition>
      campusNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'campusName',
        value: '',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition>
      campusNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'campusName',
        value: '',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'img',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'img',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'img',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'img',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'img',
        value: '',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> imgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'img',
        value: '',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'login',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'login',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> loginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension User2IsarQueryObject
    on QueryBuilder<User2Isar, User2Isar, QFilterCondition> {}

extension User2IsarQueryLinks
    on QueryBuilder<User2Isar, User2Isar, QFilterCondition> {}

extension User2IsarQuerySortBy on QueryBuilder<User2Isar, User2Isar, QSortBy> {
  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByBhDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByBhDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByCampusName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campusName', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByCampusNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campusName', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByImg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByImgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension User2IsarQuerySortThenBy
    on QueryBuilder<User2Isar, User2Isar, QSortThenBy> {
  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByBhDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByBhDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByCampusName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campusName', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByCampusNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campusName', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByImg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByImgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension User2IsarQueryWhereDistinct
    on QueryBuilder<User2Isar, User2Isar, QDistinct> {
  QueryBuilder<User2Isar, User2Isar, QDistinct> distinctByBhDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bhDate');
    });
  }

  QueryBuilder<User2Isar, User2Isar, QDistinct> distinctByCampusName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'campusName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QDistinct> distinctByImg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'img', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QDistinct> distinctByLogin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'login', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User2Isar, User2Isar, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension User2IsarQueryProperty
    on QueryBuilder<User2Isar, User2Isar, QQueryProperty> {
  QueryBuilder<User2Isar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<User2Isar, DateTime?, QQueryOperations> bhDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bhDate');
    });
  }

  QueryBuilder<User2Isar, String?, QQueryOperations> campusNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'campusName');
    });
  }

  QueryBuilder<User2Isar, String?, QQueryOperations> imgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'img');
    });
  }

  QueryBuilder<User2Isar, String?, QQueryOperations> loginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'login');
    });
  }

  QueryBuilder<User2Isar, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
