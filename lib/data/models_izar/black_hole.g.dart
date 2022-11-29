// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'black_hole.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetBlackHoleIsarCollection on Isar {
  IsarCollection<BlackHoleIsar> get blackHoleIsars => this.collection();
}

const BlackHoleIsarSchema = CollectionSchema(
  name: r'BlackHoleIsar',
  id: -4438839638707654768,
  properties: {
    r'bhDate': PropertySchema(
      id: 0,
      name: r'bhDate',
      type: IsarType.dateTime,
    ),
    r'isAlumni': PropertySchema(
      id: 1,
      name: r'isAlumni',
      type: IsarType.bool,
    ),
    r'singularity': PropertySchema(
      id: 2,
      name: r'singularity',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 3,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _blackHoleIsarEstimateSize,
  serialize: _blackHoleIsarSerialize,
  deserialize: _blackHoleIsarDeserialize,
  deserializeProp: _blackHoleIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _blackHoleIsarGetId,
  getLinks: _blackHoleIsarGetLinks,
  attach: _blackHoleIsarAttach,
  version: '3.0.5',
);

int _blackHoleIsarEstimateSize(
  BlackHoleIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _blackHoleIsarSerialize(
  BlackHoleIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.bhDate);
  writer.writeBool(offsets[1], object.isAlumni);
  writer.writeLong(offsets[2], object.singularity);
  writer.writeDateTime(offsets[3], object.updatedAt);
}

BlackHoleIsar _blackHoleIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BlackHoleIsar(
    bhDate: reader.readDateTimeOrNull(offsets[0]),
    id: id,
    isAlumni: reader.readBoolOrNull(offsets[1]),
    singularity: reader.readLongOrNull(offsets[2]),
    updatedAt: reader.readDateTimeOrNull(offsets[3]),
  );
  return object;
}

P _blackHoleIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _blackHoleIsarGetId(BlackHoleIsar object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _blackHoleIsarGetLinks(BlackHoleIsar object) {
  return [];
}

void _blackHoleIsarAttach(
    IsarCollection<dynamic> col, Id id, BlackHoleIsar object) {}

extension BlackHoleIsarQueryWhereSort
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QWhere> {
  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BlackHoleIsarQueryWhere
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QWhereClause> {
  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterWhereClause> idBetween(
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

extension BlackHoleIsarQueryFilter
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QFilterCondition> {
  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      bhDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bhDate',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      bhDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bhDate',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      bhDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bhDate',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      bhDateGreaterThan(
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

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      bhDateLessThan(
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

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      bhDateBetween(
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

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
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

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      isAlumniIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAlumni',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      isAlumniIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAlumni',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      isAlumniEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAlumni',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      singularityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'singularity',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      singularityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'singularity',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      singularityEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'singularity',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      singularityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'singularity',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      singularityLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'singularity',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      singularityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'singularity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BlackHoleIsarQueryObject
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QFilterCondition> {}

extension BlackHoleIsarQueryLinks
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QFilterCondition> {}

extension BlackHoleIsarQuerySortBy
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QSortBy> {
  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> sortByBhDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> sortByBhDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.desc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> sortByIsAlumni() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlumni', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy>
      sortByIsAlumniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlumni', Sort.desc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> sortBySingularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'singularity', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy>
      sortBySingularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'singularity', Sort.desc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension BlackHoleIsarQuerySortThenBy
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QSortThenBy> {
  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> thenByBhDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> thenByBhDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bhDate', Sort.desc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> thenByIsAlumni() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlumni', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy>
      thenByIsAlumniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlumni', Sort.desc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> thenBySingularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'singularity', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy>
      thenBySingularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'singularity', Sort.desc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension BlackHoleIsarQueryWhereDistinct
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QDistinct> {
  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QDistinct> distinctByBhDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bhDate');
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QDistinct> distinctByIsAlumni() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAlumni');
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QDistinct>
      distinctBySingularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'singularity');
    });
  }

  QueryBuilder<BlackHoleIsar, BlackHoleIsar, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension BlackHoleIsarQueryProperty
    on QueryBuilder<BlackHoleIsar, BlackHoleIsar, QQueryProperty> {
  QueryBuilder<BlackHoleIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BlackHoleIsar, DateTime?, QQueryOperations> bhDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bhDate');
    });
  }

  QueryBuilder<BlackHoleIsar, bool?, QQueryOperations> isAlumniProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAlumni');
    });
  }

  QueryBuilder<BlackHoleIsar, int?, QQueryOperations> singularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'singularity');
    });
  }

  QueryBuilder<BlackHoleIsar, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
