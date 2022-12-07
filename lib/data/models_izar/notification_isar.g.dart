// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetNotificationIsarCollection on Isar {
  IsarCollection<NotificationIsar> get notificationIsars => this.collection();
}

const NotificationIsarSchema = CollectionSchema(
  name: r'NotificationIsar',
  id: -398646555982393860,
  properties: {
    r'data': PropertySchema(
      id: 0,
      name: r'data',
      type: IsarType.string,
    ),
    r'lastNotify': PropertySchema(
      id: 1,
      name: r'lastNotify',
      type: IsarType.dateTime,
    ),
    r'scaleTeamId': PropertySchema(
      id: 2,
      name: r'scaleTeamId',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 3,
      name: r'type',
      type: IsarType.byte,
      enumMap: _NotificationIsartypeEnumValueMap,
    )
  },
  estimateSize: _notificationIsarEstimateSize,
  serialize: _notificationIsarSerialize,
  deserialize: _notificationIsarDeserialize,
  deserializeProp: _notificationIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'scaleTeamId': IndexSchema(
      id: 8191298470120953533,
      name: r'scaleTeamId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'scaleTeamId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _notificationIsarGetId,
  getLinks: _notificationIsarGetLinks,
  attach: _notificationIsarAttach,
  version: '3.0.5',
);

int _notificationIsarEstimateSize(
  NotificationIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.data;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _notificationIsarSerialize(
  NotificationIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.data);
  writer.writeDateTime(offsets[1], object.lastNotify);
  writer.writeLong(offsets[2], object.scaleTeamId);
  writer.writeByte(offsets[3], object.type.index);
}

NotificationIsar _notificationIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NotificationIsar(
    data: reader.readStringOrNull(offsets[0]),
    id: id,
    lastNotify: reader.readDateTimeOrNull(offsets[1]),
    scaleTeamId: reader.readLongOrNull(offsets[2]),
    type:
        _NotificationIsartypeValueEnumMap[reader.readByteOrNull(offsets[3])] ??
            NotificationType.nullType,
  );
  return object;
}

P _notificationIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (_NotificationIsartypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          NotificationType.nullType) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _NotificationIsartypeEnumValueMap = {
  'corrector': 0,
  'corrected': 1,
  'nullType': 2,
};
const _NotificationIsartypeValueEnumMap = {
  0: NotificationType.corrector,
  1: NotificationType.corrected,
  2: NotificationType.nullType,
};

Id _notificationIsarGetId(NotificationIsar object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _notificationIsarGetLinks(NotificationIsar object) {
  return [];
}

void _notificationIsarAttach(
    IsarCollection<dynamic> col, Id id, NotificationIsar object) {}

extension NotificationIsarQueryWhereSort
    on QueryBuilder<NotificationIsar, NotificationIsar, QWhere> {
  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhere>
      anyScaleTeamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'scaleTeamId'),
      );
    });
  }
}

extension NotificationIsarQueryWhere
    on QueryBuilder<NotificationIsar, NotificationIsar, QWhereClause> {
  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause> idBetween(
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

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      scaleTeamIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'scaleTeamId',
        value: [null],
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      scaleTeamIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'scaleTeamId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      scaleTeamIdEqualTo(int? scaleTeamId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'scaleTeamId',
        value: [scaleTeamId],
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      scaleTeamIdNotEqualTo(int? scaleTeamId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'scaleTeamId',
              lower: [],
              upper: [scaleTeamId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'scaleTeamId',
              lower: [scaleTeamId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'scaleTeamId',
              lower: [scaleTeamId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'scaleTeamId',
              lower: [],
              upper: [scaleTeamId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      scaleTeamIdGreaterThan(
    int? scaleTeamId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'scaleTeamId',
        lower: [scaleTeamId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      scaleTeamIdLessThan(
    int? scaleTeamId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'scaleTeamId',
        lower: [],
        upper: [scaleTeamId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterWhereClause>
      scaleTeamIdBetween(
    int? lowerScaleTeamId,
    int? upperScaleTeamId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'scaleTeamId',
        lower: [lowerScaleTeamId],
        includeLower: includeLower,
        upper: [upperScaleTeamId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NotificationIsarQueryFilter
    on QueryBuilder<NotificationIsar, NotificationIsar, QFilterCondition> {
  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'data',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'data',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'data',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'data',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
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

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      idLessThan(
    Id? value, {
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

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      lastNotifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastNotify',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      lastNotifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastNotify',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      lastNotifyEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastNotify',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      lastNotifyGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastNotify',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      lastNotifyLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastNotify',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      lastNotifyBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastNotify',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      scaleTeamIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scaleTeamId',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      scaleTeamIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scaleTeamId',
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      scaleTeamIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scaleTeamId',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      scaleTeamIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scaleTeamId',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      scaleTeamIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scaleTeamId',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      scaleTeamIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scaleTeamId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      typeEqualTo(NotificationType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      typeGreaterThan(
    NotificationType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      typeLessThan(
    NotificationType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterFilterCondition>
      typeBetween(
    NotificationType lower,
    NotificationType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NotificationIsarQueryObject
    on QueryBuilder<NotificationIsar, NotificationIsar, QFilterCondition> {}

extension NotificationIsarQueryLinks
    on QueryBuilder<NotificationIsar, NotificationIsar, QFilterCondition> {}

extension NotificationIsarQuerySortBy
    on QueryBuilder<NotificationIsar, NotificationIsar, QSortBy> {
  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy> sortByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      sortByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      sortByLastNotify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNotify', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      sortByLastNotifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNotify', Sort.desc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      sortByScaleTeamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleTeamId', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      sortByScaleTeamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleTeamId', Sort.desc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension NotificationIsarQuerySortThenBy
    on QueryBuilder<NotificationIsar, NotificationIsar, QSortThenBy> {
  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy> thenByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      thenByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      thenByLastNotify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNotify', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      thenByLastNotifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNotify', Sort.desc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      thenByScaleTeamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleTeamId', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      thenByScaleTeamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleTeamId', Sort.desc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension NotificationIsarQueryWhereDistinct
    on QueryBuilder<NotificationIsar, NotificationIsar, QDistinct> {
  QueryBuilder<NotificationIsar, NotificationIsar, QDistinct> distinctByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'data', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QDistinct>
      distinctByLastNotify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastNotify');
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QDistinct>
      distinctByScaleTeamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scaleTeamId');
    });
  }

  QueryBuilder<NotificationIsar, NotificationIsar, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension NotificationIsarQueryProperty
    on QueryBuilder<NotificationIsar, NotificationIsar, QQueryProperty> {
  QueryBuilder<NotificationIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NotificationIsar, String?, QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }

  QueryBuilder<NotificationIsar, DateTime?, QQueryOperations>
      lastNotifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastNotify');
    });
  }

  QueryBuilder<NotificationIsar, int?, QQueryOperations> scaleTeamIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scaleTeamId');
    });
  }

  QueryBuilder<NotificationIsar, NotificationType, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
