// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      login: json['login'] as String?,
      campusName: json['campusName'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      usualFullName: json['usual_full_name'] as String?,
      usualFirstName: json['usual_first_name'],
      url: json['url'] as String?,
      phone: json['phone'] as String?,
      displayname: json['displayname'] as String?,
      kind: json['kind'] as String?,
      imageUrl: json['image_url'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      newImageUrl: json['new_image_url'] as String?,
      staff: json['staff'] as bool?,
      correctionPoint: (json['correction_point'] as num?)?.toInt(),
      poolMonth: json['pool_month'] as String?,
      poolYear: json['pool_year'] as String?,
      location: json['location'] as String?,
      wallet: (json['wallet'] as num?)?.toInt(),
      anonymizeDate: json['anonymize_date'] == null
          ? null
          : DateTime.parse(json['anonymize_date'] as String),
      dataErasureDate: json['dataErasure_date'] == null
          ? null
          : DateTime.parse(json['dataErasure_date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      alumnizedAt: json['alumnized_at'],
      alumni: json['alumni'] as bool?,
      active: json['active'] as bool?,
      groups: json['groups'] as List<dynamic>?,
      cursusUsers: (json['cursus_users'] as List<dynamic>?)
          ?.map((e) => CursusUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      projectsUsers: (json['projects_users'] as List<dynamic>?)
          ?.map((e) => ProjectsUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      languagesUsers: (json['languages_users'] as List<dynamic>?)
          ?.map((e) => LanguagesUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      achievements: (json['achievements'] as List<dynamic>?)
          ?.map((e) => Achievement.fromJson(e as Map<String, dynamic>))
          .toList(),
      titles: json['titles'] as List<dynamic>?,
      titlesUsers: json['titles_users'] as List<dynamic>?,
      partnerships: json['partnerships'] as List<dynamic>?,
      patroned: json['patroned'] as List<dynamic>?,
      patroning: json['patroning'] as List<dynamic>?,
      expertisesUsers: (json['expertises_users'] as List<dynamic>?)
          ?.map((e) => ExpertisesUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: json['roles'] as List<dynamic>?,
      campus: (json['campus'] as List<dynamic>?)
          ?.map((e) => Campus.fromJson(e as Map<String, dynamic>))
          .toList(),
      campusUsers: (json['campus_users'] as List<dynamic>?)
          ?.map((e) => CampusUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      blackHole: json['blackHole'] == null
          ? null
          : BlackHoleData.fromJson(json['blackHole'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'login': instance.login,
      'campusName': instance.campusName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'usual_full_name': instance.usualFullName,
      'usual_first_name': instance.usualFirstName,
      'url': instance.url,
      'phone': instance.phone,
      'displayname': instance.displayname,
      'kind': instance.kind,
      'image_url': instance.imageUrl,
      'image': instance.image,
      'new_image_url': instance.newImageUrl,
      'staff': instance.staff,
      'correction_point': instance.correctionPoint,
      'pool_month': instance.poolMonth,
      'pool_year': instance.poolYear,
      'location': instance.location,
      'wallet': instance.wallet,
      'anonymize_date': instance.anonymizeDate?.toIso8601String(),
      'dataErasure_date': instance.dataErasureDate?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'alumnized_at': instance.alumnizedAt,
      'alumni': instance.alumni,
      'active': instance.active,
      'groups': instance.groups,
      'cursus_users': instance.cursusUsers,
      'projects_users': instance.projectsUsers,
      'languages_users': instance.languagesUsers,
      'achievements': instance.achievements,
      'titles': instance.titles,
      'titles_users': instance.titlesUsers,
      'partnerships': instance.partnerships,
      'patroned': instance.patroned,
      'patroning': instance.patroning,
      'expertises_users': instance.expertisesUsers,
      'roles': instance.roles,
      'campus': instance.campus,
      'campus_users': instance.campusUsers,
      'blackHole': instance.blackHole,
    };

_$AchievementImpl _$$AchievementImplFromJson(Map<String, dynamic> json) =>
    _$AchievementImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      tier: json['tier'] as String?,
      kind: json['kind'] as String?,
      visible: json['visible'] as bool?,
      image: json['image'] as String?,
      nbrOfSuccess: (json['nbr_of_success'] as num?)?.toInt(),
      usersUrl: json['users_url'] as String?,
    );

Map<String, dynamic> _$$AchievementImplToJson(_$AchievementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tier': instance.tier,
      'kind': instance.kind,
      'visible': instance.visible,
      'image': instance.image,
      'nbr_of_success': instance.nbrOfSuccess,
      'users_url': instance.usersUrl,
    };

_$CampusImpl _$$CampusImplFromJson(Map<String, dynamic> json) => _$CampusImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      timeZone: json['time_zone'] as String?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
      usersCount: (json['users_count'] as num?)?.toInt(),
      vogsphereId: (json['vogsphere_id'] as num?)?.toInt(),
      country: json['country'] as String?,
      address: json['address'] as String?,
      zip: json['zip'] as String?,
      city: json['city'] as String?,
      website: json['website'] as String?,
      facebook: json['facebook'] as String?,
      twitter: json['twitter'] as String?,
      active: json['active'] as bool?,
      public: json['public'] as bool?,
      emailExtension: json['email_extension'] as String?,
      defaultHiddenPhone: json['default_hidden_phone'] as bool?,
    );

Map<String, dynamic> _$$CampusImplToJson(_$CampusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'time_zone': instance.timeZone,
      'language': instance.language,
      'users_count': instance.usersCount,
      'vogsphere_id': instance.vogsphereId,
      'country': instance.country,
      'address': instance.address,
      'zip': instance.zip,
      'city': instance.city,
      'website': instance.website,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'active': instance.active,
      'public': instance.public,
      'email_extension': instance.emailExtension,
      'default_hidden_phone': instance.defaultHiddenPhone,
    };

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      identifier: json['identifier'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'identifier': instance.identifier,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CampusUserImpl _$$CampusUserImplFromJson(Map<String, dynamic> json) =>
    _$CampusUserImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      campusId: (json['campus_id'] as num?)?.toInt(),
      isPrimary: json['is_primary'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CampusUserImplToJson(_$CampusUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'campus_id': instance.campusId,
      'is_primary': instance.isPrimary,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CursusUserImpl _$$CursusUserImplFromJson(Map<String, dynamic> json) =>
    _$CursusUserImpl(
      grade: json['grade'] as String?,
      level: (json['level'] as num?)?.toDouble(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      blackholedAt: json['blackholed_at'] == null
          ? null
          : DateTime.parse(json['blackholed_at'] as String),
      id: (json['id'] as num?)?.toInt(),
      beginAt: json['begin_at'] == null
          ? null
          : DateTime.parse(json['begin_at'] as String),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      cursusId: (json['cursus_id'] as num?)?.toInt(),
      hasCoalition: json['hasCoalition'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : UserClass.fromJson(json['user'] as Map<String, dynamic>),
      cursus: json['cursus'] == null
          ? null
          : Cursus.fromJson(json['cursus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CursusUserImplToJson(_$CursusUserImpl instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      'level': instance.level,
      'skills': instance.skills,
      'blackholed_at': instance.blackholedAt?.toIso8601String(),
      'id': instance.id,
      'begin_at': instance.beginAt?.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
      'cursus_id': instance.cursusId,
      'hasCoalition': instance.hasCoalition,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'cursus': instance.cursus,
    };

_$CursusImpl _$$CursusImplFromJson(Map<String, dynamic> json) => _$CursusImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      kind: json['kind'] as String?,
    );

Map<String, dynamic> _$$CursusImplToJson(_$CursusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'name': instance.name,
      'slug': instance.slug,
      'kind': instance.kind,
    };

_$SkillImpl _$$SkillImplFromJson(Map<String, dynamic> json) => _$SkillImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      level: (json['level'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SkillImplToJson(_$SkillImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
    };

_$UserClassImpl _$$UserClassImplFromJson(Map<String, dynamic> json) =>
    _$UserClassImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      login: json['login'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      usualFullName: json['usual_full_name'] as String?,
      usualFirstName: json['usual_first_name'],
      url: json['url'] as String?,
      phone: json['phone'] as String?,
      displayName: json['displayname'] as String?,
      kind: json['kind'] as String?,
      imageUrl: json['image_url'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      newImageUrl: json['new_image_url'] as String?,
      staff: json['staff'] as bool?,
      correctionPoint: (json['correction_point'] as num?)?.toInt(),
      poolMonth: json['pool_month'] as String?,
      poolYear: json['pool_year'] as String?,
      location: json['location'] as String?,
      wallet: (json['wallet'] as num?)?.toInt(),
      anonymizeDate: json['anonymize_date'] == null
          ? null
          : DateTime.parse(json['anonymize_date'] as String),
      dataErasureDate: json['dataErasure_date'] == null
          ? null
          : DateTime.parse(json['dataErasure_date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      alumnizedAt: json['alumnized_at'],
      alumni: json['alumni'] as bool?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$UserClassImplToJson(_$UserClassImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'login': instance.login,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'usual_full_name': instance.usualFullName,
      'usual_first_name': instance.usualFirstName,
      'url': instance.url,
      'phone': instance.phone,
      'displayname': instance.displayName,
      'kind': instance.kind,
      'image_url': instance.imageUrl,
      'image': instance.image,
      'new_image_url': instance.newImageUrl,
      'staff': instance.staff,
      'correction_point': instance.correctionPoint,
      'pool_month': instance.poolMonth,
      'pool_year': instance.poolYear,
      'location': instance.location,
      'wallet': instance.wallet,
      'anonymize_date': instance.anonymizeDate?.toIso8601String(),
      'dataErasure_date': instance.dataErasureDate?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'alumnized_at': instance.alumnizedAt,
      'alumni': instance.alumni,
      'active': instance.active,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      link: json['link'] as String?,
      versions: json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'versions': instance.versions,
    };

_$VersionsImpl _$$VersionsImplFromJson(Map<String, dynamic> json) =>
    _$VersionsImpl(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      small: json['small'] as String?,
      micro: json['micro'] as String?,
    );

Map<String, dynamic> _$$VersionsImplToJson(_$VersionsImpl instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'micro': instance.micro,
    };

_$ExpertisesUserImpl _$$ExpertisesUserImplFromJson(Map<String, dynamic> json) =>
    _$ExpertisesUserImpl(
      id: (json['id'] as num?)?.toInt(),
      expertiseId: (json['expertise_id'] as num?)?.toInt(),
      interested: json['interested'] as bool?,
      value: (json['value'] as num?)?.toInt(),
      contactMe: json['contact_me'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ExpertisesUserImplToJson(
        _$ExpertisesUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expertise_id': instance.expertiseId,
      'interested': instance.interested,
      'value': instance.value,
      'contact_me': instance.contactMe,
      'created_at': instance.createdAt?.toIso8601String(),
      'userId': instance.userId,
    };

_$LanguagesUserImpl _$$LanguagesUserImplFromJson(Map<String, dynamic> json) =>
    _$LanguagesUserImpl(
      id: (json['id'] as num?)?.toInt(),
      languageId: (json['language_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      position: (json['position'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$LanguagesUserImplToJson(_$LanguagesUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'user_id': instance.userId,
      'position': instance.position,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$ProjectsUserImpl _$$ProjectsUserImplFromJson(Map<String, dynamic> json) =>
    _$ProjectsUserImpl(
      id: (json['id'] as num?)?.toInt(),
      occurrence: (json['occurrence'] as num?)?.toInt(),
      finalMark: (json['final_mark'] as num?)?.toInt(),
      status: json['status'] as String?,
      validated: json['validated'] as bool?,
      currentTeamId: (json['current_team_id'] as num?)?.toInt(),
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      cursusIds: (json['cursus_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      markedAt: json['marked_at'] == null
          ? null
          : DateTime.parse(json['marked_at'] as String),
      marked: json['marked'] as bool?,
      retriableAt: json['retriable_at'] == null
          ? null
          : DateTime.parse(json['retriable_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ProjectsUserImplToJson(_$ProjectsUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'occurrence': instance.occurrence,
      'final_mark': instance.finalMark,
      'status': instance.status,
      'validated': instance.validated,
      'current_team_id': instance.currentTeamId,
      'project': instance.project,
      'cursus_ids': instance.cursusIds,
      'marked_at': instance.markedAt?.toIso8601String(),
      'marked': instance.marked,
      'retriable_at': instance.retriableAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      parentId: json['parent_id'],
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent_id': instance.parentId,
    };
