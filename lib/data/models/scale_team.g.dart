// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scale_team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScaleImpl _$$ScaleImplFromJson(Map<String, dynamic> json) => _$ScaleImpl(
      id: (json['id'] as num?)?.toInt(),
      scaleId: (json['scale_id'] as num?)?.toInt(),
      comment: json['comment'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      feedback: json['feedback'],
      finalMark: json['final_mark'],
      flag: json['flag'] == null
          ? null
          : Flag.fromJson(json['flag'] as Map<String, dynamic>),
      beginAt: json['begin_at'] == null
          ? null
          : DateTime.parse(json['begin_at'] as String),
      correcteds: (json['correcteds'] as List<dynamic>?)
          ?.map((e) => Correct.fromJson(e as Map<String, dynamic>))
          .toList(),
      corrector: json['corrector'] == null
          ? null
          : Correct.fromJson(json['corrector'] as Map<String, dynamic>),
      truant: json['truant'] == null
          ? null
          : Truant.fromJson(json['truant'] as Map<String, dynamic>),
      filledAt: json['filled_at'],
      questionsWithAnswers: json['questions_with_answers'] as List<dynamic>?,
      scale: json['scale'] == null
          ? null
          : ScaleClass.fromJson(json['scale'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      feedbacks: json['feedbacks'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ScaleImplToJson(_$ScaleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scale_id': instance.scaleId,
      'comment': instance.comment,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'feedback': instance.feedback,
      'final_mark': instance.finalMark,
      'flag': instance.flag,
      'begin_at': instance.beginAt?.toIso8601String(),
      'correcteds': instance.correcteds,
      'corrector': instance.corrector,
      'truant': instance.truant,
      'filled_at': instance.filledAt,
      'questions_with_answers': instance.questionsWithAnswers,
      'scale': instance.scale,
      'team': instance.team,
      'feedbacks': instance.feedbacks,
    };

_$CorrectImpl _$$CorrectImplFromJson(Map<String, dynamic> json) =>
    _$CorrectImpl(
      id: (json['id'] as num?)?.toInt(),
      login: json['login'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$CorrectImplToJson(_$CorrectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'url': instance.url,
    };

_$FlagImpl _$$FlagImplFromJson(Map<String, dynamic> json) => _$FlagImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      positive: json['positive'] as bool?,
      icon: json['icon'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$FlagImplToJson(_$FlagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'positive': instance.positive,
      'icon': instance.icon,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$ScaleClassImpl _$$ScaleClassImplFromJson(Map<String, dynamic> json) =>
    _$ScaleClassImpl(
      id: (json['id'] as num?)?.toInt(),
      evaluationId: (json['evaluation_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      comment: json['comment'] as String?,
      introductionMd: json['introduction_md'] as String?,
      disclaimerMd: json['disclaimer_md'] as String?,
      guidelinesMd: json['guidelines_md'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      correctionNumber: (json['correction_number'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      manualSubscription: json['manual_subscription'] as bool?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      flags: (json['flags'] as List<dynamic>?)
          ?.map((e) => Flag.fromJson(e as Map<String, dynamic>))
          .toList(),
      free: json['free'] as bool?,
    );

Map<String, dynamic> _$$ScaleClassImplToJson(_$ScaleClassImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'evaluation_id': instance.evaluationId,
      'name': instance.name,
      'isPrimary': instance.isPrimary,
      'comment': instance.comment,
      'introduction_md': instance.introductionMd,
      'disclaimer_md': instance.disclaimerMd,
      'guidelines_md': instance.guidelinesMd,
      'created_at': instance.createdAt?.toIso8601String(),
      'correction_number': instance.correctionNumber,
      'duration': instance.duration,
      'manual_subscription': instance.manualSubscription,
      'languages': instance.languages,
      'flags': instance.flags,
      'free': instance.free,
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

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      url: json['url'] as String?,
      finalMark: json['final_mark'],
      projectId: (json['project_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      status: json['status'] as String?,
      terminatingAt: json['terminating_at'],
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => ScaleUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      locked: json['locked'] as bool?,
      validated: json['validated'],
      closed: json['closed'] as bool?,
      repoUrl: json['repo_url'] as String?,
      repoUuid: json['repo_uuid'] as String?,
      lockedAt: json['locked_at'] == null
          ? null
          : DateTime.parse(json['locked_at'] as String),
      closedAt: json['closed_at'] == null
          ? null
          : DateTime.parse(json['closed_at'] as String),
      projectSessionId: (json['project_session_id'] as num?)?.toInt(),
      projectGitlabPath: json['project_gitlab_path'] as String?,
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'final_mark': instance.finalMark,
      'project_id': instance.projectId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'status': instance.status,
      'terminating_at': instance.terminatingAt,
      'users': instance.users,
      'locked': instance.locked,
      'validated': instance.validated,
      'closed': instance.closed,
      'repo_url': instance.repoUrl,
      'repo_uuid': instance.repoUuid,
      'locked_at': instance.lockedAt?.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
      'project_session_id': instance.projectSessionId,
      'project_gitlab_path': instance.projectGitlabPath,
    };

_$ScaleUserImpl _$$ScaleUserImplFromJson(Map<String, dynamic> json) =>
    _$ScaleUserImpl(
      id: (json['id'] as num?)?.toInt(),
      login: json['login'] as String?,
      url: json['url'] as String?,
      leader: json['leader'] as bool?,
      occurrence: (json['occurrence'] as num?)?.toInt(),
      validated: json['validated'] as bool?,
      projectsUserId: (json['projects_user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ScaleUserImplToJson(_$ScaleUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'url': instance.url,
      'leader': instance.leader,
      'occurrence': instance.occurrence,
      'validated': instance.validated,
      'projects_user_id': instance.projectsUserId,
    };

_$TruantImpl _$$TruantImplFromJson(Map<String, dynamic> json) => _$TruantImpl();

Map<String, dynamic> _$$TruantImplToJson(_$TruantImpl instance) =>
    <String, dynamic>{};
