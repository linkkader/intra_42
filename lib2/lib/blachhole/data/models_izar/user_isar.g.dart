// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetUserIsarCollection on Isar {
  IsarCollection<UserIsar> get userIsars => this.collection();
}

const UserIsarSchema = CollectionSchema(
  name: r'UserIsar',
  id: 3432433,
  properties: {
    r'achievements': PropertySchema(
      id: 0,
      name: r'achievements',
      type: IsarType.objectList,
      target: r'AchievementIsar',
    ),
    r'active': PropertySchema(
      id: 1,
      name: r'active',
      type: IsarType.bool,
    ),
    r'alumni': PropertySchema(
      id: 2,
      name: r'alumni',
      type: IsarType.bool,
    ),
    r'anonymizeDate': PropertySchema(
      id: 3,
      name: r'anonymizeDate',
      type: IsarType.dateTime,
    ),
    r'campus': PropertySchema(
      id: 4,
      name: r'campus',
      type: IsarType.objectList,
      target: r'CampusIsar',
    ),
    r'campusUsers': PropertySchema(
      id: 5,
      name: r'campusUsers',
      type: IsarType.objectList,
      target: r'CampusUserIsar',
    ),
    r'correctionPoint': PropertySchema(
      id: 6,
      name: r'correctionPoint',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 7,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'cursusUsers': PropertySchema(
      id: 8,
      name: r'cursusUsers',
      type: IsarType.objectList,
      target: r'CursusUserIsar',
    ),
    r'dataErasureDate': PropertySchema(
      id: 9,
      name: r'dataErasureDate',
      type: IsarType.dateTime,
    ),
    r'displayname': PropertySchema(
      id: 10,
      name: r'displayname',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 11,
      name: r'email',
      type: IsarType.string,
    ),
    r'expertisesUsers': PropertySchema(
      id: 12,
      name: r'expertisesUsers',
      type: IsarType.objectList,
      target: r'ExpertisesUserIsar',
    ),
    r'firstName': PropertySchema(
      id: 13,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 14,
      name: r'id',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 15,
      name: r'image',
      type: IsarType.object,
      target: r'ImageIsar',
    ),
    r'imageUrl': PropertySchema(
      id: 16,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'kind': PropertySchema(
      id: 17,
      name: r'kind',
      type: IsarType.string,
    ),
    r'languagesUsers': PropertySchema(
      id: 18,
      name: r'languagesUsers',
      type: IsarType.objectList,
      target: r'LanguagesUserIsar',
    ),
    r'lastName': PropertySchema(
      id: 19,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 20,
      name: r'location',
      type: IsarType.string,
    ),
    r'login': PropertySchema(
      id: 21,
      name: r'login',
      type: IsarType.string,
    ),
    r'newImageUrl': PropertySchema(
      id: 22,
      name: r'newImageUrl',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 23,
      name: r'phone',
      type: IsarType.string,
    ),
    r'poolMonth': PropertySchema(
      id: 24,
      name: r'poolMonth',
      type: IsarType.string,
    ),
    r'poolYear': PropertySchema(
      id: 25,
      name: r'poolYear',
      type: IsarType.string,
    ),
    r'projectsUsers': PropertySchema(
      id: 26,
      name: r'projectsUsers',
      type: IsarType.objectList,
      target: r'ProjectsUserIsar',
    ),
    r'staff': PropertySchema(
      id: 27,
      name: r'staff',
      type: IsarType.bool,
    ),
    r'updatedAt': PropertySchema(
      id: 28,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(
      id: 29,
      name: r'url',
      type: IsarType.string,
    ),
    r'usualFullName': PropertySchema(
      id: 30,
      name: r'usualFullName',
      type: IsarType.string,
    ),
    r'wallet': PropertySchema(
      id: 31,
      name: r'wallet',
      type: IsarType.long,
    )
  },
  estimateSize: _userIsarEstimateSize,
  serialize: _userIsarSerialize,
  deserialize: _userIsarDeserialize,
  deserializeProp: _userIsarDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'id': IndexSchema(
      id: -32332,
      name: r'id',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'login': IndexSchema(
      id: 0432,
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
  embeddedSchemas: {
    r'ImageIsar': ImageIsarSchema,
    r'VersionsIsar': VersionsIsarSchema,
    r'CursusUserIsar': CursusUserIsarSchema,
    r'SkillIsar': SkillIsarSchema,
    r'UserClassIsar': UserClassIsarSchema,
    r'CursusIsar': CursusIsarSchema,
    r'ProjectsUserIsar': ProjectsUserIsarSchema,
    r'ProjectIsar': ProjectIsarSchema,
    r'LanguagesUserIsar': LanguagesUserIsarSchema,
    r'AchievementIsar': AchievementIsarSchema,
    r'ExpertisesUserIsar': ExpertisesUserIsarSchema,
    r'CampusIsar': CampusIsarSchema,
    r'LanguageIsar': LanguageIsarSchema,
    r'CampusUserIsar': CampusUserIsarSchema
  },
  getId: _userIsarGetId,
  getLinks: _userIsarGetLinks,
  attach: _userIsarAttach,
  version: '3.0.5',
);

int _userIsarEstimateSize(
  UserIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.achievements;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[AchievementIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              AchievementIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.campus;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CampusIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              CampusIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.campusUsers;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CampusUserIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              CampusUserIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.cursusUsers;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CursusUserIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              CursusUserIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.displayname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.expertisesUsers;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ExpertisesUserIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ExpertisesUserIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.firstName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 +
          ImageIsarSchema.estimateSize(
              value, allOffsets[ImageIsar]!, allOffsets);
    }
  }
  {
    final value = object.imageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kind;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.languagesUsers;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguagesUserIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              LanguagesUserIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.lastName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.location;
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
    final value = object.newImageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.poolMonth;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.poolYear;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.projectsUsers;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ProjectsUserIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ProjectsUserIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usualFullName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userIsarSerialize(
  UserIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<AchievementIsar>(
    offsets[0],
    allOffsets,
    AchievementIsarSchema.serialize,
    object.achievements,
  );
  writer.writeBool(offsets[1], object.active);
  writer.writeBool(offsets[2], object.alumni);
  writer.writeDateTime(offsets[3], object.anonymizeDate);
  writer.writeObjectList<CampusIsar>(
    offsets[4],
    allOffsets,
    CampusIsarSchema.serialize,
    object.campus,
  );
  writer.writeObjectList<CampusUserIsar>(
    offsets[5],
    allOffsets,
    CampusUserIsarSchema.serialize,
    object.campusUsers,
  );
  writer.writeLong(offsets[6], object.correctionPoint);
  writer.writeDateTime(offsets[7], object.createdAt);
  writer.writeObjectList<CursusUserIsar>(
    offsets[8],
    allOffsets,
    CursusUserIsarSchema.serialize,
    object.cursusUsers,
  );
  writer.writeDateTime(offsets[9], object.dataErasureDate);
  writer.writeString(offsets[10], object.displayname);
  writer.writeString(offsets[11], object.email);
  writer.writeObjectList<ExpertisesUserIsar>(
    offsets[12],
    allOffsets,
    ExpertisesUserIsarSchema.serialize,
    object.expertisesUsers,
  );
  writer.writeString(offsets[13], object.firstName);
  writer.writeLong(offsets[14], object.id);
  writer.writeObject<ImageIsar>(
    offsets[15],
    allOffsets,
    ImageIsarSchema.serialize,
    object.image,
  );
  writer.writeString(offsets[16], object.imageUrl);
  writer.writeString(offsets[17], object.kind);
  writer.writeObjectList<LanguagesUserIsar>(
    offsets[18],
    allOffsets,
    LanguagesUserIsarSchema.serialize,
    object.languagesUsers,
  );
  writer.writeString(offsets[19], object.lastName);
  writer.writeString(offsets[20], object.location);
  writer.writeString(offsets[21], object.login);
  writer.writeString(offsets[22], object.newImageUrl);
  writer.writeString(offsets[23], object.phone);
  writer.writeString(offsets[24], object.poolMonth);
  writer.writeString(offsets[25], object.poolYear);
  writer.writeObjectList<ProjectsUserIsar>(
    offsets[26],
    allOffsets,
    ProjectsUserIsarSchema.serialize,
    object.projectsUsers,
  );
  writer.writeBool(offsets[27], object.staff);
  writer.writeDateTime(offsets[28], object.updatedAt);
  writer.writeString(offsets[29], object.url);
  writer.writeString(offsets[30], object.usualFullName);
  writer.writeLong(offsets[31], object.wallet);
}

UserIsar _userIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserIsar(
    achievements: reader.readObjectList<AchievementIsar>(
      offsets[0],
      AchievementIsarSchema.deserialize,
      allOffsets,
      AchievementIsar(),
    ),
    active: reader.readBoolOrNull(offsets[1]),
    alumni: reader.readBoolOrNull(offsets[2]),
    anonymizeDate: reader.readDateTimeOrNull(offsets[3]),
    campus: reader.readObjectList<CampusIsar>(
      offsets[4],
      CampusIsarSchema.deserialize,
      allOffsets,
      CampusIsar(),
    ),
    campusUsers: reader.readObjectList<CampusUserIsar>(
      offsets[5],
      CampusUserIsarSchema.deserialize,
      allOffsets,
      CampusUserIsar(),
    ),
    correctionPoint: reader.readLongOrNull(offsets[6]),
    createdAt: reader.readDateTimeOrNull(offsets[7]),
    cursusUsers: reader.readObjectList<CursusUserIsar>(
      offsets[8],
      CursusUserIsarSchema.deserialize,
      allOffsets,
      CursusUserIsar(),
    ),
    dataErasureDate: reader.readDateTimeOrNull(offsets[9]),
    displayname: reader.readStringOrNull(offsets[10]),
    email: reader.readStringOrNull(offsets[11]),
    expertisesUsers: reader.readObjectList<ExpertisesUserIsar>(
      offsets[12],
      ExpertisesUserIsarSchema.deserialize,
      allOffsets,
      ExpertisesUserIsar(),
    ),
    firstName: reader.readStringOrNull(offsets[13]),
    id: reader.readLongOrNull(offsets[14]),
    image: reader.readObjectOrNull<ImageIsar>(
      offsets[15],
      ImageIsarSchema.deserialize,
      allOffsets,
    ),
    imageUrl: reader.readStringOrNull(offsets[16]),
    isarId: id,
    kind: reader.readStringOrNull(offsets[17]),
    languagesUsers: reader.readObjectList<LanguagesUserIsar>(
      offsets[18],
      LanguagesUserIsarSchema.deserialize,
      allOffsets,
      LanguagesUserIsar(),
    ),
    lastName: reader.readStringOrNull(offsets[19]),
    location: reader.readStringOrNull(offsets[20]),
    login: reader.readStringOrNull(offsets[21]),
    newImageUrl: reader.readStringOrNull(offsets[22]),
    phone: reader.readStringOrNull(offsets[23]),
    poolMonth: reader.readStringOrNull(offsets[24]),
    poolYear: reader.readStringOrNull(offsets[25]),
    projectsUsers: reader.readObjectList<ProjectsUserIsar>(
      offsets[26],
      ProjectsUserIsarSchema.deserialize,
      allOffsets,
      ProjectsUserIsar(),
    ),
    staff: reader.readBoolOrNull(offsets[27]),
    updatedAt: reader.readDateTimeOrNull(offsets[28]),
    url: reader.readStringOrNull(offsets[29]),
    usualFullName: reader.readStringOrNull(offsets[30]),
    wallet: reader.readLongOrNull(offsets[31]),
  );
  return object;
}

P _userIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<AchievementIsar>(
        offset,
        AchievementIsarSchema.deserialize,
        allOffsets,
        AchievementIsar(),
      )) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<CampusIsar>(
        offset,
        CampusIsarSchema.deserialize,
        allOffsets,
        CampusIsar(),
      )) as P;
    case 5:
      return (reader.readObjectList<CampusUserIsar>(
        offset,
        CampusUserIsarSchema.deserialize,
        allOffsets,
        CampusUserIsar(),
      )) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readObjectList<CursusUserIsar>(
        offset,
        CursusUserIsarSchema.deserialize,
        allOffsets,
        CursusUserIsar(),
      )) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readObjectList<ExpertisesUserIsar>(
        offset,
        ExpertisesUserIsarSchema.deserialize,
        allOffsets,
        ExpertisesUserIsar(),
      )) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readObjectOrNull<ImageIsar>(
        offset,
        ImageIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readObjectList<LanguagesUserIsar>(
        offset,
        LanguagesUserIsarSchema.deserialize,
        allOffsets,
        LanguagesUserIsar(),
      )) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readObjectList<ProjectsUserIsar>(
        offset,
        ProjectsUserIsarSchema.deserialize,
        allOffsets,
        ProjectsUserIsar(),
      )) as P;
    case 27:
      return (reader.readBoolOrNull(offset)) as P;
    case 28:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userIsarGetId(UserIsar object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _userIsarGetLinks(UserIsar object) {
  return [];
}

void _userIsarAttach(IsarCollection<dynamic> col, Id id, UserIsar object) {}

extension UserIsarByIndex on IsarCollection<UserIsar> {
  Future<UserIsar?> getById(int? id) {
    return getByIndex(r'id', [id]);
  }

  UserIsar? getByIdSync(int? id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(int? id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(int? id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<UserIsar?>> getAllById(List<int?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<UserIsar?> getAllByIdSync(List<int?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<int?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<int?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(UserIsar object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(UserIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<UserIsar> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<UserIsar> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }

  Future<UserIsar?> getByLogin(String? login) {
    return getByIndex(r'login', [login]);
  }

  UserIsar? getByLoginSync(String? login) {
    return getByIndexSync(r'login', [login]);
  }

  Future<bool> deleteByLogin(String? login) {
    return deleteByIndex(r'login', [login]);
  }

  bool deleteByLoginSync(String? login) {
    return deleteByIndexSync(r'login', [login]);
  }

  Future<List<UserIsar?>> getAllByLogin(List<String?> loginValues) {
    final values = loginValues.map((e) => [e]).toList();
    return getAllByIndex(r'login', values);
  }

  List<UserIsar?> getAllByLoginSync(List<String?> loginValues) {
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

  Future<Id> putByLogin(UserIsar object) {
    return putByIndex(r'login', object);
  }

  Id putByLoginSync(UserIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'login', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByLogin(List<UserIsar> objects) {
    return putAllByIndex(r'login', objects);
  }

  List<Id> putAllByLoginSync(List<UserIsar> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'login', objects, saveLinks: saveLinks);
  }
}

extension UserIsarQueryWhereSort on QueryBuilder<UserIsar, UserIsar, QWhere> {
  QueryBuilder<UserIsar, UserIsar, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'id'),
      );
    });
  }
}

extension UserIsarQueryWhere on QueryBuilder<UserIsar, UserIsar, QWhereClause> {
  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [null],
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> idEqualTo(int? id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> idNotEqualTo(int? id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id',
        lower: [id],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id',
        lower: [],
        upper: [id],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id',
        lower: [lowerId],
        includeLower: includeLower,
        upper: [upperId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> loginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'login',
        value: [null],
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> loginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'login',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> loginEqualTo(
      String? login) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'login',
        value: [login],
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterWhereClause> loginNotEqualTo(
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

extension UserIsarQueryFilter
    on QueryBuilder<UserIsar, UserIsar, QFilterCondition> {
  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> achievementsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievements',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      achievementsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievements',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      achievementsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'achievements',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      achievementsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'achievements',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      achievementsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'achievements',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      achievementsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'achievements',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      achievementsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'achievements',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      achievementsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'achievements',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> activeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> activeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> activeEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> alumniIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alumni',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> alumniIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alumni',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> alumniEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alumni',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      anonymizeDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'anonymizeDate',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      anonymizeDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'anonymizeDate',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> anonymizeDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'anonymizeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      anonymizeDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'anonymizeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> anonymizeDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'anonymizeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> anonymizeDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'anonymizeDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'campus',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'campus',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campus',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campus',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campus',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campus',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      campusLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campus',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campus',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusUsersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'campusUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      campusUsersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'campusUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      campusUsersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campusUsers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusUsersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campusUsers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      campusUsersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campusUsers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      campusUsersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campusUsers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      campusUsersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campusUsers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      campusUsersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'campusUsers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      correctionPointIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctionPoint',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      correctionPointIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctionPoint',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      correctionPointEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctionPoint',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      correctionPointGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctionPoint',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      correctionPointLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctionPoint',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      correctionPointBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctionPoint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> cursusUsersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cursusUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      cursusUsersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cursusUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      cursusUsersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusUsers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> cursusUsersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusUsers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      cursusUsersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusUsers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      cursusUsersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusUsers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      cursusUsersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusUsers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      cursusUsersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusUsers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      dataErasureDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dataErasureDate',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      dataErasureDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dataErasureDate',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      dataErasureDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataErasureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      dataErasureDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataErasureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      dataErasureDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataErasureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      dataErasureDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataErasureDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'displayname',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      displaynameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'displayname',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      displaynameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'displayname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'displayname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> displaynameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayname',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      displaynameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'displayname',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expertisesUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expertisesUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expertisesUsers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expertisesUsers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expertisesUsers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expertisesUsers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expertisesUsers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expertisesUsers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kind',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kind',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> kindIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'languagesUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'languagesUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languagesUsers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languagesUsers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languagesUsers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languagesUsers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languagesUsers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      languagesUsersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languagesUsers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginEqualTo(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginGreaterThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginLessThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginBetween(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginStartsWith(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginEndsWith(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginContains(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginMatches(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> loginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'newImageUrl',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      newImageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'newImageUrl',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      newImageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'newImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> newImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      newImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'newImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'poolMonth',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'poolMonth',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'poolMonth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'poolMonth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolMonthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolMonth',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      poolMonthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'poolMonth',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'poolYear',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'poolYear',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'poolYear',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'poolYear',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolYear',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> poolYearIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'poolYear',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'projectsUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'projectsUsers',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'projectsUsers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'projectsUsers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'projectsUsers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'projectsUsers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'projectsUsers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      projectsUsersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'projectsUsers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> staffIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'staff',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> staffIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'staff',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> staffEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'staff',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> updatedAtGreaterThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> updatedAtBetween(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlEqualTo(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlGreaterThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlLessThan(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlBetween(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlStartsWith(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlEndsWith(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlContains(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlMatches(
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

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      usualFullNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usualFullName',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      usualFullNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usualFullName',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> usualFullNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      usualFullNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> usualFullNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> usualFullNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usualFullName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      usualFullNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> usualFullNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> usualFullNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> usualFullNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usualFullName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      usualFullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usualFullName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      usualFullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usualFullName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> walletIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wallet',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> walletIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wallet',
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> walletEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wallet',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> walletGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wallet',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> walletLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wallet',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> walletBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wallet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserIsarQueryObject
    on QueryBuilder<UserIsar, UserIsar, QFilterCondition> {
  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> achievementsElement(
      FilterQuery<AchievementIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'achievements');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusElement(
      FilterQuery<CampusIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'campus');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> campusUsersElement(
      FilterQuery<CampusUserIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'campusUsers');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> cursusUsersElement(
      FilterQuery<CursusUserIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cursusUsers');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition>
      expertisesUsersElement(FilterQuery<ExpertisesUserIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'expertisesUsers');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> image(
      FilterQuery<ImageIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'image');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> languagesUsersElement(
      FilterQuery<LanguagesUserIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'languagesUsers');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterFilterCondition> projectsUsersElement(
      FilterQuery<ProjectsUserIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'projectsUsers');
    });
  }
}

extension UserIsarQueryLinks
    on QueryBuilder<UserIsar, UserIsar, QFilterCondition> {}

extension UserIsarQuerySortBy on QueryBuilder<UserIsar, UserIsar, QSortBy> {
  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByAlumni() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alumni', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByAlumniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alumni', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByAnonymizeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anonymizeDate', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByAnonymizeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anonymizeDate', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByCorrectionPoint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctionPoint', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByCorrectionPointDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctionPoint', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByDataErasureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataErasureDate', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByDataErasureDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataErasureDate', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByDisplayname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayname', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByDisplaynameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayname', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByKind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kind', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByKindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kind', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByNewImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newImageUrl', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByNewImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newImageUrl', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByPoolMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolMonth', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByPoolMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolMonth', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByPoolYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolYear', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByPoolYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolYear', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByStaff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staff', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByStaffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staff', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByUsualFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usualFullName', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByUsualFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usualFullName', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByWallet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wallet', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> sortByWalletDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wallet', Sort.desc);
    });
  }
}

extension UserIsarQuerySortThenBy
    on QueryBuilder<UserIsar, UserIsar, QSortThenBy> {
  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByAlumni() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alumni', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByAlumniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alumni', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByAnonymizeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anonymizeDate', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByAnonymizeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anonymizeDate', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByCorrectionPoint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctionPoint', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByCorrectionPointDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctionPoint', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByDataErasureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataErasureDate', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByDataErasureDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataErasureDate', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByDisplayname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayname', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByDisplaynameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayname', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByKind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kind', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByKindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kind', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByNewImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newImageUrl', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByNewImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newImageUrl', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByPoolMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolMonth', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByPoolMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolMonth', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByPoolYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolYear', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByPoolYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poolYear', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByStaff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staff', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByStaffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staff', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByUsualFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usualFullName', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByUsualFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usualFullName', Sort.desc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByWallet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wallet', Sort.asc);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QAfterSortBy> thenByWalletDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wallet', Sort.desc);
    });
  }
}

extension UserIsarQueryWhereDistinct
    on QueryBuilder<UserIsar, UserIsar, QDistinct> {
  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'active');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByAlumni() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alumni');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByAnonymizeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'anonymizeDate');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByCorrectionPoint() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctionPoint');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByDataErasureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataErasureDate');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByDisplayname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'displayname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByKind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kind', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByLogin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'login', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByNewImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'newImageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByPoolMonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'poolMonth', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByPoolYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'poolYear', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByStaff() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'staff');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByUsualFullName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usualFullName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserIsar, UserIsar, QDistinct> distinctByWallet() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wallet');
    });
  }
}

extension UserIsarQueryProperty
    on QueryBuilder<UserIsar, UserIsar, QQueryProperty> {
  QueryBuilder<UserIsar, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<UserIsar, List<AchievementIsar>?, QQueryOperations>
      achievementsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievements');
    });
  }

  QueryBuilder<UserIsar, bool?, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'active');
    });
  }

  QueryBuilder<UserIsar, bool?, QQueryOperations> alumniProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alumni');
    });
  }

  QueryBuilder<UserIsar, DateTime?, QQueryOperations> anonymizeDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'anonymizeDate');
    });
  }

  QueryBuilder<UserIsar, List<CampusIsar>?, QQueryOperations> campusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'campus');
    });
  }

  QueryBuilder<UserIsar, List<CampusUserIsar>?, QQueryOperations>
      campusUsersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'campusUsers');
    });
  }

  QueryBuilder<UserIsar, int?, QQueryOperations> correctionPointProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctionPoint');
    });
  }

  QueryBuilder<UserIsar, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<UserIsar, List<CursusUserIsar>?, QQueryOperations>
      cursusUsersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cursusUsers');
    });
  }

  QueryBuilder<UserIsar, DateTime?, QQueryOperations>
      dataErasureDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataErasureDate');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> displaynameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'displayname');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<UserIsar, List<ExpertisesUserIsar>?, QQueryOperations>
      expertisesUsersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expertisesUsers');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<UserIsar, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserIsar, ImageIsar?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> kindProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kind');
    });
  }

  QueryBuilder<UserIsar, List<LanguagesUserIsar>?, QQueryOperations>
      languagesUsersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languagesUsers');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> loginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'login');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> newImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'newImageUrl');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> poolMonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'poolMonth');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> poolYearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'poolYear');
    });
  }

  QueryBuilder<UserIsar, List<ProjectsUserIsar>?, QQueryOperations>
      projectsUsersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'projectsUsers');
    });
  }

  QueryBuilder<UserIsar, bool?, QQueryOperations> staffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'staff');
    });
  }

  QueryBuilder<UserIsar, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }

  QueryBuilder<UserIsar, String?, QQueryOperations> usualFullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usualFullName');
    });
  }

  QueryBuilder<UserIsar, int?, QQueryOperations> walletProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wallet');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const AchievementIsarSchema = Schema(
  name: r'AchievementIsar',
  id: 94923,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 2,
      name: r'image',
      type: IsarType.string,
    ),
    r'kind': PropertySchema(
      id: 3,
      name: r'kind',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'nbrOfSuccess': PropertySchema(
      id: 5,
      name: r'nbrOfSuccess',
      type: IsarType.long,
    ),
    r'tier': PropertySchema(
      id: 6,
      name: r'tier',
      type: IsarType.string,
    ),
    r'usersUrl': PropertySchema(
      id: 7,
      name: r'usersUrl',
      type: IsarType.string,
    ),
    r'visible': PropertySchema(
      id: 8,
      name: r'visible',
      type: IsarType.bool,
    )
  },
  estimateSize: _achievementIsarEstimateSize,
  serialize: _achievementIsarSerialize,
  deserialize: _achievementIsarDeserialize,
  deserializeProp: _achievementIsarDeserializeProp,
);

int _achievementIsarEstimateSize(
  AchievementIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kind;
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
  {
    final value = object.tier;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usersUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _achievementIsarSerialize(
  AchievementIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeLong(offsets[1], object.id);
  writer.writeString(offsets[2], object.image);
  writer.writeString(offsets[3], object.kind);
  writer.writeString(offsets[4], object.name);
  writer.writeLong(offsets[5], object.nbrOfSuccess);
  writer.writeString(offsets[6], object.tier);
  writer.writeString(offsets[7], object.usersUrl);
  writer.writeBool(offsets[8], object.visible);
}

AchievementIsar _achievementIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AchievementIsar(
    description: reader.readStringOrNull(offsets[0]),
    id: reader.readLongOrNull(offsets[1]),
    image: reader.readStringOrNull(offsets[2]),
    kind: reader.readStringOrNull(offsets[3]),
    name: reader.readStringOrNull(offsets[4]),
    nbrOfSuccess: reader.readLongOrNull(offsets[5]),
    tier: reader.readStringOrNull(offsets[6]),
    usersUrl: reader.readStringOrNull(offsets[7]),
    visible: reader.readBoolOrNull(offsets[8]),
  );
  return object;
}

P _achievementIsarDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AchievementIsarQueryFilter
    on QueryBuilder<AchievementIsar, AchievementIsar, QFilterCondition> {
  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kind',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kind',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      kindIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
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

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nbrOfSuccessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nbrOfSuccess',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nbrOfSuccessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nbrOfSuccess',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nbrOfSuccessEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nbrOfSuccess',
        value: value,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nbrOfSuccessGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nbrOfSuccess',
        value: value,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nbrOfSuccessLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nbrOfSuccess',
        value: value,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      nbrOfSuccessBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nbrOfSuccess',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tier',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tier',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tier',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tier',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      tierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tier',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usersUrl',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usersUrl',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usersUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usersUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usersUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usersUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usersUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usersUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usersUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usersUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usersUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      usersUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usersUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      visibleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visible',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      visibleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visible',
      ));
    });
  }

  QueryBuilder<AchievementIsar, AchievementIsar, QAfterFilterCondition>
      visibleEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visible',
        value: value,
      ));
    });
  }
}

extension AchievementIsarQueryObject
    on QueryBuilder<AchievementIsar, AchievementIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CampusIsarSchema = Schema(
  name: r'CampusIsar',
  id: -984982,
  properties: {
    r'active': PropertySchema(
      id: 0,
      name: r'active',
      type: IsarType.bool,
    ),
    r'address': PropertySchema(
      id: 1,
      name: r'address',
      type: IsarType.string,
    ),
    r'city': PropertySchema(
      id: 2,
      name: r'city',
      type: IsarType.string,
    ),
    r'country': PropertySchema(
      id: 3,
      name: r'country',
      type: IsarType.string,
    ),
    r'defaultHiddenPhone': PropertySchema(
      id: 4,
      name: r'defaultHiddenPhone',
      type: IsarType.bool,
    ),
    r'emailExtension': PropertySchema(
      id: 5,
      name: r'emailExtension',
      type: IsarType.string,
    ),
    r'facebook': PropertySchema(
      id: 6,
      name: r'facebook',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 7,
      name: r'id',
      type: IsarType.long,
    ),
    r'language': PropertySchema(
      id: 8,
      name: r'language',
      type: IsarType.object,
      target: r'LanguageIsar',
    ),
    r'name': PropertySchema(
      id: 9,
      name: r'name',
      type: IsarType.string,
    ),
    r'public': PropertySchema(
      id: 10,
      name: r'public',
      type: IsarType.bool,
    ),
    r'timeZone': PropertySchema(
      id: 11,
      name: r'timeZone',
      type: IsarType.string,
    ),
    r'twitter': PropertySchema(
      id: 12,
      name: r'twitter',
      type: IsarType.string,
    ),
    r'usersCount': PropertySchema(
      id: 13,
      name: r'usersCount',
      type: IsarType.long,
    ),
    r'vogsphereId': PropertySchema(
      id: 14,
      name: r'vogsphereId',
      type: IsarType.long,
    ),
    r'website': PropertySchema(
      id: 15,
      name: r'website',
      type: IsarType.string,
    ),
    r'zip': PropertySchema(
      id: 16,
      name: r'zip',
      type: IsarType.string,
    )
  },
  estimateSize: _campusIsarEstimateSize,
  serialize: _campusIsarSerialize,
  deserialize: _campusIsarDeserialize,
  deserializeProp: _campusIsarDeserializeProp,
);

int _campusIsarEstimateSize(
  CampusIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.city;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.emailExtension;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.facebook;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.language;
    if (value != null) {
      bytesCount += 3 +
          LanguageIsarSchema.estimateSize(
              value, allOffsets[LanguageIsar]!, allOffsets);
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timeZone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.twitter;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.website;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.zip;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _campusIsarSerialize(
  CampusIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.active);
  writer.writeString(offsets[1], object.address);
  writer.writeString(offsets[2], object.city);
  writer.writeString(offsets[3], object.country);
  writer.writeBool(offsets[4], object.defaultHiddenPhone);
  writer.writeString(offsets[5], object.emailExtension);
  writer.writeString(offsets[6], object.facebook);
  writer.writeLong(offsets[7], object.id);
  writer.writeObject<LanguageIsar>(
    offsets[8],
    allOffsets,
    LanguageIsarSchema.serialize,
    object.language,
  );
  writer.writeString(offsets[9], object.name);
  writer.writeBool(offsets[10], object.public);
  writer.writeString(offsets[11], object.timeZone);
  writer.writeString(offsets[12], object.twitter);
  writer.writeLong(offsets[13], object.usersCount);
  writer.writeLong(offsets[14], object.vogsphereId);
  writer.writeString(offsets[15], object.website);
  writer.writeString(offsets[16], object.zip);
}

CampusIsar _campusIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CampusIsar(
    active: reader.readBoolOrNull(offsets[0]),
    address: reader.readStringOrNull(offsets[1]),
    city: reader.readStringOrNull(offsets[2]),
    country: reader.readStringOrNull(offsets[3]),
    defaultHiddenPhone: reader.readBoolOrNull(offsets[4]),
    emailExtension: reader.readStringOrNull(offsets[5]),
    facebook: reader.readStringOrNull(offsets[6]),
    id: reader.readLongOrNull(offsets[7]),
    language: reader.readObjectOrNull<LanguageIsar>(
      offsets[8],
      LanguageIsarSchema.deserialize,
      allOffsets,
    ),
    name: reader.readStringOrNull(offsets[9]),
    public: reader.readBoolOrNull(offsets[10]),
    timeZone: reader.readStringOrNull(offsets[11]),
    twitter: reader.readStringOrNull(offsets[12]),
    usersCount: reader.readLongOrNull(offsets[13]),
    vogsphereId: reader.readLongOrNull(offsets[14]),
    website: reader.readStringOrNull(offsets[15]),
    zip: reader.readStringOrNull(offsets[16]),
  );
  return object;
}

P _campusIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<LanguageIsar>(
        offset,
        LanguageIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readBoolOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CampusIsarQueryFilter
    on QueryBuilder<CampusIsar, CampusIsar, QFilterCondition> {
  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> activeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      activeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> activeEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      addressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      defaultHiddenPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'defaultHiddenPhone',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      defaultHiddenPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'defaultHiddenPhone',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      defaultHiddenPhoneEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultHiddenPhone',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'emailExtension',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'emailExtension',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emailExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'emailExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'emailExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'emailExtension',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'emailExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'emailExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'emailExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'emailExtension',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emailExtension',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      emailExtensionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'emailExtension',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> facebookIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'facebook',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      facebookIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'facebook',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> facebookEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      facebookGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> facebookLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> facebookBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'facebook',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      facebookStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> facebookEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> facebookContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> facebookMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'facebook',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      facebookIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facebook',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      facebookIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'facebook',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> publicIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'public',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      publicIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'public',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> publicEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'public',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> timeZoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeZone',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      timeZoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeZone',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> timeZoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      timeZoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> timeZoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> timeZoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeZone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      timeZoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> timeZoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> timeZoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> timeZoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeZone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      timeZoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeZone',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      timeZoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeZone',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'twitter',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      twitterIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'twitter',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'twitter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      twitterGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'twitter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'twitter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'twitter',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'twitter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'twitter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'twitter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'twitter',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> twitterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'twitter',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      twitterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'twitter',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      usersCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usersCount',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      usersCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usersCount',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> usersCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      usersCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      usersCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> usersCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usersCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      vogsphereIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vogsphereId',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      vogsphereIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vogsphereId',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      vogsphereIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vogsphereId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      vogsphereIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vogsphereId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      vogsphereIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vogsphereId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      vogsphereIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vogsphereId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      websiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      websiteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'website',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'website',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> websiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition>
      websiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'website',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'zip',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'zip',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'zip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'zip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'zip',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'zip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'zip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'zip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'zip',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zip',
        value: '',
      ));
    });
  }

  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> zipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'zip',
        value: '',
      ));
    });
  }
}

extension CampusIsarQueryObject
    on QueryBuilder<CampusIsar, CampusIsar, QFilterCondition> {
  QueryBuilder<CampusIsar, CampusIsar, QAfterFilterCondition> language(
      FilterQuery<LanguageIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'language');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const LanguageIsarSchema = Schema(
  name: r'LanguageIsar',
  id: 049393494,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.long,
    ),
    r'identifier': PropertySchema(
      id: 2,
      name: r'identifier',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 4,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _languageIsarEstimateSize,
  serialize: _languageIsarSerialize,
  deserialize: _languageIsarDeserialize,
  deserializeProp: _languageIsarDeserializeProp,
);

int _languageIsarEstimateSize(
  LanguageIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.identifier;
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

void _languageIsarSerialize(
  LanguageIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.id);
  writer.writeString(offsets[2], object.identifier);
  writer.writeString(offsets[3], object.name);
  writer.writeDateTime(offsets[4], object.updatedAt);
}

LanguageIsar _languageIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LanguageIsar(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    id: reader.readLongOrNull(offsets[1]),
    identifier: reader.readStringOrNull(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
    updatedAt: reader.readDateTimeOrNull(offsets[4]),
  );
  return object;
}

P _languageIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LanguageIsarQueryFilter
    on QueryBuilder<LanguageIsar, LanguageIsar, QFilterCondition> {
  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'identifier',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'identifier',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'identifier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'identifier',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identifier',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      identifierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'identifier',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguageIsar, LanguageIsar, QAfterFilterCondition>
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

extension LanguageIsarQueryObject
    on QueryBuilder<LanguageIsar, LanguageIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CampusUserIsarSchema = Schema(
  name: r'CampusUserIsar',
  id: -9059844,
  properties: {
    r'campusId': PropertySchema(
      id: 0,
      name: r'campusId',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'isPrimary': PropertySchema(
      id: 3,
      name: r'isPrimary',
      type: IsarType.bool,
    ),
    r'updatedAt': PropertySchema(
      id: 4,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 5,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _campusUserIsarEstimateSize,
  serialize: _campusUserIsarSerialize,
  deserialize: _campusUserIsarDeserialize,
  deserializeProp: _campusUserIsarDeserializeProp,
);

int _campusUserIsarEstimateSize(
  CampusUserIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _campusUserIsarSerialize(
  CampusUserIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.campusId);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeLong(offsets[2], object.id);
  writer.writeBool(offsets[3], object.isPrimary);
  writer.writeDateTime(offsets[4], object.updatedAt);
  writer.writeLong(offsets[5], object.userId);
}

CampusUserIsar _campusUserIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CampusUserIsar(
    campusId: reader.readLongOrNull(offsets[0]),
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    id: reader.readLongOrNull(offsets[2]),
    isPrimary: reader.readBoolOrNull(offsets[3]),
    updatedAt: reader.readDateTimeOrNull(offsets[4]),
    userId: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _campusUserIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CampusUserIsarQueryFilter
    on QueryBuilder<CampusUserIsar, CampusUserIsar, QFilterCondition> {
  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      campusIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'campusId',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      campusIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'campusId',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      campusIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'campusId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      campusIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'campusId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      campusIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'campusId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      campusIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'campusId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      isPrimaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isPrimary',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      isPrimaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isPrimary',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      isPrimaryEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPrimary',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      userIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      userIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      userIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<CampusUserIsar, CampusUserIsar, QAfterFilterCondition>
      userIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CampusUserIsarQueryObject
    on QueryBuilder<CampusUserIsar, CampusUserIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CursusUserIsarSchema = Schema(
  name: r'CursusUserIsar',
  id: 95995495,
  properties: {
    r'beginAt': PropertySchema(
      id: 0,
      name: r'beginAt',
      type: IsarType.dateTime,
    ),
    r'blackholedAt': PropertySchema(
      id: 1,
      name: r'blackholedAt',
      type: IsarType.dateTime,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'cursus': PropertySchema(
      id: 3,
      name: r'cursus',
      type: IsarType.object,
      target: r'CursusIsar',
    ),
    r'cursusId': PropertySchema(
      id: 4,
      name: r'cursusId',
      type: IsarType.long,
    ),
    r'endAt': PropertySchema(
      id: 5,
      name: r'endAt',
      type: IsarType.dateTime,
    ),
    r'grade': PropertySchema(
      id: 6,
      name: r'grade',
      type: IsarType.string,
    ),
    r'hasCoalition': PropertySchema(
      id: 7,
      name: r'hasCoalition',
      type: IsarType.bool,
    ),
    r'id': PropertySchema(
      id: 8,
      name: r'id',
      type: IsarType.long,
    ),
    r'level': PropertySchema(
      id: 9,
      name: r'level',
      type: IsarType.double,
    ),
    r'skills': PropertySchema(
      id: 10,
      name: r'skills',
      type: IsarType.objectList,
      target: r'SkillIsar',
    ),
    r'updatedAt': PropertySchema(
      id: 11,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'user': PropertySchema(
      id: 12,
      name: r'user',
      type: IsarType.object,
      target: r'UserClassIsar',
    )
  },
  estimateSize: _cursusUserIsarEstimateSize,
  serialize: _cursusUserIsarSerialize,
  deserialize: _cursusUserIsarDeserialize,
  deserializeProp: _cursusUserIsarDeserializeProp,
);

int _cursusUserIsarEstimateSize(
  CursusUserIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cursus;
    if (value != null) {
      bytesCount += 3 +
          CursusIsarSchema.estimateSize(
              value, allOffsets[CursusIsar]!, allOffsets);
    }
  }
  {
    final value = object.grade;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.skills;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[SkillIsar]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              SkillIsarSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.user;
    if (value != null) {
      bytesCount += 3 +
          UserClassIsarSchema.estimateSize(
              value, allOffsets[UserClassIsar]!, allOffsets);
    }
  }
  return bytesCount;
}

void _cursusUserIsarSerialize(
  CursusUserIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.beginAt);
  writer.writeDateTime(offsets[1], object.blackholedAt);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeObject<CursusIsar>(
    offsets[3],
    allOffsets,
    CursusIsarSchema.serialize,
    object.cursus,
  );
  writer.writeLong(offsets[4], object.cursusId);
  writer.writeDateTime(offsets[5], object.endAt);
  writer.writeString(offsets[6], object.grade);
  writer.writeBool(offsets[7], object.hasCoalition);
  writer.writeLong(offsets[8], object.id);
  writer.writeDouble(offsets[9], object.level);
  writer.writeObjectList<SkillIsar>(
    offsets[10],
    allOffsets,
    SkillIsarSchema.serialize,
    object.skills,
  );
  writer.writeDateTime(offsets[11], object.updatedAt);
  writer.writeObject<UserClassIsar>(
    offsets[12],
    allOffsets,
    UserClassIsarSchema.serialize,
    object.user,
  );
}

CursusUserIsar _cursusUserIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CursusUserIsar(
    beginAt: reader.readDateTimeOrNull(offsets[0]),
    blackholedAt: reader.readDateTimeOrNull(offsets[1]),
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    cursus: reader.readObjectOrNull<CursusIsar>(
      offsets[3],
      CursusIsarSchema.deserialize,
      allOffsets,
    ),
    cursusId: reader.readLongOrNull(offsets[4]),
    endAt: reader.readDateTimeOrNull(offsets[5]),
    grade: reader.readStringOrNull(offsets[6]),
    hasCoalition: reader.readBoolOrNull(offsets[7]),
    id: reader.readLongOrNull(offsets[8]),
    level: reader.readDoubleOrNull(offsets[9]),
    skills: reader.readObjectList<SkillIsar>(
      offsets[10],
      SkillIsarSchema.deserialize,
      allOffsets,
      SkillIsar(),
    ),
    updatedAt: reader.readDateTimeOrNull(offsets[11]),
    user: reader.readObjectOrNull<UserClassIsar>(
      offsets[12],
      UserClassIsarSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _cursusUserIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<CursusIsar>(
        offset,
        CursusIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readObjectList<SkillIsar>(
        offset,
        SkillIsarSchema.deserialize,
        allOffsets,
        SkillIsar(),
      )) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readObjectOrNull<UserClassIsar>(
        offset,
        UserClassIsarSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CursusUserIsarQueryFilter
    on QueryBuilder<CursusUserIsar, CursusUserIsar, QFilterCondition> {
  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      beginAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'beginAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      beginAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'beginAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      beginAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'beginAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      blackholedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blackholedAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      blackholedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blackholedAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      blackholedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blackholedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      blackholedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blackholedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      blackholedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blackholedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      blackholedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blackholedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cursus',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cursus',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cursusId',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cursusId',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cursusId',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cursusId',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cursusId',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      cursusIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cursusId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      endAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      endAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      endAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      endAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      endAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      endAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grade',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grade',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grade',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grade',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grade',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grade',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'grade',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'grade',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'grade',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'grade',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grade',
        value: '',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      gradeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'grade',
        value: '',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      hasCoalitionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hasCoalition',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      hasCoalitionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hasCoalition',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      hasCoalitionEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasCoalition',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      levelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      levelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      levelEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      levelGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      levelLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      levelBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'skills',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'skills',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'user',
      ));
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      userIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'user',
      ));
    });
  }
}

extension CursusUserIsarQueryObject
    on QueryBuilder<CursusUserIsar, CursusUserIsar, QFilterCondition> {
  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition> cursus(
      FilterQuery<CursusIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cursus');
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition>
      skillsElement(FilterQuery<SkillIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'skills');
    });
  }

  QueryBuilder<CursusUserIsar, CursusUserIsar, QAfterFilterCondition> user(
      FilterQuery<UserClassIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'user');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CursusIsarSchema = Schema(
  name: r'CursusIsar',
  id: -04094995495,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.long,
    ),
    r'kind': PropertySchema(
      id: 2,
      name: r'kind',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'slug': PropertySchema(
      id: 4,
      name: r'slug',
      type: IsarType.string,
    )
  },
  estimateSize: _cursusIsarEstimateSize,
  serialize: _cursusIsarSerialize,
  deserialize: _cursusIsarDeserialize,
  deserializeProp: _cursusIsarDeserializeProp,
);

int _cursusIsarEstimateSize(
  CursusIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.kind;
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
  {
    final value = object.slug;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cursusIsarSerialize(
  CursusIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.id);
  writer.writeString(offsets[2], object.kind);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.slug);
}

CursusIsar _cursusIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CursusIsar(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    id: reader.readLongOrNull(offsets[1]),
    kind: reader.readStringOrNull(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
    slug: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _cursusIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
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

extension CursusIsarQueryFilter
    on QueryBuilder<CursusIsar, CursusIsar, QFilterCondition> {
  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition>
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kind',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kind',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> kindIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slug',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: '',
      ));
    });
  }

  QueryBuilder<CursusIsar, CursusIsar, QAfterFilterCondition> slugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slug',
        value: '',
      ));
    });
  }
}

extension CursusIsarQueryObject
    on QueryBuilder<CursusIsar, CursusIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const SkillIsarSchema = Schema(
  name: r'SkillIsar',
  id: -3,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'level': PropertySchema(
      id: 1,
      name: r'level',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _skillIsarEstimateSize,
  serialize: _skillIsarSerialize,
  deserialize: _skillIsarDeserialize,
  deserializeProp: _skillIsarDeserializeProp,
);

int _skillIsarEstimateSize(
  SkillIsar object,
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
  return bytesCount;
}

void _skillIsarSerialize(
  SkillIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeDouble(offsets[1], object.level);
  writer.writeString(offsets[2], object.name);
}

SkillIsar _skillIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SkillIsar(
    id: reader.readLongOrNull(offsets[0]),
    level: reader.readDoubleOrNull(offsets[1]),
    name: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _skillIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SkillIsarQueryFilter
    on QueryBuilder<SkillIsar, SkillIsar, QFilterCondition> {
  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> levelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> levelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> levelEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> levelGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> levelLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> levelBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SkillIsar, SkillIsar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension SkillIsarQueryObject
    on QueryBuilder<SkillIsar, SkillIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const UserClassIsarSchema = Schema(
  name: r'UserClassIsar',
  id: -445,
  properties: {
    r'active': PropertySchema(
      id: 0,
      name: r'active',
      type: IsarType.bool,
    ),
    r'alumni': PropertySchema(
      id: 1,
      name: r'alumni',
      type: IsarType.bool,
    ),
    r'anonymizeDate': PropertySchema(
      id: 2,
      name: r'anonymizeDate',
      type: IsarType.dateTime,
    ),
    r'correctionPoint': PropertySchema(
      id: 3,
      name: r'correctionPoint',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'dataErasureDate': PropertySchema(
      id: 5,
      name: r'dataErasureDate',
      type: IsarType.dateTime,
    ),
    r'displayname': PropertySchema(
      id: 6,
      name: r'displayname',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 7,
      name: r'email',
      type: IsarType.string,
    ),
    r'firstName': PropertySchema(
      id: 8,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 9,
      name: r'id',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 10,
      name: r'image',
      type: IsarType.object,
      target: r'ImageIsar',
    ),
    r'imageUrl': PropertySchema(
      id: 11,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'kind': PropertySchema(
      id: 12,
      name: r'kind',
      type: IsarType.string,
    ),
    r'lastName': PropertySchema(
      id: 13,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 14,
      name: r'location',
      type: IsarType.string,
    ),
    r'login': PropertySchema(
      id: 15,
      name: r'login',
      type: IsarType.string,
    ),
    r'newImageUrl': PropertySchema(
      id: 16,
      name: r'newImageUrl',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 17,
      name: r'phone',
      type: IsarType.string,
    ),
    r'poolMonth': PropertySchema(
      id: 18,
      name: r'poolMonth',
      type: IsarType.string,
    ),
    r'poolYear': PropertySchema(
      id: 19,
      name: r'poolYear',
      type: IsarType.string,
    ),
    r'staff': PropertySchema(
      id: 20,
      name: r'staff',
      type: IsarType.bool,
    ),
    r'updatedAt': PropertySchema(
      id: 21,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(
      id: 22,
      name: r'url',
      type: IsarType.string,
    ),
    r'usualFullName': PropertySchema(
      id: 23,
      name: r'usualFullName',
      type: IsarType.string,
    ),
    r'wallet': PropertySchema(
      id: 24,
      name: r'wallet',
      type: IsarType.long,
    )
  },
  estimateSize: _userClassIsarEstimateSize,
  serialize: _userClassIsarSerialize,
  deserialize: _userClassIsarDeserialize,
  deserializeProp: _userClassIsarDeserializeProp,
);

int _userClassIsarEstimateSize(
  UserClassIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.displayname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.firstName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 +
          ImageIsarSchema.estimateSize(
              value, allOffsets[ImageIsar]!, allOffsets);
    }
  }
  {
    final value = object.imageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kind;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.location;
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
    final value = object.newImageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.poolMonth;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.poolYear;
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
    final value = object.usualFullName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userClassIsarSerialize(
  UserClassIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.active);
  writer.writeBool(offsets[1], object.alumni);
  writer.writeDateTime(offsets[2], object.anonymizeDate);
  writer.writeLong(offsets[3], object.correctionPoint);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeDateTime(offsets[5], object.dataErasureDate);
  writer.writeString(offsets[6], object.displayname);
  writer.writeString(offsets[7], object.email);
  writer.writeString(offsets[8], object.firstName);
  writer.writeLong(offsets[9], object.id);
  writer.writeObject<ImageIsar>(
    offsets[10],
    allOffsets,
    ImageIsarSchema.serialize,
    object.image,
  );
  writer.writeString(offsets[11], object.imageUrl);
  writer.writeString(offsets[12], object.kind);
  writer.writeString(offsets[13], object.lastName);
  writer.writeString(offsets[14], object.location);
  writer.writeString(offsets[15], object.login);
  writer.writeString(offsets[16], object.newImageUrl);
  writer.writeString(offsets[17], object.phone);
  writer.writeString(offsets[18], object.poolMonth);
  writer.writeString(offsets[19], object.poolYear);
  writer.writeBool(offsets[20], object.staff);
  writer.writeDateTime(offsets[21], object.updatedAt);
  writer.writeString(offsets[22], object.url);
  writer.writeString(offsets[23], object.usualFullName);
  writer.writeLong(offsets[24], object.wallet);
}

UserClassIsar _userClassIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserClassIsar(
    active: reader.readBoolOrNull(offsets[0]),
    alumni: reader.readBoolOrNull(offsets[1]),
    anonymizeDate: reader.readDateTimeOrNull(offsets[2]),
    correctionPoint: reader.readLongOrNull(offsets[3]),
    createdAt: reader.readDateTimeOrNull(offsets[4]),
    dataErasureDate: reader.readDateTimeOrNull(offsets[5]),
    displayname: reader.readStringOrNull(offsets[6]),
    email: reader.readStringOrNull(offsets[7]),
    firstName: reader.readStringOrNull(offsets[8]),
    id: reader.readLongOrNull(offsets[9]),
    image: reader.readObjectOrNull<ImageIsar>(
      offsets[10],
      ImageIsarSchema.deserialize,
      allOffsets,
    ),
    imageUrl: reader.readStringOrNull(offsets[11]),
    kind: reader.readStringOrNull(offsets[12]),
    lastName: reader.readStringOrNull(offsets[13]),
    location: reader.readStringOrNull(offsets[14]),
    login: reader.readStringOrNull(offsets[15]),
    newImageUrl: reader.readStringOrNull(offsets[16]),
    phone: reader.readStringOrNull(offsets[17]),
    poolMonth: reader.readStringOrNull(offsets[18]),
    poolYear: reader.readStringOrNull(offsets[19]),
    staff: reader.readBoolOrNull(offsets[20]),
    updatedAt: reader.readDateTimeOrNull(offsets[21]),
    url: reader.readStringOrNull(offsets[22]),
    usualFullName: reader.readStringOrNull(offsets[23]),
    wallet: reader.readLongOrNull(offsets[24]),
  );
  return object;
}

P _userClassIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<ImageIsar>(
        offset,
        ImageIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readBoolOrNull(offset)) as P;
    case 21:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension UserClassIsarQueryFilter
    on QueryBuilder<UserClassIsar, UserClassIsar, QFilterCondition> {
  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      activeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      activeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      activeEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      alumniIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alumni',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      alumniIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alumni',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      alumniEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alumni',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      anonymizeDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'anonymizeDate',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      anonymizeDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'anonymizeDate',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      anonymizeDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'anonymizeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      anonymizeDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'anonymizeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      anonymizeDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'anonymizeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      anonymizeDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'anonymizeDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      correctionPointIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctionPoint',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      correctionPointIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctionPoint',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      correctionPointEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctionPoint',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      correctionPointGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctionPoint',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      correctionPointLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctionPoint',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      correctionPointBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctionPoint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      dataErasureDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dataErasureDate',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      dataErasureDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dataErasureDate',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      dataErasureDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataErasureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      dataErasureDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataErasureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      dataErasureDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataErasureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      dataErasureDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataErasureDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'displayname',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'displayname',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'displayname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'displayname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'displayname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayname',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      displaynameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'displayname',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kind',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> kindEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> kindBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kind',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> kindMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kind',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      kindIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kind',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      loginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      loginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'login',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      loginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      loginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'login',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      loginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      loginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'newImageUrl',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'newImageUrl',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'newImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'newImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      newImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'newImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'poolMonth',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'poolMonth',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'poolMonth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'poolMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'poolMonth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolMonth',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolMonthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'poolMonth',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'poolYear',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'poolYear',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'poolYear',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'poolYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'poolYear',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolYear',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      poolYearIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'poolYear',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      staffIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'staff',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      staffIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'staff',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      staffEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'staff',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> urlEqualTo(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> urlLessThan(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> urlBetween(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> urlEndsWith(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> urlContains(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> urlMatches(
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

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usualFullName',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usualFullName',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usualFullName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usualFullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usualFullName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usualFullName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      usualFullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usualFullName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      walletIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wallet',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      walletIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wallet',
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      walletEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wallet',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      walletGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wallet',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      walletLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wallet',
        value: value,
      ));
    });
  }

  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition>
      walletBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wallet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserClassIsarQueryObject
    on QueryBuilder<UserClassIsar, UserClassIsar, QFilterCondition> {
  QueryBuilder<UserClassIsar, UserClassIsar, QAfterFilterCondition> image(
      FilterQuery<ImageIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'image');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ImageIsarSchema = Schema(
  name: r'ImageIsar',
  id: -1,
  properties: {
    r'link': PropertySchema(
      id: 0,
      name: r'link',
      type: IsarType.string,
    ),
    r'versions': PropertySchema(
      id: 1,
      name: r'versions',
      type: IsarType.object,
      target: r'VersionsIsar',
    )
  },
  estimateSize: _imageIsarEstimateSize,
  serialize: _imageIsarSerialize,
  deserialize: _imageIsarDeserialize,
  deserializeProp: _imageIsarDeserializeProp,
);

int _imageIsarEstimateSize(
  ImageIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.link;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.versions;
    if (value != null) {
      bytesCount += 3 +
          VersionsIsarSchema.estimateSize(
              value, allOffsets[VersionsIsar]!, allOffsets);
    }
  }
  return bytesCount;
}

void _imageIsarSerialize(
  ImageIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.link);
  writer.writeObject<VersionsIsar>(
    offsets[1],
    allOffsets,
    VersionsIsarSchema.serialize,
    object.versions,
  );
}

ImageIsar _imageIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ImageIsar(
    link: reader.readStringOrNull(offsets[0]),
    versions: reader.readObjectOrNull<VersionsIsar>(
      offsets[1],
      VersionsIsarSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _imageIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<VersionsIsar>(
        offset,
        VersionsIsarSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ImageIsarQueryFilter
    on QueryBuilder<ImageIsar, ImageIsar, QFilterCondition> {
  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'link',
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'link',
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'link',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'link',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'link',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'link',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> linkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'link',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> versionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'versions',
      ));
    });
  }

  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition>
      versionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'versions',
      ));
    });
  }
}

extension ImageIsarQueryObject
    on QueryBuilder<ImageIsar, ImageIsar, QFilterCondition> {
  QueryBuilder<ImageIsar, ImageIsar, QAfterFilterCondition> versions(
      FilterQuery<VersionsIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'versions');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const VersionsIsarSchema = Schema(
  name: r'VersionsIsar',
  id: 0843,
  properties: {
    r'large': PropertySchema(
      id: 0,
      name: r'large',
      type: IsarType.string,
    ),
    r'medium': PropertySchema(
      id: 1,
      name: r'medium',
      type: IsarType.string,
    ),
    r'micro': PropertySchema(
      id: 2,
      name: r'micro',
      type: IsarType.string,
    ),
    r'small': PropertySchema(
      id: 3,
      name: r'small',
      type: IsarType.string,
    )
  },
  estimateSize: _versionsIsarEstimateSize,
  serialize: _versionsIsarSerialize,
  deserialize: _versionsIsarDeserialize,
  deserializeProp: _versionsIsarDeserializeProp,
);

int _versionsIsarEstimateSize(
  VersionsIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.large;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.medium;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.micro;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.small;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _versionsIsarSerialize(
  VersionsIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.large);
  writer.writeString(offsets[1], object.medium);
  writer.writeString(offsets[2], object.micro);
  writer.writeString(offsets[3], object.small);
}

VersionsIsar _versionsIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VersionsIsar(
    large: reader.readStringOrNull(offsets[0]),
    medium: reader.readStringOrNull(offsets[1]),
    micro: reader.readStringOrNull(offsets[2]),
    small: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _versionsIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension VersionsIsarQueryFilter
    on QueryBuilder<VersionsIsar, VersionsIsar, QFilterCondition> {
  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      largeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'large',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      largeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'large',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> largeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      largeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> largeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> largeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'large',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      largeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> largeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> largeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> largeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'large',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      largeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'large',
        value: '',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      largeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'large',
        value: '',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medium',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medium',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> mediumEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> mediumBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medium',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> mediumMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medium',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medium',
        value: '',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      mediumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medium',
        value: '',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      microIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'micro',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      microIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'micro',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> microEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'micro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      microGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'micro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> microLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'micro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> microBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'micro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      microStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'micro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> microEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'micro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> microContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'micro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> microMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'micro',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      microIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'micro',
        value: '',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      microIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'micro',
        value: '',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      smallIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'small',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      smallIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'small',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> smallEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      smallGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> smallLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> smallBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'small',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      smallStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> smallEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> smallContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition> smallMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'small',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      smallIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'small',
        value: '',
      ));
    });
  }

  QueryBuilder<VersionsIsar, VersionsIsar, QAfterFilterCondition>
      smallIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'small',
        value: '',
      ));
    });
  }
}

extension VersionsIsarQueryObject
    on QueryBuilder<VersionsIsar, VersionsIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ExpertisesUserIsarSchema = Schema(
  name: r'ExpertisesUserIsar',
  id: -874483,
  properties: {
    r'contactMe': PropertySchema(
      id: 0,
      name: r'contactMe',
      type: IsarType.bool,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'expertiseId': PropertySchema(
      id: 2,
      name: r'expertiseId',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'interested': PropertySchema(
      id: 4,
      name: r'interested',
      type: IsarType.bool,
    ),
    r'userId': PropertySchema(
      id: 5,
      name: r'userId',
      type: IsarType.long,
    ),
    r'value': PropertySchema(
      id: 6,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _expertisesUserIsarEstimateSize,
  serialize: _expertisesUserIsarSerialize,
  deserialize: _expertisesUserIsarDeserialize,
  deserializeProp: _expertisesUserIsarDeserializeProp,
);

int _expertisesUserIsarEstimateSize(
  ExpertisesUserIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _expertisesUserIsarSerialize(
  ExpertisesUserIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.contactMe);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeLong(offsets[2], object.expertiseId);
  writer.writeLong(offsets[3], object.id);
  writer.writeBool(offsets[4], object.interested);
  writer.writeLong(offsets[5], object.userId);
  writer.writeLong(offsets[6], object.value);
}

ExpertisesUserIsar _expertisesUserIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExpertisesUserIsar(
    contactMe: reader.readBoolOrNull(offsets[0]),
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    expertiseId: reader.readLongOrNull(offsets[2]),
    id: reader.readLongOrNull(offsets[3]),
    interested: reader.readBoolOrNull(offsets[4]),
    userId: reader.readLongOrNull(offsets[5]),
    value: reader.readLongOrNull(offsets[6]),
  );
  return object;
}

P _expertisesUserIsarDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ExpertisesUserIsarQueryFilter
    on QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QFilterCondition> {
  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      contactMeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactMe',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      contactMeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactMe',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      contactMeEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactMe',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      expertiseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expertiseId',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      expertiseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expertiseId',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      expertiseIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expertiseId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      expertiseIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expertiseId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      expertiseIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expertiseId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      expertiseIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expertiseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      interestedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'interested',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      interestedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'interested',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      interestedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'interested',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      userIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      userIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      userIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      userIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      valueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      valueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      valueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QAfterFilterCondition>
      valueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExpertisesUserIsarQueryObject
    on QueryBuilder<ExpertisesUserIsar, ExpertisesUserIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const LanguagesUserIsarSchema = Schema(
  name: r'LanguagesUserIsar',
  id: -094933,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.long,
    ),
    r'languageId': PropertySchema(
      id: 2,
      name: r'languageId',
      type: IsarType.long,
    ),
    r'position': PropertySchema(
      id: 3,
      name: r'position',
      type: IsarType.long,
    ),
    r'userId': PropertySchema(
      id: 4,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _languagesUserIsarEstimateSize,
  serialize: _languagesUserIsarSerialize,
  deserialize: _languagesUserIsarDeserialize,
  deserializeProp: _languagesUserIsarDeserializeProp,
);

int _languagesUserIsarEstimateSize(
  LanguagesUserIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _languagesUserIsarSerialize(
  LanguagesUserIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.id);
  writer.writeLong(offsets[2], object.languageId);
  writer.writeLong(offsets[3], object.position);
  writer.writeLong(offsets[4], object.userId);
}

LanguagesUserIsar _languagesUserIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LanguagesUserIsar(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    id: reader.readLongOrNull(offsets[1]),
    languageId: reader.readLongOrNull(offsets[2]),
    position: reader.readLongOrNull(offsets[3]),
    userId: reader.readLongOrNull(offsets[4]),
  );
  return object;
}

P _languagesUserIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LanguagesUserIsarQueryFilter
    on QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QFilterCondition> {
  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
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

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      languageIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'languageId',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      languageIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'languageId',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      languageIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageId',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      languageIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languageId',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      languageIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languageId',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      languageIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languageId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      positionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'position',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      positionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'position',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      positionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      positionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'position',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      positionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'position',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      positionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'position',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      userIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      userIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      userIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QAfterFilterCondition>
      userIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LanguagesUserIsarQueryObject
    on QueryBuilder<LanguagesUserIsar, LanguagesUserIsar, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ProjectsUserIsarSchema = Schema(
  name: r'ProjectsUserIsar',
  id: 98232,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'currentTeamId': PropertySchema(
      id: 1,
      name: r'currentTeamId',
      type: IsarType.long,
    ),
    r'cursusIds': PropertySchema(
      id: 2,
      name: r'cursusIds',
      type: IsarType.longList,
    ),
    r'finalMark': PropertySchema(
      id: 3,
      name: r'finalMark',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.long,
    ),
    r'marked': PropertySchema(
      id: 5,
      name: r'marked',
      type: IsarType.bool,
    ),
    r'markedAt': PropertySchema(
      id: 6,
      name: r'markedAt',
      type: IsarType.dateTime,
    ),
    r'occurrence': PropertySchema(
      id: 7,
      name: r'occurrence',
      type: IsarType.long,
    ),
    r'project': PropertySchema(
      id: 8,
      name: r'project',
      type: IsarType.object,
      target: r'ProjectIsar',
    ),
    r'retriableAt': PropertySchema(
      id: 9,
      name: r'retriableAt',
      type: IsarType.dateTime,
    ),
    r'status': PropertySchema(
      id: 10,
      name: r'status',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 11,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'validated': PropertySchema(
      id: 12,
      name: r'validated',
      type: IsarType.bool,
    )
  },
  estimateSize: _projectsUserIsarEstimateSize,
  serialize: _projectsUserIsarSerialize,
  deserialize: _projectsUserIsarDeserialize,
  deserializeProp: _projectsUserIsarDeserializeProp,
);

int _projectsUserIsarEstimateSize(
  ProjectsUserIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cursusIds;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.project;
    if (value != null) {
      bytesCount += 3 +
          ProjectIsarSchema.estimateSize(
              value, allOffsets[ProjectIsar]!, allOffsets);
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _projectsUserIsarSerialize(
  ProjectsUserIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.currentTeamId);
  writer.writeLongList(offsets[2], object.cursusIds);
  writer.writeLong(offsets[3], object.finalMark);
  writer.writeLong(offsets[4], object.id);
  writer.writeBool(offsets[5], object.marked);
  writer.writeDateTime(offsets[6], object.markedAt);
  writer.writeLong(offsets[7], object.occurrence);
  writer.writeObject<ProjectIsar>(
    offsets[8],
    allOffsets,
    ProjectIsarSchema.serialize,
    object.project,
  );
  writer.writeDateTime(offsets[9], object.retriableAt);
  writer.writeString(offsets[10], object.status);
  writer.writeDateTime(offsets[11], object.updatedAt);
  writer.writeBool(offsets[12], object.validated);
}

ProjectsUserIsar _projectsUserIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProjectsUserIsar(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    currentTeamId: reader.readLongOrNull(offsets[1]),
    cursusIds: reader.readLongList(offsets[2]),
    finalMark: reader.readLongOrNull(offsets[3]),
    id: reader.readLongOrNull(offsets[4]),
    marked: reader.readBoolOrNull(offsets[5]),
    markedAt: reader.readDateTimeOrNull(offsets[6]),
    occurrence: reader.readLongOrNull(offsets[7]),
    project: reader.readObjectOrNull<ProjectIsar>(
      offsets[8],
      ProjectIsarSchema.deserialize,
      allOffsets,
    ),
    retriableAt: reader.readDateTimeOrNull(offsets[9]),
    status: reader.readStringOrNull(offsets[10]),
    updatedAt: reader.readDateTimeOrNull(offsets[11]),
    validated: reader.readBoolOrNull(offsets[12]),
  );
  return object;
}

P _projectsUserIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongList(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<ProjectIsar>(
        offset,
        ProjectIsarSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProjectsUserIsarQueryFilter
    on QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QFilterCondition> {
  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      currentTeamIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentTeamId',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      currentTeamIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentTeamId',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      currentTeamIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentTeamId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      currentTeamIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentTeamId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      currentTeamIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentTeamId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      currentTeamIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentTeamId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cursusIds',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cursusIds',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cursusIds',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cursusIds',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cursusIds',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cursusIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      cursusIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cursusIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      finalMarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finalMark',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      finalMarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finalMark',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      finalMarkEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalMark',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      finalMarkGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finalMark',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      finalMarkLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finalMark',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      finalMarkBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finalMark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marked',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marked',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marked',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'markedAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'markedAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'markedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'markedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'markedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      markedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'markedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      occurrenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'occurrence',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      occurrenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'occurrence',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      occurrenceEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occurrence',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      projectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'project',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      projectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'project',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      retriableAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'retriableAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      retriableAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'retriableAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      retriableAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'retriableAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      retriableAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'retriableAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      retriableAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'retriableAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      retriableAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'retriableAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusEqualTo(
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusGreaterThan(
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusLessThan(
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusBetween(
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusStartsWith(
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusEndsWith(
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
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

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      validatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'validated',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      validatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'validated',
      ));
    });
  }

  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      validatedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validated',
        value: value,
      ));
    });
  }
}

extension ProjectsUserIsarQueryObject
    on QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QFilterCondition> {
  QueryBuilder<ProjectsUserIsar, ProjectsUserIsar, QAfterFilterCondition>
      project(FilterQuery<ProjectIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'project');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ProjectIsarSchema = Schema(
  name: r'ProjectIsar',
  id: 02982882,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'slug': PropertySchema(
      id: 2,
      name: r'slug',
      type: IsarType.string,
    )
  },
  estimateSize: _projectIsarEstimateSize,
  serialize: _projectIsarSerialize,
  deserialize: _projectIsarDeserialize,
  deserializeProp: _projectIsarDeserializeProp,
);

int _projectIsarEstimateSize(
  ProjectIsar object,
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
    final value = object.slug;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _projectIsarSerialize(
  ProjectIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.slug);
}

ProjectIsar _projectIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProjectIsar(
    id: reader.readLongOrNull(offsets[0]),
    name: reader.readStringOrNull(offsets[1]),
    slug: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _projectIsarDeserializeProp<P>(
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

extension ProjectIsarQueryFilter
    on QueryBuilder<ProjectIsar, ProjectIsar, QFilterCondition> {
  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition>
      slugIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slug',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition> slugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: '',
      ));
    });
  }

  QueryBuilder<ProjectIsar, ProjectIsar, QAfterFilterCondition>
      slugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slug',
        value: '',
      ));
    });
  }
}

extension ProjectIsarQueryObject
    on QueryBuilder<ProjectIsar, ProjectIsar, QFilterCondition> {}
