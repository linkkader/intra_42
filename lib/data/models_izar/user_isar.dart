
import 'package:isar/isar.dart';
import '../models/user.dart';

part 'user_isar.g.dart';

@collection
class UserIsar {
  @Index(unique: true, replace: true)
  final Id isarId;
  @Index(unique: true, replace: true)
  final int? id;
  final String? email;
  @Index(unique: true, replace: true)
  final String? login;
  final String? firstName;
  final String? lastName;
  final String? usualFullName;
  @ignore
  final dynamic usualFirstName;
  final String? url;
  final String? phone;
  final String? displayname;
  final String? kind;
  final String? imageUrl;
  final ImageIsar? image;
  final String? newImageUrl;
  final bool? staff;
  final int? correctionPoint;
  final String? poolMonth;
  final String? poolYear;
  final String? location;
  final int? wallet;
  final DateTime? anonymizeDate;
  final DateTime? dataErasureDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @ignore
  final dynamic alumnizedAt;
  final bool? alumni;
  final bool? active;
  @ignore
  final List<dynamic>? groups;
  final List<CursusUserIsar>? cursusUsers;
  final List<ProjectsUserIsar>? projectsUsers;
  final List<LanguagesUserIsar>? languagesUsers;
  final List<AchievementIsar>? achievements;
  @ignore
  final List<dynamic>? titles;
  @ignore
  final List<dynamic>? titlesUsers;
  @ignore
  final List<dynamic>? partnerships;
  @ignore
  final List<dynamic>? patroned;
  @ignore
  final List<dynamic>? patroning;
  final List<ExpertisesUserIsar>? expertisesUsers;
  @ignore
  final List<dynamic>? roles;
  final List<CampusIsar>? campus;
  final List<CampusUserIsar>? campusUsers;

  const UserIsar({this.email, this.login, this.firstName, this.lastName, this.usualFullName, this.usualFirstName, this.url, this.phone, this.displayname, this.kind, this.imageUrl, this.image, this.newImageUrl, this.staff, this.correctionPoint, this.poolMonth, this.poolYear, this.location, this.wallet, this.anonymizeDate, this.dataErasureDate, this.createdAt, this.updatedAt, this.alumnizedAt, this.alumni, this.active, this.groups, this.cursusUsers, this.projectsUsers, this.languagesUsers, this.achievements, this.titles, this.titlesUsers, this.partnerships, this.patroned, this.patroning, this.expertisesUsers, this.roles, this.campus, this.campusUsers, this.id, this.isarId = 0});

  factory UserIsar.fromFreezed(User? objet, {int? isarId}) => UserIsar (
    isarId: isarId ?? objet?.id ?? 0,
    id: objet?.id ?? 0,
    email: objet?.email,
    login: objet?.login,
    firstName: objet?.firstName,
    lastName: objet?.lastName,
    usualFullName: objet?.usualFullName,
    url: objet?.url,
    phone: objet?.phone,
    displayname: objet?.displayname,
    kind: objet?.kind,
    imageUrl: objet?.imageUrl,
    image: ImageIsar.fromFreezed(objet?.image),
    newImageUrl: objet?.newImageUrl,
    staff: objet?.staff,
    correctionPoint: objet?.correctionPoint,
    poolMonth: objet?.poolMonth,
    poolYear: objet?.poolYear,
    location: objet?.location,
    wallet: objet?.wallet,
    anonymizeDate: objet?.anonymizeDate,
    dataErasureDate: objet?.dataErasureDate,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
    alumni: objet?.alumni,
    active: objet?.active,
    cursusUsers: objet?.cursusUsers?.map((e) => CursusUserIsar.fromFreezed(e)).toList(),
    projectsUsers: objet?.projectsUsers?.map((e) => ProjectsUserIsar.fromFreezed(e)).toList(),
    languagesUsers: objet?.languagesUsers?.map((e) => LanguagesUserIsar.fromFreezed(e)).toList(),
    achievements: objet?.achievements?.map((e) => AchievementIsar.fromFreezed(e)).toList(),
    expertisesUsers: objet?.expertisesUsers?.map((e) => ExpertisesUserIsar.fromFreezed(e)).toList(),
    campus: objet?.campus?.map((e) => CampusIsar.fromFreezed(e)).toList(),
    campusUsers: objet?.campusUsers?.map((e) => CampusUserIsar.fromFreezed(e)).toList(),
  );

  User toFreezed() => User(
    id: id,
    email: email,
    login: login,
    firstName: firstName,
    lastName: lastName,
    usualFullName: usualFullName,
    usualFirstName: usualFirstName,
    url: url,
    phone: phone,
    displayname: displayname,
    kind: kind,
    imageUrl: imageUrl,
    image: image?.toFreezed(),
    newImageUrl: newImageUrl,
    staff: staff,
    correctionPoint: correctionPoint,
    poolMonth: poolMonth,
    poolYear: poolYear,
    location: location,
    wallet: wallet,
    anonymizeDate: anonymizeDate,
    dataErasureDate: dataErasureDate,
    createdAt: createdAt,
    updatedAt: updatedAt,
    alumnizedAt: alumnizedAt,
    alumni: alumni,
    active: active,
    groups: groups?.map((e) => e).toList(),
    cursusUsers: cursusUsers?.map((e) => e.toFreezed()).toList(),
    projectsUsers: projectsUsers?.map((e) => e.toFreezed()).toList(),
    languagesUsers: languagesUsers?.map((e) => e.toFreezed()).toList(),
    achievements: achievements?.map((e) => e.toFreezed()).toList(),
    titles: titles?.map((e) => e).toList(),
    titlesUsers: titlesUsers?.map((e) => e).toList(),
    partnerships: partnerships?.map((e) => e).toList(),
    patroned: patroned?.map((e) => e).toList(),
    patroning: patroning?.map((e) => e).toList(),
    expertisesUsers: expertisesUsers?.map((e) => e.toFreezed()).toList(),
    roles: roles?.map((e) => e).toList(),
    campus: campus?.map((e) => e.toFreezed()).toList(),
    campusUsers: campusUsers?.map((e) => e.toFreezed()).toList(),
  );
  // copyWith
  UserIsar copyWith({
    int? isarId,
    int? id,
    String? email,
    String? login,
    String? firstName,
    String? lastName,
    String? usualFullName,
    String? usualFirstName,
    String? url,
    String? phone,
    String? displayname,
    String? kind,
    String? imageUrl,
    ImageIsar? image,
    String? newImageUrl,
    bool? staff,
    int? correctionPoint,
    String? poolMonth,
    String? poolYear,
    String? location,
    int? wallet,
    DateTime? anonymizeDate,
    DateTime? dataErasureDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? alumnizedAt,
    bool? alumni,
    bool? active,
    List<dynamic>? groups,
    List<CursusUserIsar>? cursusUsers,
    List<ProjectsUserIsar>? projectsUsers,
    List<LanguagesUserIsar>? languagesUsers,
    List<AchievementIsar>? achievements,
    List<dynamic>? titles,
    List<dynamic>? titlesUsers,
    List<dynamic>? partnerships,
    List<dynamic>? patroned,
    List<dynamic>? patroning,
    List<ExpertisesUserIsar>? expertisesUsers,
    List<dynamic>? roles,
    List<CampusIsar>? campus,
    List<CampusUserIsar>? campusUsers,
  }) => UserIsar(
    isarId: isarId ?? this.isarId,
    id: id ?? this.id,
    email: email ?? this.email,
    login: login ?? this.login,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    usualFullName: usualFullName ?? this.usualFullName,
    usualFirstName: usualFirstName ?? this.usualFirstName,
    url: url ?? this.url,
    phone: phone ?? this.phone,
    displayname: displayname ?? this.displayname,
    kind: kind ?? this.kind,
    imageUrl: imageUrl ?? this.imageUrl,
    image: image ?? this.image,
    newImageUrl: newImageUrl ?? this.newImageUrl,
    staff: staff ?? this.staff,
    correctionPoint: correctionPoint ?? this.correctionPoint,
    poolMonth: poolMonth ?? this.poolMonth,
    poolYear: poolYear ?? this.poolYear,
    location: location ?? this.location,
    wallet: wallet ?? this.wallet,
    anonymizeDate: anonymizeDate ?? this.anonymizeDate,
    dataErasureDate: dataErasureDate ?? this.dataErasureDate,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    alumnizedAt: alumnizedAt ?? this.alumnizedAt,
    alumni: alumni ?? this.alumni,
    active: active ?? this.active,
    groups: groups ?? this.groups,
    cursusUsers: cursusUsers ?? this.cursusUsers,
    projectsUsers: projectsUsers ?? this.projectsUsers,
    languagesUsers: languagesUsers ?? this.languagesUsers,
    achievements: achievements ?? this.achievements,
    titles: titles ?? this.titles,
    titlesUsers: titlesUsers ?? this.titlesUsers,
    partnerships: partnerships ?? this.partnerships,
    patroned: patroned ?? this.patroned,
    patroning: patroning ?? this.patroning,
    expertisesUsers: expertisesUsers ?? this.expertisesUsers,
    roles: roles ?? this.roles,
    campus: campus ?? this.campus,
    campusUsers: campusUsers ?? this.campusUsers,
  );


}

@embedded
class AchievementIsar {
  final int? id;
  final String? name;
  final String? description;
  final String? tier;
  final String? kind;
  final bool? visible;
  final String? image;
  final int? nbrOfSuccess;
  final String? usersUrl;

  const AchievementIsar({this.id, this.name, this.description, this.tier, this.kind, this.visible, this.image, this.nbrOfSuccess, this.usersUrl, });

  factory AchievementIsar.fromFreezed(Achievement? objet) => AchievementIsar (
    id: objet?.id,
    name: objet?.name,
    description: objet?.description,
    tier: objet?.tier,
    kind: objet?.kind,
    visible: objet?.visible,
    image: objet?.image,
    nbrOfSuccess: objet?.nbrOfSuccess,
    usersUrl: objet?.usersUrl,
  );

  Achievement toFreezed() => Achievement(
    id: id,
    name: name,
    description: description,
    tier: tier,
    kind: kind,
    visible: visible,
    image: image,
    nbrOfSuccess: nbrOfSuccess,
    usersUrl: usersUrl,
  );

}

@embedded
class CampusIsar {
  final int? id;
  final String? name;
  final String? timeZone;
  final LanguageIsar? language;
  final int? usersCount;
  final int? vogsphereId;
  final String? country;
  final String? address;
  final String? zip;
  final String? city;
  final String? website;
  final String? facebook;
  final String? twitter;
  final bool? active;
  final bool? public;
  final String? emailExtension;
  final bool? defaultHiddenPhone;

  const CampusIsar({this.id, this.name, this.timeZone, this.language, this.usersCount, this.vogsphereId, this.country, this.address, this.zip, this.city, this.website, this.facebook, this.twitter, this.active, this.public, this.emailExtension, this.defaultHiddenPhone, });

  factory CampusIsar.fromFreezed(Campus? objet) => CampusIsar (
    id: objet?.id,
    name: objet?.name,
    timeZone: objet?.timeZone,
    language: LanguageIsar.fromFreezed(objet?.language),
    usersCount: objet?.usersCount,
    vogsphereId: objet?.vogsphereId,
    country: objet?.country,
    address: objet?.address,
    zip: objet?.zip,
    city: objet?.city,
    website: objet?.website,
    facebook: objet?.facebook,
    twitter: objet?.twitter,
    active: objet?.active,
    public: objet?.public,
    emailExtension: objet?.emailExtension,
    defaultHiddenPhone: objet?.defaultHiddenPhone,
  );

  Campus toFreezed() => Campus(
    id: id,
    name: name,
    timeZone: timeZone,
    language: language?.toFreezed(),
    usersCount: usersCount,
    vogsphereId: vogsphereId,
    country: country,
    address: address,
    zip: zip,
    city: city,
    website: website,
    facebook: facebook,
    twitter: twitter,
    active: active,
    public: public,
    emailExtension: emailExtension,
    defaultHiddenPhone: defaultHiddenPhone,
  );

}

@embedded
class LanguageIsar {
  final int? id;
  final String? name;
  final String? identifier;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const LanguageIsar({this.id, this.name, this.identifier, this.createdAt, this.updatedAt, });

  factory LanguageIsar.fromFreezed(Language? objet) => LanguageIsar (
    id: objet?.id,
    name: objet?.name,
    identifier: objet?.identifier,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
  );

  Language toFreezed() => Language(
    id: id,
    name: name,
    identifier: identifier,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );

}

@embedded
class CampusUserIsar {
  final int? id;
  final int? userId;
  final int? campusId;
  final bool? isPrimary;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const CampusUserIsar({this.id, this.userId, this.campusId, this.isPrimary, this.createdAt, this.updatedAt, });

  factory CampusUserIsar.fromFreezed(CampusUser? objet) => CampusUserIsar (
    id: objet?.id,
    userId: objet?.userId,
    campusId: objet?.campusId,
    isPrimary: objet?.isPrimary,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
  );

  CampusUser toFreezed() => CampusUser(
    id: id,
    userId: userId,
    campusId: campusId,
    isPrimary: isPrimary,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );

  CampusUserIsar copyWith({
    int? id,
    int? userId,
    int? campusId,
    bool? isPrimary,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => CampusUserIsar(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    campusId: campusId ?? this.campusId,
    isPrimary: isPrimary ?? this.isPrimary,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

}

@embedded
class CursusUserIsar {
  final String? grade;
  final double? level;
  final List<SkillIsar>? skills;
  final DateTime? blackholedAt;
  final int? id;
  final DateTime? beginAt;
  final DateTime? endAt;
  final int? cursusId;
  final bool? hasCoalition;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final UserClassIsar? user;
  final CursusIsar? cursus;

  const CursusUserIsar({this.grade, this.level, this.skills, this.blackholedAt, this.id, this.beginAt, this.endAt, this.cursusId, this.hasCoalition, this.createdAt, this.updatedAt, this.user, this.cursus, });

  factory CursusUserIsar.fromFreezed(CursusUser? objet) => CursusUserIsar (
    grade: objet?.grade,
    level: objet?.level,
    skills: objet?.skills?.map((e) => SkillIsar.fromFreezed(e)).toList(),
    blackholedAt: objet?.blackholedAt,
    id: objet?.id,
    beginAt: objet?.beginAt,
    endAt: objet?.endAt,
    cursusId: objet?.cursusId,
    hasCoalition: objet?.hasCoalition,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
    user: UserClassIsar.fromFreezed(objet?.user),
    cursus: CursusIsar.fromFreezed(objet?.cursus),
  );

  CursusUser toFreezed() => CursusUser(
    grade: grade,
    level: level,
    skills: skills?.map((e) => e.toFreezed()).toList(),
    blackholedAt: blackholedAt,
    id: id,
    beginAt: beginAt,
    endAt: endAt,
    cursusId: cursusId,
    hasCoalition: hasCoalition,
    createdAt: createdAt,
    updatedAt: updatedAt,
    user: user?.toFreezed(),
    cursus: cursus?.toFreezed(),
  );

  CursusUserIsar copyWith({
    String? grade,
    double? level,
    List<SkillIsar>? skills,
    DateTime? blackholedAt,
    int? id,
    DateTime? beginAt,
    DateTime? endAt,
    int? cursusId,
    bool? hasCoalition,
    DateTime? createdAt,
    DateTime? updatedAt,
    UserClassIsar? user,
    CursusIsar? cursus,
  }) => CursusUserIsar(
    grade: grade ?? this.grade,
    level: level ?? this.level,
    skills: skills ?? this.skills,
    blackholedAt: blackholedAt ?? this.blackholedAt,
    id: id ?? this.id,
    beginAt: beginAt ?? this.beginAt,
    endAt: endAt ?? this.endAt,
    cursusId: cursusId ?? this.cursusId,
    hasCoalition: hasCoalition ?? this.hasCoalition,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    user: user ?? this.user,
    cursus: cursus ?? this.cursus,
  );

}

@embedded
class CursusIsar {
  final int? id;
  final DateTime? createdAt;
  final String? name;
  final String? slug;
  final String? kind;

  const CursusIsar({this.id, this.createdAt, this.name, this.slug, this.kind, });

  factory CursusIsar.fromFreezed(Cursus? objet) => CursusIsar (
    id: objet?.id,
    createdAt: objet?.createdAt,
    name: objet?.name,
    slug: objet?.slug,
    kind: objet?.kind,
  );

  Cursus toFreezed() => Cursus(
    id: id,
    createdAt: createdAt,
    name: name,
    slug: slug,
    kind: kind,
  );

}

@embedded
class SkillIsar {
  final int? id;
  final String? name;
  final double? level;

  const SkillIsar({this.id, this.name, this.level, });

  factory SkillIsar.fromFreezed(Skill? objet) => SkillIsar (
    id: objet?.id,
    name: objet?.name,
    level: objet?.level,
  );

  Skill toFreezed() => Skill(
    id: id,
    name: name,
    level: level,
  );

}

@embedded
class UserClassIsar {
  final int? id;
  final String? email;
  final String? login;
  final String? firstName;
  final String? lastName;
  final String? usualFullName;
  @ignore
  final dynamic usualFirstName;
  final String? url;
  final String? phone;
  final String? displayname;
  final String? kind;
  final String? imageUrl;
  final ImageIsar? image;
  final String? newImageUrl;
  final bool? staff;
  final int? correctionPoint;
  final String? poolMonth;
  final String? poolYear;
  final String? location;
  final int? wallet;
  final DateTime? anonymizeDate;
  final DateTime? dataErasureDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @ignore
  final dynamic alumnizedAt;
  final bool? alumni;
  final bool? active;

  const UserClassIsar({this.id, this.email, this.login, this.firstName, this.lastName, this.usualFullName, this.usualFirstName, this.url, this.phone, this.displayname, this.kind, this.imageUrl, this.image, this.newImageUrl, this.staff, this.correctionPoint, this.poolMonth, this.poolYear, this.location, this.wallet, this.anonymizeDate, this.dataErasureDate, this.createdAt, this.updatedAt, this.alumnizedAt, this.alumni, this.active, });

  factory UserClassIsar.fromFreezed(UserClass? objet) => UserClassIsar (
    id: objet?.id,
    email: objet?.email,
    login: objet?.login,
    firstName: objet?.firstName,
    lastName: objet?.lastName,
    usualFullName: objet?.usualFullName,
    url: objet?.url,
    phone: objet?.phone,
    displayname: objet?.displayName,
    kind: objet?.kind,
    imageUrl: objet?.imageUrl,
    image: ImageIsar.fromFreezed(objet?.image),
    newImageUrl: objet?.newImageUrl,
    staff: objet?.staff,
    correctionPoint: objet?.correctionPoint,
    poolMonth: objet?.poolMonth,
    poolYear: objet?.poolYear,
    location: objet?.location,
    wallet: objet?.wallet,
    anonymizeDate: objet?.anonymizeDate,
    dataErasureDate: objet?.dataErasureDate,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
    alumni: objet?.alumni,
    active: objet?.active,
  );

  UserClass toFreezed() => UserClass(
    id: id,
    email: email,
    login: login,
    firstName: firstName,
    lastName: lastName,
    usualFullName: usualFullName,
    usualFirstName: usualFirstName,
    url: url,
    phone: phone,
    displayName: displayname,
    kind: kind,
    imageUrl: imageUrl,
    image: image?.toFreezed(),
    newImageUrl: newImageUrl,
    staff: staff,
    correctionPoint: correctionPoint,
    poolMonth: poolMonth,
    poolYear: poolYear,
    location: location,
    wallet: wallet,
    anonymizeDate: anonymizeDate,
    dataErasureDate: dataErasureDate,
    createdAt: createdAt,
    updatedAt: updatedAt,
    alumnizedAt: alumnizedAt,
    alumni: alumni,
    active: active,
  );

}

@embedded
class ImageIsar {
  final String? link;
  final VersionsIsar? versions;

  const ImageIsar({this.link, this.versions, });

  factory ImageIsar.fromFreezed(Image? objet) => ImageIsar (
    link: objet?.link,
    versions: VersionsIsar.fromFreezed(objet?.versions),
  );

  Image toFreezed() => Image(
    link: link,
    versions: versions?.toFreezed(),
  );

}

@embedded
class VersionsIsar {
  final String? large;
  final String? medium;
  final String? small;
  final String? micro;

  const VersionsIsar({this.large, this.medium, this.small, this.micro, });

  factory VersionsIsar.fromFreezed(Versions? objet) => VersionsIsar (
    large: objet?.large,
    medium: objet?.medium,
    small: objet?.small,
    micro: objet?.micro,
  );

  Versions toFreezed() => Versions(
    large: large,
    medium: medium,
    small: small,
    micro: micro,
  );

}

@embedded
class ExpertisesUserIsar {
  final int? id;
  final int? expertiseId;
  final bool? interested;
  final int? value;
  final bool? contactMe;
  final DateTime? createdAt;
  final int? userId;

  const ExpertisesUserIsar({this.id, this.expertiseId, this.interested, this.value, this.contactMe, this.createdAt, this.userId, });

  factory ExpertisesUserIsar.fromFreezed(ExpertisesUser? objet) => ExpertisesUserIsar (
    id: objet?.id,
    expertiseId: objet?.expertiseId,
    interested: objet?.interested,
    value: objet?.value,
    contactMe: objet?.contactMe,
    createdAt: objet?.createdAt,
    userId: objet?.userId,
  );

  ExpertisesUser toFreezed() => ExpertisesUser(
    id: id,
    expertiseId: expertiseId,
    interested: interested,
    value: value,
    contactMe: contactMe,
    createdAt: createdAt,
    userId: userId,
  );

}

@embedded
class LanguagesUserIsar {
  final int? id;
  final int? languageId;
  final int? userId;
  final int? position;
  final DateTime? createdAt;

  const LanguagesUserIsar({this.id, this.languageId, this.userId, this.position, this.createdAt, });

  factory LanguagesUserIsar.fromFreezed(LanguagesUser? objet) => LanguagesUserIsar (
    id: objet?.id,
    languageId: objet?.languageId,
    userId: objet?.userId,
    position: objet?.position,
    createdAt: objet?.createdAt,
  );

  LanguagesUser toFreezed() => LanguagesUser(
    id: id,
    languageId: languageId,
    userId: userId,
    position: position,
    createdAt: createdAt,
  );

}

@embedded
class ProjectsUserIsar {
  final int? id;
  final int? occurrence;
  final int? finalMark;
  final String? status;
  final bool? validated;
  final int? currentTeamId;
  final ProjectIsar? project;
  final List<int>? cursusIds;
  final DateTime? markedAt;
  final bool? marked;
  final DateTime? retriableAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProjectsUserIsar({this.id, this.occurrence, this.finalMark, this.status, this.validated, this.currentTeamId, this.project, this.cursusIds, this.markedAt, this.marked, this.retriableAt, this.createdAt, this.updatedAt, });

  factory ProjectsUserIsar.fromFreezed(ProjectsUser? objet) => ProjectsUserIsar (
    id: objet?.id,
    occurrence: objet?.occurrence,
    finalMark: objet?.finalMark,
    status: objet?.status,
    validated: objet?.validated,
    currentTeamId: objet?.currentTeamId,
    project: ProjectIsar.fromFreezed(objet?.project),
    cursusIds: objet?.cursusIds?.map((e) => e).toList(),
    markedAt: objet?.markedAt,
    marked: objet?.marked,
    retriableAt: objet?.retriableAt,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
  );

  ProjectsUser toFreezed() => ProjectsUser(
    id: id,
    occurrence: occurrence,
    finalMark: finalMark,
    status: status,
    validated: validated,
    currentTeamId: currentTeamId,
    project: project?.toFreezed(),
    cursusIds: cursusIds?.map((e) => e).toList(),
    markedAt: markedAt,
    marked: marked,
    retriableAt: retriableAt,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );

}

@embedded
class ProjectIsar {
  final int? id;
  final String? name;
  final String? slug;
  @ignore
  final dynamic parentId;

  const ProjectIsar({this.id, this.name, this.slug, this.parentId, });

  factory ProjectIsar.fromFreezed(Project? objet) => ProjectIsar (
    id: objet?.id,
    name: objet?.name,
    slug: objet?.slug,
  );

  Project toFreezed() => Project(
    id: id,
    name: name,
    slug: slug,
  );

}

