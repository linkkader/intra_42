// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intra_42/data/models/scale_team.dart';
import 'dart:convert';

import 'package:intra_42/data/models_izar/user_isar.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    int? id,
    String? email,
    String? login,
    @JsonKey(name: "first_name")
    String? firstName,
    @JsonKey(name: "last_name")
    String? lastName,
    @JsonKey(name: "usual_full_name")
    String? usualFullName,
    @JsonKey(name: "usual_first_name")
    dynamic? usualFirstName,
    String? url,
    String? phone,
    @JsonKey(name: "displayname")
    String? displayname,
    String? kind,
    @JsonKey(name: "image_url")
    String? imageUrl,
    Image? image,
    @JsonKey(name: "new_image_url")
    String? newImageUrl,
    bool? staff,
    @JsonKey(name: "correction_point")
    int? correctionPoint,
    @JsonKey(name: "pool_month")
    String? poolMonth,
    @JsonKey(name: "pool_year")
    String? poolYear,
    String? location,
    int? wallet,
    @JsonKey(name: "anonymize_date")
    DateTime? anonymizeDate,
    @JsonKey(name: "dataErasure_date")
    DateTime? dataErasureDate,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    @JsonKey(name: "alumnized_at")
    dynamic? alumnizedAt,
    bool? alumni,
    bool? active,
    List<dynamic>? groups,
    @JsonKey(name: "cursus_users")
    List<CursusUser>? cursusUsers,
    @JsonKey(name: "projects_users")
    List<ProjectsUser>? projectsUsers,
    @JsonKey(name: "languages_users")
    List<LanguagesUser>? languagesUsers,
    List<Achievement>? achievements,
    List<dynamic>? titles,
    @JsonKey(name: "titles_users")
    List<dynamic>? titlesUsers,
    List<dynamic>? partnerships,
    List<dynamic>? patroned,
    List<dynamic>? patroning,
    @JsonKey(name: "expertises_users")
    List<ExpertisesUser>? expertisesUsers,
    List<dynamic>? roles,
    List<Campus>? campus,
    @JsonKey(name: "campus_users")
    List<CampusUser>? campusUsers,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // @override
  // bool operator ==(Object other) {
  //   return other is User && other.id == id;
  // }
  //
  // @override
  // int get hashCode => id.hashCode;



}

@freezed
abstract class Achievement with _$Achievement {
  const factory Achievement({
    int? id,
    String? name,
    String? description,
    String? tier,
    String? kind,
    bool? visible,
    String? image,
    @JsonKey(name: "nbr_of_success")
    int? nbrOfSuccess,
    @JsonKey(name: "users_url")
    String? usersUrl,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) => _$AchievementFromJson(json);
}

@freezed
abstract class Campus with _$Campus {
  const factory Campus({
    int? id,
    String? name,
    @JsonKey(name: "time_zone")
    String? timeZone,
    Language? language,
    @JsonKey(name: "users_count")
    int? usersCount,
    @JsonKey(name: "vogsphere_id")
    int? vogsphereId,
    String? country,
    String? address,
    String? zip,
    String? city,
    String? website,
    String? facebook,
    String? twitter,
    bool? active,
    bool? public,
    @JsonKey(name: "email_extension")
    String? emailExtension,
    @JsonKey(name: "default_hidden_phone")
    bool? defaultHiddenPhone,
  }) = _Campus;

  factory Campus.fromJson(Map<String, dynamic> json) => _$CampusFromJson(json);
}

@freezed
abstract class Language with _$Language {
  const factory Language({
    int? id,
    String? name,
    String? identifier,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}

@freezed
abstract class CampusUser with _$CampusUser {
  const factory CampusUser({
    int? id,
    @JsonKey(name: "user_id")
    int? userId,
    @JsonKey(name: "campus_id")
    int? campusId,
    @JsonKey(name: "is_primary")
    bool? isPrimary,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _CampusUser;

  factory CampusUser.fromJson(Map<String, dynamic> json) => _$CampusUserFromJson(json);
}

@freezed
abstract class CursusUser with _$CursusUser {
  const factory CursusUser({
    String? grade,
    double? level,
    List<Skill>? skills,
    @JsonKey(name: "blackholed_at")
    DateTime? blackholedAt,
    int? id,
    @JsonKey(name: "begin_at")
    DateTime? beginAt,
    @JsonKey(name: "end_at")
    DateTime? endAt,
    @JsonKey(name: "cursus_id")
    int? cursusId,
    bool? hasCoalition,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    UserClass? user,
    Cursus? cursus,
  }) = _CursusUser;

  factory CursusUser.fromJson(Map<String, dynamic> json) => _$CursusUserFromJson(json);
}

@freezed
abstract class Cursus with _$Cursus {
  const factory Cursus({
    int? id,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    String? name,
    String? slug,
    String? kind,
  }) = _Cursus;

  factory Cursus.fromJson(Map<String, dynamic> json) => _$CursusFromJson(json);
}

@freezed
abstract class Skill with _$Skill {
  const factory Skill({
    int? id,
    String? name,
    double? level,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}

@freezed
abstract class UserClass with _$UserClass {
  const factory UserClass({
    int? id,
    String? email,
    String? login,
    @JsonKey(name: "first_name")
    String? firstName,
    @JsonKey(name: "last_name")
    String? lastName,
    @JsonKey(name: "usual_full_name")
    String? usualFullName,
    @JsonKey(name: "usual_first_name")
    dynamic? usualFirstName,
    String? url,
    String? phone,
    @JsonKey(name: "displayname")
    String? displayName,
    String? kind,
    @JsonKey(name: "image_url")
    String? imageUrl,
    Image? image,
    @JsonKey(name: "new_image_url")
    String? newImageUrl,
    bool? staff,
    @JsonKey(name: "correction_point")
    int? correctionPoint,
    @JsonKey(name: "pool_month")
    String? poolMonth,
    @JsonKey(name: "pool_year")
    String? poolYear,
    String? location,
    int? wallet,
    @JsonKey(name: "anonymize_date")
    DateTime? anonymizeDate,
    @JsonKey(name: "dataErasure_date")
    DateTime? dataErasureDate,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    @JsonKey(name: "alumnized_at")
    dynamic? alumnizedAt,
    bool? alumni,
    bool? active,
  }) = _UserClass;

  factory UserClass.fromJson(Map<String, dynamic> json) => _$UserClassFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({
    String? link,
    Versions? versions,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
abstract class Versions with _$Versions {
  const factory Versions({
    String? large,
    String? medium,
    String? small,
    String? micro,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) => _$VersionsFromJson(json);
}

@freezed
abstract class ExpertisesUser with _$ExpertisesUser {
  const factory ExpertisesUser({
    int? id,
    @JsonKey(name: "expertise_id")
    int? expertiseId,
    bool? interested,
    int? value,
    @JsonKey(name: "contact_me")
    bool? contactMe,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    int? userId,
  }) = _ExpertisesUser;

  factory ExpertisesUser.fromJson(Map<String, dynamic> json) => _$ExpertisesUserFromJson(json);
}

@freezed
abstract class LanguagesUser with _$LanguagesUser {
  const factory LanguagesUser({
    int? id,
    @JsonKey(name: "language_id")
    int? languageId,
    @JsonKey(name: "user_id")
    int? userId,
    int? position,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
  }) = _LanguagesUser;

  factory LanguagesUser.fromJson(Map<String, dynamic> json) => _$LanguagesUserFromJson(json);
}

@freezed
abstract class ProjectsUser with _$ProjectsUser {
  const factory ProjectsUser({
    int? id,
    int? occurrence,
    @JsonKey(name: "final_mark")
    int? finalMark,
    String? status,
    bool? validated,
    @JsonKey(name: "current_team_id")
    int? currentTeamId,
    Project? project,
    @JsonKey(name: "cursus_ids")
    List<int>? cursusIds,
    @JsonKey(name: "marked_at")
    DateTime? markedAt,
    bool? marked,
    @JsonKey(name: "retriable_at")
    DateTime? retriableAt,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    List<Team>? teams,
  }) = _ProjectsUser;

  factory ProjectsUser.fromJson(Map<String, dynamic> json) => _$ProjectsUserFromJson(json);


}

@freezed
abstract class Project with _$Project {
  const factory Project({
    int? id,
    String? name,
    String? slug,
    dynamic parent,
    List<dynamic>? children,
    List<dynamic>? attachments,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    bool? exam,
    @JsonKey(name: "git_id")
    int? gitId,
    String? repository,
    String? recommendation,
    List<Cursus>? cursus,
    List<Campus>? campus,
    List<dynamic>? videos,
    @JsonKey(name: "project_sessions")
    List<ProjectSession>? projectSessions,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}

@freezed
abstract class ProjectSession with _$ProjectSession {
  const factory ProjectSession({
    int? id,
    bool? solo,
    @JsonKey(name: "begin_at")
    dynamic beginAt,
    @JsonKey(name: "end_at")
    dynamic endAt,
    @JsonKey(name: "estimate_time")
    String? estimateTime,
    int? difficulty,
    List<String>? objectives,
    String? description,
    @JsonKey(name: "duration_days")
    dynamic durationDays,
    @JsonKey(name: "terminating_after")
    dynamic terminatingAfter,
    @JsonKey(name: "project_id")
    int? projectId,
    @JsonKey(name: "campus_id")
    int? campusId,
    @JsonKey(name: "cursus_id")
    int? cursusId,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    @JsonKey(name: "max_people")
    dynamic maxPeople,
    @JsonKey(name: "is_subscriptable")
    bool? isSubscriptable,
    List<Scale>? scales,
    List<Upload>? uploads,
    @JsonKey(name: "team_behaviour")
    String? teamBehaviour,
    String? commit,
  }) = _ProjectSession;

  factory ProjectSession.fromJson(Map<String, dynamic> json) => _$ProjectSessionFromJson(json);
}

@freezed
abstract class Scale with _$Scale {
  const factory Scale({
    int? id,
    @JsonKey(name: "correction_number")
    int? correctionNumber,
    @JsonKey(name: "is_primary")
    bool? isPrimary,
  }) = _Scale;

  factory Scale.fromJson(Map<String, dynamic> json) => _$ScaleFromJson(json);
}

@freezed
abstract class Upload with _$Upload {
  const factory Upload({
    int? id,
    String? name,
  }) = _Upload;

  factory Upload.fromJson(Map<String, dynamic> json) => _$UploadFromJson(json);
}
