// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      email: json['email'] as String?,
      login: json['login'] as String?,
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
      correctionPoint: json['correction_point'] as int?,
      poolMonth: json['pool_month'] as String?,
      poolYear: json['pool_year'] as String?,
      location: json['location'] as String?,
      wallet: json['wallet'] as int?,
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
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'login': instance.login,
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
    };

_$_Achievement _$$_AchievementFromJson(Map<String, dynamic> json) =>
    _$_Achievement(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      tier: json['tier'] as String?,
      kind: json['kind'] as String?,
      visible: json['visible'] as bool?,
      image: json['image'] as String?,
      nbrOfSuccess: json['nbr_of_success'] as int?,
      usersUrl: json['users_url'] as String?,
    );

Map<String, dynamic> _$$_AchievementToJson(_$_Achievement instance) =>
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

_$_Campus _$$_CampusFromJson(Map<String, dynamic> json) => _$_Campus(
      id: json['id'] as int?,
      name: json['name'] as String?,
      timeZone: json['time_zone'] as String?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
      usersCount: json['users_count'] as int?,
      vogsphereId: json['vogsphere_id'] as int?,
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

Map<String, dynamic> _$$_CampusToJson(_$_Campus instance) => <String, dynamic>{
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

_$_Language _$$_LanguageFromJson(Map<String, dynamic> json) => _$_Language(
      id: json['id'] as int?,
      name: json['name'] as String?,
      identifier: json['identifier'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'identifier': instance.identifier,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$_CampusUser _$$_CampusUserFromJson(Map<String, dynamic> json) =>
    _$_CampusUser(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      campusId: json['campus_id'] as int?,
      isPrimary: json['is_primary'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_CampusUserToJson(_$_CampusUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'campus_id': instance.campusId,
      'is_primary': instance.isPrimary,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$_CursusUser _$$_CursusUserFromJson(Map<String, dynamic> json) =>
    _$_CursusUser(
      grade: json['grade'] as String?,
      level: (json['level'] as num?)?.toDouble(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      blackholedAt: json['blackholed_at'] == null
          ? null
          : DateTime.parse(json['blackholed_at'] as String),
      id: json['id'] as int?,
      beginAt: json['begin_at'] == null
          ? null
          : DateTime.parse(json['begin_at'] as String),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      cursusId: json['cursus_id'] as int?,
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

Map<String, dynamic> _$$_CursusUserToJson(_$_CursusUser instance) =>
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

_$_Cursus _$$_CursusFromJson(Map<String, dynamic> json) => _$_Cursus(
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      kind: json['kind'] as String?,
    );

Map<String, dynamic> _$$_CursusToJson(_$_Cursus instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'name': instance.name,
      'slug': instance.slug,
      'kind': instance.kind,
    };

_$_Skill _$$_SkillFromJson(Map<String, dynamic> json) => _$_Skill(
      id: json['id'] as int?,
      name: json['name'] as String?,
      level: (json['level'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SkillToJson(_$_Skill instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
    };

_$_UserClass _$$_UserClassFromJson(Map<String, dynamic> json) => _$_UserClass(
      id: json['id'] as int?,
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
      correctionPoint: json['correction_point'] as int?,
      poolMonth: json['pool_month'] as String?,
      poolYear: json['pool_year'] as String?,
      location: json['location'] as String?,
      wallet: json['wallet'] as int?,
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

Map<String, dynamic> _$$_UserClassToJson(_$_UserClass instance) =>
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

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      link: json['link'] as String?,
      versions: json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'link': instance.link,
      'versions': instance.versions,
    };

_$_Versions _$$_VersionsFromJson(Map<String, dynamic> json) => _$_Versions(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      small: json['small'] as String?,
      micro: json['micro'] as String?,
    );

Map<String, dynamic> _$$_VersionsToJson(_$_Versions instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'micro': instance.micro,
    };

_$_ExpertisesUser _$$_ExpertisesUserFromJson(Map<String, dynamic> json) =>
    _$_ExpertisesUser(
      id: json['id'] as int?,
      expertiseId: json['expertise_id'] as int?,
      interested: json['interested'] as bool?,
      value: json['value'] as int?,
      contactMe: json['contact_me'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$$_ExpertisesUserToJson(_$_ExpertisesUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expertise_id': instance.expertiseId,
      'interested': instance.interested,
      'value': instance.value,
      'contact_me': instance.contactMe,
      'created_at': instance.createdAt?.toIso8601String(),
      'userId': instance.userId,
    };

_$_LanguagesUser _$$_LanguagesUserFromJson(Map<String, dynamic> json) =>
    _$_LanguagesUser(
      id: json['id'] as int?,
      languageId: json['language_id'] as int?,
      userId: json['user_id'] as int?,
      position: json['position'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_LanguagesUserToJson(_$_LanguagesUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'user_id': instance.userId,
      'position': instance.position,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$_ProjectsUser _$$_ProjectsUserFromJson(Map<String, dynamic> json) =>
    _$_ProjectsUser(
      id: json['id'] as int?,
      occurrence: json['occurrence'] as int?,
      finalMark: json['final_mark'] as int?,
      status: json['status'] as String?,
      validated: json['validated'] as bool?,
      currentTeamId: json['current_team_id'] as int?,
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      cursusIds:
          (json['cursus_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
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

Map<String, dynamic> _$$_ProjectsUserToJson(_$_ProjectsUser instance) =>
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

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      parent: json['parent'],
      children: json['children'] as List<dynamic>?,
      attachments: json['attachments'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      exam: json['exam'] as bool?,
      gitId: json['gitId'] as int?,
      repository: json['repository'] as String?,
      recommendation: json['recommendation'] as String?,
      cursus: (json['cursus'] as List<dynamic>?)
          ?.map((e) => Cursus.fromJson(e as Map<String, dynamic>))
          .toList(),
      campus: (json['campus'] as List<dynamic>?)
          ?.map((e) => Campus.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: json['videos'] as List<dynamic>?,
      projectSessions: (json['projectSessions'] as List<dynamic>?)
          ?.map((e) => ProjectSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent,
      'children': instance.children,
      'attachments': instance.attachments,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'exam': instance.exam,
      'gitId': instance.gitId,
      'repository': instance.repository,
      'recommendation': instance.recommendation,
      'cursus': instance.cursus,
      'campus': instance.campus,
      'videos': instance.videos,
      'projectSessions': instance.projectSessions,
    };

_$_ProjectSession _$$_ProjectSessionFromJson(Map<String, dynamic> json) =>
    _$_ProjectSession(
      id: json['id'] as int?,
      solo: json['solo'] as bool?,
      beginAt: json['beginAt'],
      endAt: json['endAt'],
      estimateTime: json['estimateTime'] as String?,
      difficulty: json['difficulty'] as int?,
      objectives: (json['objectives'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      durationDays: json['durationDays'],
      terminatingAfter: json['terminatingAfter'],
      projectId: json['projectId'] as int?,
      campusId: json['campusId'] as int?,
      cursusId: json['cursusId'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      maxPeople: json['maxPeople'],
      isSubscriptable: json['isSubscriptable'] as bool?,
      scales: (json['scales'] as List<dynamic>?)
          ?.map((e) => Scale.fromJson(e as Map<String, dynamic>))
          .toList(),
      uploads: (json['uploads'] as List<dynamic>?)
          ?.map((e) => Upload.fromJson(e as Map<String, dynamic>))
          .toList(),
      teamBehaviour: json['teamBehaviour'] as String?,
      commit: json['commit'] as String?,
    );

Map<String, dynamic> _$$_ProjectSessionToJson(_$_ProjectSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'solo': instance.solo,
      'beginAt': instance.beginAt,
      'endAt': instance.endAt,
      'estimateTime': instance.estimateTime,
      'difficulty': instance.difficulty,
      'objectives': instance.objectives,
      'description': instance.description,
      'durationDays': instance.durationDays,
      'terminatingAfter': instance.terminatingAfter,
      'projectId': instance.projectId,
      'campusId': instance.campusId,
      'cursusId': instance.cursusId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'maxPeople': instance.maxPeople,
      'isSubscriptable': instance.isSubscriptable,
      'scales': instance.scales,
      'uploads': instance.uploads,
      'teamBehaviour': instance.teamBehaviour,
      'commit': instance.commit,
    };

_$_Scale _$$_ScaleFromJson(Map<String, dynamic> json) => _$_Scale(
      id: json['id'] as int?,
      correctionNumber: json['correctionNumber'] as int?,
      isPrimary: json['isPrimary'] as bool?,
    );

Map<String, dynamic> _$$_ScaleToJson(_$_Scale instance) => <String, dynamic>{
      'id': instance.id,
      'correctionNumber': instance.correctionNumber,
      'isPrimary': instance.isPrimary,
    };

_$_Upload _$$_UploadFromJson(Map<String, dynamic> json) => _$_Upload(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_UploadToJson(_$_Upload instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
