// Created by linkkader on 13/11/2022

// To parse this JSON data, do
//
//     final scale = scaleFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
part 'scale_team.freezed.dart';
part 'scale_team.g.dart';

@freezed
abstract class ScaleTeam with _$ScaleTeam {
  const factory ScaleTeam({
    int? id,
    @JsonKey(name: 'scale_id')
    int? scaleId,
    dynamic comment,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
    dynamic feedback,
    @JsonKey(name: 'final_mark')
    dynamic finalMark,
    Flag? flag,
    @JsonKey(name: 'begin_at')
    DateTime? beginAt,
    @JsonKey(name: 'correcteds')
    List<Correct>? correcteds,
    Correct? corrector,
    Truant? truant,
    @JsonKey(name: 'filled_at')
    dynamic filledAt,
    @JsonKey(name: 'questions_with_answers')
    List<dynamic>? questionsWithAnswers,
    ScaleClass? scale,
    Team? team,
    List<dynamic>? feedbacks,
  }) = _Scale;

  factory ScaleTeam.fromJson(Map<String, dynamic> json) => _$ScaleTeamFromJson(json);
}

@freezed
abstract class Correct with _$Correct {
  const factory Correct({
    int? id,
    String? login,
    String? url,
  }) = _Correct;

  factory Correct.fromJson(Map<String, dynamic> json) => _$CorrectFromJson(json);
}

@freezed
abstract class Flag with _$Flag {
  const factory Flag({
    int? id,
    String? name,
    bool? positive,
    String? icon,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _Flag;

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
}

@freezed
abstract class ScaleClass with _$ScaleClass {
  const factory ScaleClass({
    int? id,
    @JsonKey(name: 'evaluation_id')
    int? evaluationId,
    String? name,
    bool? isPrimary,
    String? comment,
    @JsonKey(name: 'introduction_md')
    String? introductionMd,
    @JsonKey(name: 'disclaimer_md')
    String? disclaimerMd,
    @JsonKey(name: 'guidelines_md')
    String? guidelinesMd,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'correction_number')
    int? correctionNumber,
    int? duration,
    @JsonKey(name: 'manual_subscription')
    bool? manualSubscription,
    List<Language>? languages,
    List<Flag>? flags,
    bool? free,
  }) = _ScaleClass;

  factory ScaleClass.fromJson(Map<String, dynamic> json) => _$ScaleClassFromJson(json);
}

@freezed
abstract class Language with _$Language {
  const factory Language({
    int? id,
    String? name,
    String? identifier,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}

@freezed
abstract class Team with _$Team {
  const factory Team({
    int? id,
    String? name,
    String? url,
    @JsonKey(name: 'final_mark')
    dynamic finalMark,
    @JsonKey(name: 'project_id')
    int? projectId,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
    String? status,
    @JsonKey(name: 'terminating_at')
    dynamic terminatingAt,
    List<ScaleUser>? users,
    bool? locked,
    dynamic validated,
    bool? closed,
    @JsonKey(name: 'repo_url')
    String? repoUrl,
    @JsonKey(name: 'repo_uuid')
    String? repoUuid,
    @JsonKey(name: 'locked_at')
    DateTime? lockedAt,
    @JsonKey(name: 'closed_at')
    DateTime? closedAt,
    @JsonKey(name: 'project_session_id')
    int? projectSessionId,
    @JsonKey(name: 'project_gitlab_path')
    String? projectGitlabPath,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
abstract class ScaleUser with _$ScaleUser {
  const factory ScaleUser({
    int? id,
    String? login,
    String? url,
    bool? leader,
    int? occurrence,
    bool? validated,
    @JsonKey(name: 'projects_user_id')
    int? projectsUserId,
  }) = _ScaleUser;

  factory ScaleUser.fromJson(Map<String, dynamic> json) => _$ScaleUserFromJson(json);
}

@freezed
abstract class Truant with _$Truant {
  const factory Truant() = _Truant;

  factory Truant.fromJson(Map<String, dynamic> json) => _$TruantFromJson(json);
}
