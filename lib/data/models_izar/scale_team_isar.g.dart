// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scale_team_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetScaleTeamIsarCollection on Isar {
  IsarCollection<ScaleTeamIsar> get scaleTeamIsars => this.collection();
}

const ScaleTeamIsarSchema = CollectionSchema(
  name: r'ScaleTeamIsar',
  id: 544591641687339598,
  properties: {
    r'beginAt': PropertySchema(
      id: 0,
      name: r'beginAt',
      type: IsarType.dateTime,
    ),
    r'correcteds': PropertySchema(
      id: 1,
      name: r'correcteds',
      type: IsarType.objectList,
      target: r'CorrectorIsar',
    ),
    r'corrector': PropertySchema(
      id: 2,
      name: r'corrector',
      type: IsarType.object,
      target: r'CorrectorIsar',
    ),
    r'createdAt': PropertySchema(
      id: 3,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'feedbacks': PropertySchema(
      id: 4,
      name: r'feedbacks',
      type: IsarType.objectList,
      target: r'FeedbackIsar',
    ),
    r'flag': PropertySchema(
      id: 5,
      name: r'flag',
      type: IsarType.object,
      target: r'FlagIsar',
    ),
    r'scale': PropertySchema(
      id: 6,
      name: r'scale',
      type: IsarType.object,
      target: r'ScaleClassIsar',
    ),
    r'scaleId': PropertySchema(
      id: 7,
      name: r'scaleId',
      type: IsarType.long,
    ),
    r'team': PropertySchema(
      id: 8,
      name: r'team',
      type: IsarType.object,
      target: r'TeamIsar',
    ),
    r'updatedAt': PropertySchema(
      id: 9,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _scaleTeamIsarEstimateSize,
  serialize: _scaleTeamIsarSerialize,
  deserialize: _scaleTeamIsarDeserialize,
  deserializeProp: _scaleTeamIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'FlagIsar': FlagIsarSchema,
    r'CorrectorIsar': CorrectorIsarSchema,
    r'ScaleClassIsar': ScaleClassIsarSchema,
    r'TeamIsar': TeamIsarSchema,
    r'ScaleUserIsar': ScaleUserIsarSchema,
    r'FeedbackIsar': FeedbackIsarSchema
  },
  getId: _scaleTeamIsarGetId,
  getLinks: _scaleTeamIsarGetLinks,
  attach: _scaleTeamIsarAttach,
  version: '3.0.5',
);

int _scaleTeamIsarEstimateSize(
  ScaleTeamIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.correcteds;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CorrectorIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              CorrectorIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.corrector;
    if (value != null) {
      bytesCount += 3 +
          CorrectorIsarSchema.estimateSize(
              value, allOffsets[CorrectorIsar]!, allOffsets);
    }
  }
  {
    final list = object.feedbacks;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FeedbackIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              FeedbackIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.flag;
    if (value != null) {
      bytesCount += 3 +
          FlagIsarSchema.estimateSize(value, allOffsets[FlagIsar]!, allOffsets);
    }
  }
  {
    final value = object.scale;
    if (value != null) {
      bytesCount += 3 +
          ScaleClassIsarSchema.estimateSize(
              value, allOffsets[ScaleClassIsar]!, allOffsets);
    }
  }
  {
    final value = object.team;
    if (value != null) {
      bytesCount += 3 +
          TeamIsarSchema.estimateSize(value, allOffsets[TeamIsar]!, allOffsets);
    }
  }
  return bytesCount;
}

void _scaleTeamIsarSerialize(
  ScaleTeamIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.beginAt);
  writer.writeObjectList<CorrectorIsar>(
    offsets[1],
    allOffsets,
    CorrectorIsarSchema.serialize,
    object.correcteds,
  );
  writer.writeObject<CorrectorIsar>(
    offsets[2],
    allOffsets,
    CorrectorIsarSchema.serialize,
    object.corrector,
  );
  writer.writeDateTime(offsets[3], object.createdAt);
  writer.writeObjectList<FeedbackIsar>(
    offsets[4],
    allOffsets,
    FeedbackIsarSchema.serialize,
    object.feedbacks,
  );
  writer.writeObject<FlagIsar>(
    offsets[5],
    allOffsets,
    FlagIsarSchema.serialize,
    object.flag,
  );
  writer.writeObject<ScaleClassIsar>(
    offsets[6],
    allOffsets,
    ScaleClassIsarSchema.serialize,
    object.scale,
  );
  writer.writeLong(offsets[7], object.scaleId);
  writer.writeObject<TeamIsar>(
    offsets[8],
    allOffsets,
    TeamIsarSchema.serialize,
    object.team,
  );
  writer.writeDateTime(offsets[9], object.updatedAt);
}

ScaleTeamIsar _scaleTeamIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ScaleTeamIsar(
    beginAt: reader.readDateTimeOrNull(offsets[0]),
    correcteds: reader.readObjectList<CorrectorIsar>(
      offsets[1],
      CorrectorIsarSchema.deserialize,
      allOffsets,
      CorrectorIsar(),
    ),
    corrector: reader.readObjectOrNull<CorrectorIsar>(
      offsets[2],
      CorrectorIsarSchema.deserialize,
      allOffsets,
    ),
    createdAt: reader.readDateTimeOrNull(offsets[3]),
    feedbacks: reader.readObjectList<FeedbackIsar>(
      offsets[4],
      FeedbackIsarSchema.deserialize,
      allOffsets,
      FeedbackIsar(),
    ),
    flag: reader.readObjectOrNull<FlagIsar>(
      offsets[5],
      FlagIsarSchema.deserialize,
      allOffsets,
    ),
    id: id,
    scale: reader.readObjectOrNull<ScaleClassIsar>(
      offsets[6],
      ScaleClassIsarSchema.deserialize,
      allOffsets,
    ),
    scaleId: reader.readLongOrNull(offsets[7]),
    team: reader.readObjectOrNull<TeamIsar>(
      offsets[8],
      TeamIsarSchema.deserialize,
      allOffsets,
    ),
    updatedAt: reader.readDateTimeOrNull(offsets[9]),
  );
  return object;
}

P _scaleTeamIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<CorrectorIsar>(
        offset,
        CorrectorIsarSchema.deserialize,
        allOffsets,
        CorrectorIsar(),
      )) as P;
    case 2:
      return (reader.readObjectOrNull<CorrectorIsar>(
        offset,
        CorrectorIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<FeedbackIsar>(
        offset,
        FeedbackIsarSchema.deserialize,
        allOffsets,
        FeedbackIsar(),
      )) as P;
    case 5:
      return (reader.readObjectOrNull<FlagIsar>(
        offset,
        FlagIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readObjectOrNull<ScaleClassIsar>(
        offset,
        ScaleClassIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<TeamIsar>(
        offset,
        TeamIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _scaleTeamIsarGetId(ScaleTeamIsar object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _scaleTeamIsarGetLinks(ScaleTeamIsar object) {
  return [];
}

void _scaleTeamIsarAttach(
    IsarCollection<dynamic> col, Id id, ScaleTeamIsar object) {}

extension ScaleTeamIsarQueryWhereSort
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QWhere> {
  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ScaleTeamIsarQueryWhere
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QWhereClause> {
  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterWhereClause> idBetween(
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

extension ScaleTeamIsarQueryFilter
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QFilterCondition> {
  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      beginAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'beginAt',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      beginAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'beginAt',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      beginAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'beginAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      beginAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'beginAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      beginAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'beginAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      beginAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'beginAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correcteds',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correcteds',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'correcteds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'correcteds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'correcteds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'correcteds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'correcteds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'correcteds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'corrector',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'corrector',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feedbacks',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feedbacks',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'feedbacks',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'feedbacks',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'feedbacks',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'feedbacks',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'feedbacks',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'feedbacks',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      flagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flag',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      flagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flag',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scale',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scale',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scaleId',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scaleId',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scaleId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scaleId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scaleId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      scaleIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scaleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      teamIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'team',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      teamIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'team',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
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

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
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

extension ScaleTeamIsarQueryObject
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QFilterCondition> {
  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      correctedsElement(FilterQuery<CorrectorIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'correcteds');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> corrector(
      FilterQuery<CorrectorIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'corrector');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition>
      feedbacksElement(FilterQuery<FeedbackIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'feedbacks');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> flag(
      FilterQuery<FlagIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'flag');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> scale(
      FilterQuery<ScaleClassIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'scale');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterFilterCondition> team(
      FilterQuery<TeamIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'team');
    });
  }
}

extension ScaleTeamIsarQueryLinks
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QFilterCondition> {}

extension ScaleTeamIsarQuerySortBy
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QSortBy> {
  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> sortByBeginAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginAt', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> sortByBeginAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginAt', Sort.desc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> sortByScaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleId', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> sortByScaleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleId', Sort.desc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ScaleTeamIsarQuerySortThenBy
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QSortThenBy> {
  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenByBeginAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginAt', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenByBeginAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'beginAt', Sort.desc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenByScaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleId', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenByScaleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scaleId', Sort.desc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ScaleTeamIsarQueryWhereDistinct
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QDistinct> {
  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QDistinct> distinctByBeginAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'beginAt');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QDistinct> distinctByScaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scaleId');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension ScaleTeamIsarQueryProperty
    on QueryBuilder<ScaleTeamIsar, ScaleTeamIsar, QQueryProperty> {
  QueryBuilder<ScaleTeamIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ScaleTeamIsar, DateTime?, QQueryOperations> beginAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'beginAt');
    });
  }

  QueryBuilder<ScaleTeamIsar, List<CorrectorIsar>?, QQueryOperations>
      correctedsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correcteds');
    });
  }

  QueryBuilder<ScaleTeamIsar, CorrectorIsar?, QQueryOperations>
      correctorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'corrector');
    });
  }

  QueryBuilder<ScaleTeamIsar, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ScaleTeamIsar, List<FeedbackIsar>?, QQueryOperations>
      feedbacksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feedbacks');
    });
  }

  QueryBuilder<ScaleTeamIsar, FlagIsar?, QQueryOperations> flagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flag');
    });
  }

  QueryBuilder<ScaleTeamIsar, ScaleClassIsar?, QQueryOperations>
      scaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scale');
    });
  }

  QueryBuilder<ScaleTeamIsar, int?, QQueryOperations> scaleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scaleId');
    });
  }

  QueryBuilder<ScaleTeamIsar, TeamIsar?, QQueryOperations> teamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'team');
    });
  }

  QueryBuilder<ScaleTeamIsar, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const FeedbackIsarSchema = Schema(
  name: r'FeedbackIsar',
  id: -7125023696419227449,
  properties: {
    r'comment': PropertySchema(
      id: 0,
      name: r'comment',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'feedbackableId': PropertySchema(
      id: 2,
      name: r'feedbackableId',
      type: IsarType.long,
    ),
    r'feedbackableType': PropertySchema(
      id: 3,
      name: r'feedbackableType',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.long,
    ),
    r'rating': PropertySchema(
      id: 5,
      name: r'rating',
      type: IsarType.long,
    ),
    r'user': PropertySchema(
      id: 6,
      name: r'user',
      type: IsarType.object,
      target: r'CorrectorIsar',
    )
  },
  estimateSize: _feedbackIsarEstimateSize,
  serialize: _feedbackIsarSerialize,
  deserialize: _feedbackIsarDeserialize,
  deserializeProp: _feedbackIsarDeserializeProp,
);

int _feedbackIsarEstimateSize(
  FeedbackIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.feedbackableType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.user;
    if (value != null) {
      bytesCount += 3 +
          CorrectorIsarSchema.estimateSize(
              value, allOffsets[CorrectorIsar]!, allOffsets);
    }
  }
  return bytesCount;
}

void _feedbackIsarSerialize(
  FeedbackIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.comment);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeLong(offsets[2], object.feedbackableId);
  writer.writeString(offsets[3], object.feedbackableType);
  writer.writeLong(offsets[4], object.id);
  writer.writeLong(offsets[5], object.rating);
  writer.writeObject<CorrectorIsar>(
    offsets[6],
    allOffsets,
    CorrectorIsarSchema.serialize,
    object.user,
  );
}

FeedbackIsar _feedbackIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FeedbackIsar(
    comment: reader.readStringOrNull(offsets[0]),
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    feedbackableId: reader.readLongOrNull(offsets[2]),
    feedbackableType: reader.readStringOrNull(offsets[3]),
    id: reader.readLongOrNull(offsets[4]),
    rating: reader.readLongOrNull(offsets[5]),
    user: reader.readObjectOrNull<CorrectorIsar>(
      offsets[6],
      CorrectorIsarSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _feedbackIsarDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readObjectOrNull<CorrectorIsar>(
        offset,
        CorrectorIsarSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FeedbackIsarQueryFilter
    on QueryBuilder<FeedbackIsar, FeedbackIsar, QFilterCondition> {
  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
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

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feedbackableId',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feedbackableId',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedbackableId',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feedbackableId',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feedbackableId',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feedbackableId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feedbackableType',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feedbackableType',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedbackableType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feedbackableType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feedbackableType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feedbackableType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'feedbackableType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'feedbackableType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feedbackableType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feedbackableType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedbackableType',
        value: '',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      feedbackableTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feedbackableType',
        value: '',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> idGreaterThan(
    int? value, {
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

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> ratingEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      ratingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      ratingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> ratingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'user',
      ));
    });
  }

  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition>
      userIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'user',
      ));
    });
  }
}

extension FeedbackIsarQueryObject
    on QueryBuilder<FeedbackIsar, FeedbackIsar, QFilterCondition> {
  QueryBuilder<FeedbackIsar, FeedbackIsar, QAfterFilterCondition> user(
      FilterQuery<CorrectorIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'user');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CorrectorIsarSchema = Schema(
  name: r'CorrectorIsar',
  id: -4247747912058097861,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'login': PropertySchema(
      id: 1,
      name: r'login',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 2,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _correctorIsarEstimateSize,
  serialize: _correctorIsarSerialize,
  deserialize: _correctorIsarDeserialize,
  deserializeProp: _correctorIsarDeserializeProp,
);

int _correctorIsarEstimateSize(
  CorrectorIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.login;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _correctorIsarSerialize(
  CorrectorIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.login);
  writer.writeString(offsets[2], object.url);
}

CorrectorIsar _correctorIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CorrectorIsar(
    id: reader.readLongOrNull(offsets[0]),
    login: reader.readStringOrNull(offsets[1]),
    url: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _correctorIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CorrectorIsarQueryFilter
    on QueryBuilder<CorrectorIsar, CorrectorIsar, QFilterCondition> {
  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginEqualTo(
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginGreaterThan(
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginLessThan(
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginBetween(
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginStartsWith(
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginEndsWith(
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

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'login',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      loginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<CorrectorIsar, CorrectorIsar, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension CorrectorIsarQueryObject
    on QueryBuilder<CorrectorIsar, CorrectorIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const FlagIsarSchema = Schema(
  name: r'FlagIsar',
  id: -8362012284552822378,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'icon': PropertySchema(
      id: 1,
      name: r'icon',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'positive': PropertySchema(
      id: 4,
      name: r'positive',
      type: IsarType.bool,
    ),
    r'updatedAt': PropertySchema(
      id: 5,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _flagIsarEstimateSize,
  serialize: _flagIsarSerialize,
  deserialize: _flagIsarDeserialize,
  deserializeProp: _flagIsarDeserializeProp,
);

int _flagIsarEstimateSize(
  FlagIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.icon;
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

void _flagIsarSerialize(
  FlagIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.icon);
  writer.writeLong(offsets[2], object.id);
  writer.writeString(offsets[3], object.name);
  writer.writeBool(offsets[4], object.positive);
  writer.writeDateTime(offsets[5], object.updatedAt);
}

FlagIsar _flagIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlagIsar(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    icon: reader.readStringOrNull(offsets[1]),
    id: reader.readLongOrNull(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
    positive: reader.readBoolOrNull(offsets[4]),
    updatedAt: reader.readDateTimeOrNull(offsets[5]),
  );
  return object;
}

P _flagIsarDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FlagIsarQueryFilter
    on QueryBuilder<FlagIsar, FlagIsar, QFilterCondition> {
  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> idGreaterThan(
    int? value, {
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> positiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'positive',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> positiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'positive',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> positiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'positive',
        value: value,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> updatedAtGreaterThan(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<FlagIsar, FlagIsar, QAfterFilterCondition> updatedAtBetween(
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

extension FlagIsarQueryObject
    on QueryBuilder<FlagIsar, FlagIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ScaleClassIsarSchema = Schema(
  name: r'ScaleClassIsar',
  id: -4711507489514657007,
  properties: {
    r'comment': PropertySchema(
      id: 0,
      name: r'comment',
      type: IsarType.string,
    ),
    r'correctionNumber': PropertySchema(
      id: 1,
      name: r'correctionNumber',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'disclaimerMd': PropertySchema(
      id: 3,
      name: r'disclaimerMd',
      type: IsarType.string,
    ),
    r'duration': PropertySchema(
      id: 4,
      name: r'duration',
      type: IsarType.long,
    ),
    r'evaluationId': PropertySchema(
      id: 5,
      name: r'evaluationId',
      type: IsarType.long,
    ),
    r'flags': PropertySchema(
      id: 6,
      name: r'flags',
      type: IsarType.objectList,
      target: r'FlagIsar',
    ),
    r'free': PropertySchema(
      id: 7,
      name: r'free',
      type: IsarType.bool,
    ),
    r'guidelinesMd': PropertySchema(
      id: 8,
      name: r'guidelinesMd',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 9,
      name: r'id',
      type: IsarType.long,
    ),
    r'introductionMd': PropertySchema(
      id: 10,
      name: r'introductionMd',
      type: IsarType.string,
    ),
    r'isPrimary': PropertySchema(
      id: 11,
      name: r'isPrimary',
      type: IsarType.bool,
    ),
    r'manualSubscription': PropertySchema(
      id: 12,
      name: r'manualSubscription',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 13,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _scaleClassIsarEstimateSize,
  serialize: _scaleClassIsarSerialize,
  deserialize: _scaleClassIsarDeserialize,
  deserializeProp: _scaleClassIsarDeserializeProp,
);

int _scaleClassIsarEstimateSize(
  ScaleClassIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.disclaimerMd;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.flags;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FlagIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += FlagIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.guidelinesMd;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.introductionMd;
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

void _scaleClassIsarSerialize(
  ScaleClassIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.comment);
  writer.writeLong(offsets[1], object.correctionNumber);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.disclaimerMd);
  writer.writeLong(offsets[4], object.duration);
  writer.writeLong(offsets[5], object.evaluationId);
  writer.writeObjectList<FlagIsar>(
    offsets[6],
    allOffsets,
    FlagIsarSchema.serialize,
    object.flags,
  );
  writer.writeBool(offsets[7], object.free);
  writer.writeString(offsets[8], object.guidelinesMd);
  writer.writeLong(offsets[9], object.id);
  writer.writeString(offsets[10], object.introductionMd);
  writer.writeBool(offsets[11], object.isPrimary);
  writer.writeBool(offsets[12], object.manualSubscription);
  writer.writeString(offsets[13], object.name);
}

ScaleClassIsar _scaleClassIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ScaleClassIsar(
    comment: reader.readStringOrNull(offsets[0]),
    correctionNumber: reader.readLongOrNull(offsets[1]),
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    disclaimerMd: reader.readStringOrNull(offsets[3]),
    duration: reader.readLongOrNull(offsets[4]),
    evaluationId: reader.readLongOrNull(offsets[5]),
    flags: reader.readObjectList<FlagIsar>(
      offsets[6],
      FlagIsarSchema.deserialize,
      allOffsets,
      FlagIsar(),
    ),
    free: reader.readBoolOrNull(offsets[7]),
    guidelinesMd: reader.readStringOrNull(offsets[8]),
    id: reader.readLongOrNull(offsets[9]),
    introductionMd: reader.readStringOrNull(offsets[10]),
    isPrimary: reader.readBoolOrNull(offsets[11]),
    manualSubscription: reader.readBoolOrNull(offsets[12]),
    name: reader.readStringOrNull(offsets[13]),
  );
  return object;
}

P _scaleClassIsarDeserializeProp<P>(
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readObjectList<FlagIsar>(
        offset,
        FlagIsarSchema.deserialize,
        allOffsets,
        FlagIsar(),
      )) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readBoolOrNull(offset)) as P;
    case 12:
      return (reader.readBoolOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ScaleClassIsarQueryFilter
    on QueryBuilder<ScaleClassIsar, ScaleClassIsar, QFilterCondition> {
  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      correctionNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctionNumber',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      correctionNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctionNumber',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      correctionNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctionNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      correctionNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctionNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      correctionNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctionNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      correctionNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctionNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'disclaimerMd',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'disclaimerMd',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disclaimerMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'disclaimerMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'disclaimerMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'disclaimerMd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'disclaimerMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'disclaimerMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'disclaimerMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'disclaimerMd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disclaimerMd',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      disclaimerMdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'disclaimerMd',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      durationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'duration',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      durationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'duration',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      durationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      durationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      durationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      durationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      evaluationIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'evaluationId',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      evaluationIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'evaluationId',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      evaluationIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'evaluationId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      evaluationIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'evaluationId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      evaluationIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'evaluationId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      evaluationIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'evaluationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flags',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flags',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      freeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'free',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      freeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'free',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      freeEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'free',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'guidelinesMd',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'guidelinesMd',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guidelinesMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guidelinesMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guidelinesMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guidelinesMd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'guidelinesMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'guidelinesMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'guidelinesMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'guidelinesMd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guidelinesMd',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      guidelinesMdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'guidelinesMd',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      idLessThan(
    int? value, {
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'introductionMd',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'introductionMd',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'introductionMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'introductionMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'introductionMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'introductionMd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'introductionMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'introductionMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'introductionMd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'introductionMd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'introductionMd',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      introductionMdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'introductionMd',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      isPrimaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isPrimary',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      isPrimaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isPrimary',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      isPrimaryEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPrimary',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      manualSubscriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'manualSubscription',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      manualSubscriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'manualSubscription',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      manualSubscriptionEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manualSubscription',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ScaleClassIsarQueryObject
    on QueryBuilder<ScaleClassIsar, ScaleClassIsar, QFilterCondition> {
  QueryBuilder<ScaleClassIsar, ScaleClassIsar, QAfterFilterCondition>
      flagsElement(FilterQuery<FlagIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'flags');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const TeamIsarSchema = Schema(
  name: r'TeamIsar',
  id: 1585293011704073457,
  properties: {
    r'closed': PropertySchema(
      id: 0,
      name: r'closed',
      type: IsarType.bool,
    ),
    r'closedAt': PropertySchema(
      id: 1,
      name: r'closedAt',
      type: IsarType.dateTime,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'locked': PropertySchema(
      id: 4,
      name: r'locked',
      type: IsarType.bool,
    ),
    r'lockedAt': PropertySchema(
      id: 5,
      name: r'lockedAt',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'projectGitlabPath': PropertySchema(
      id: 7,
      name: r'projectGitlabPath',
      type: IsarType.string,
    ),
    r'projectId': PropertySchema(
      id: 8,
      name: r'projectId',
      type: IsarType.long,
    ),
    r'projectSessionId': PropertySchema(
      id: 9,
      name: r'projectSessionId',
      type: IsarType.long,
    ),
    r'repoUrl': PropertySchema(
      id: 10,
      name: r'repoUrl',
      type: IsarType.string,
    ),
    r'repoUuid': PropertySchema(
      id: 11,
      name: r'repoUuid',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 12,
      name: r'status',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 13,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(
      id: 14,
      name: r'url',
      type: IsarType.string,
    ),
    r'users': PropertySchema(
      id: 15,
      name: r'users',
      type: IsarType.objectList,
      target: r'ScaleUserIsar',
    )
  },
  estimateSize: _teamIsarEstimateSize,
  serialize: _teamIsarSerialize,
  deserialize: _teamIsarDeserialize,
  deserializeProp: _teamIsarDeserializeProp,
);

int _teamIsarEstimateSize(
  TeamIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.projectGitlabPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.repoUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.repoUuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.users;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ScaleUserIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ScaleUserIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _teamIsarSerialize(
  TeamIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.closed);
  writer.writeDateTime(offsets[1], object.closedAt);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeLong(offsets[3], object.id);
  writer.writeBool(offsets[4], object.locked);
  writer.writeDateTime(offsets[5], object.lockedAt);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.projectGitlabPath);
  writer.writeLong(offsets[8], object.projectId);
  writer.writeLong(offsets[9], object.projectSessionId);
  writer.writeString(offsets[10], object.repoUrl);
  writer.writeString(offsets[11], object.repoUuid);
  writer.writeString(offsets[12], object.status);
  writer.writeDateTime(offsets[13], object.updatedAt);
  writer.writeString(offsets[14], object.url);
  writer.writeObjectList<ScaleUserIsar>(
    offsets[15],
    allOffsets,
    ScaleUserIsarSchema.serialize,
    object.users,
  );
}

TeamIsar _teamIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TeamIsar(
    closed: reader.readBoolOrNull(offsets[0]),
    closedAt: reader.readDateTimeOrNull(offsets[1]),
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    id: reader.readLongOrNull(offsets[3]),
    locked: reader.readBoolOrNull(offsets[4]),
    lockedAt: reader.readDateTimeOrNull(offsets[5]),
    name: reader.readStringOrNull(offsets[6]),
    projectGitlabPath: reader.readStringOrNull(offsets[7]),
    projectId: reader.readLongOrNull(offsets[8]),
    projectSessionId: reader.readLongOrNull(offsets[9]),
    repoUrl: reader.readStringOrNull(offsets[10]),
    repoUuid: reader.readStringOrNull(offsets[11]),
    status: reader.readStringOrNull(offsets[12]),
    updatedAt: reader.readDateTimeOrNull(offsets[13]),
    url: reader.readStringOrNull(offsets[14]),
    users: reader.readObjectList<ScaleUserIsar>(
      offsets[15],
      ScaleUserIsarSchema.deserialize,
      allOffsets,
      ScaleUserIsar(),
    ),
  );
  return object;
}

P _teamIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readObjectList<ScaleUserIsar>(
        offset,
        ScaleUserIsarSchema.deserialize,
        allOffsets,
        ScaleUserIsar(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TeamIsarQueryFilter
    on QueryBuilder<TeamIsar, TeamIsar, QFilterCondition> {
  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'closed',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'closed',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'closed',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'closedAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'closedAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'closedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'closedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'closedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> closedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'closedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> idGreaterThan(
    int? value, {
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locked',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locked',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locked',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lockedAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lockedAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lockedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lockedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lockedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> lockedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lockedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'projectGitlabPath',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'projectGitlabPath',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'projectGitlabPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'projectGitlabPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'projectGitlabPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'projectGitlabPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'projectGitlabPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'projectGitlabPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'projectGitlabPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'projectGitlabPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'projectGitlabPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectGitlabPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'projectGitlabPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> projectIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'projectId',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> projectIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'projectId',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> projectIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'projectId',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> projectIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'projectId',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> projectIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'projectId',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> projectIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'projectId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectSessionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'projectSessionId',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectSessionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'projectSessionId',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectSessionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'projectSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectSessionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'projectSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectSessionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'projectSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      projectSessionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'projectSessionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'repoUrl',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'repoUrl',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'repoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'repoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'repoUuid',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'repoUuid',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repoUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'repoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'repoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'repoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'repoUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> repoUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'repoUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> updatedAtGreaterThan(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> updatedAtBetween(
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

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'users',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'users',
      ));
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition>
      usersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension TeamIsarQueryObject
    on QueryBuilder<TeamIsar, TeamIsar, QFilterCondition> {
  QueryBuilder<TeamIsar, TeamIsar, QAfterFilterCondition> usersElement(
      FilterQuery<ScaleUserIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'users');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ScaleUserIsarSchema = Schema(
  name: r'ScaleUserIsar',
  id: 1495833875360421524,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'leader': PropertySchema(
      id: 1,
      name: r'leader',
      type: IsarType.bool,
    ),
    r'login': PropertySchema(
      id: 2,
      name: r'login',
      type: IsarType.string,
    ),
    r'occurrence': PropertySchema(
      id: 3,
      name: r'occurrence',
      type: IsarType.long,
    ),
    r'projectsUserId': PropertySchema(
      id: 4,
      name: r'projectsUserId',
      type: IsarType.long,
    ),
    r'url': PropertySchema(
      id: 5,
      name: r'url',
      type: IsarType.string,
    ),
    r'validated': PropertySchema(
      id: 6,
      name: r'validated',
      type: IsarType.bool,
    )
  },
  estimateSize: _scaleUserIsarEstimateSize,
  serialize: _scaleUserIsarSerialize,
  deserialize: _scaleUserIsarDeserialize,
  deserializeProp: _scaleUserIsarDeserializeProp,
);

int _scaleUserIsarEstimateSize(
  ScaleUserIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.login;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _scaleUserIsarSerialize(
  ScaleUserIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeBool(offsets[1], object.leader);
  writer.writeString(offsets[2], object.login);
  writer.writeLong(offsets[3], object.occurrence);
  writer.writeLong(offsets[4], object.projectsUserId);
  writer.writeString(offsets[5], object.url);
  writer.writeBool(offsets[6], object.validated);
}

ScaleUserIsar _scaleUserIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ScaleUserIsar(
    id: reader.readLongOrNull(offsets[0]),
    leader: reader.readBoolOrNull(offsets[1]),
    login: reader.readStringOrNull(offsets[2]),
    occurrence: reader.readLongOrNull(offsets[3]),
    projectsUserId: reader.readLongOrNull(offsets[4]),
    url: reader.readStringOrNull(offsets[5]),
    validated: reader.readBoolOrNull(offsets[6]),
  );
  return object;
}

P _scaleUserIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ScaleUserIsarQueryFilter
    on QueryBuilder<ScaleUserIsar, ScaleUserIsar, QFilterCondition> {
  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      leaderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leader',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      leaderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leader',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      leaderEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leader',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginEqualTo(
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginGreaterThan(
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginLessThan(
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginBetween(
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginStartsWith(
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginEndsWith(
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

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'login',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      loginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      occurrenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'occurrence',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      occurrenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'occurrence',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      occurrenceEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occurrence',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      occurrenceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'occurrence',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      occurrenceLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'occurrence',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      occurrenceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'occurrence',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      projectsUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'projectsUserId',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      projectsUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'projectsUserId',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      projectsUserIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'projectsUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      projectsUserIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'projectsUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      projectsUserIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'projectsUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      projectsUserIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'projectsUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      validatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'validated',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      validatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'validated',
      ));
    });
  }

  QueryBuilder<ScaleUserIsar, ScaleUserIsar, QAfterFilterCondition>
      validatedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validated',
        value: value,
      ));
    });
  }
}

extension ScaleUserIsarQueryObject
    on QueryBuilder<ScaleUserIsar, ScaleUserIsar, QFilterCondition> {}
