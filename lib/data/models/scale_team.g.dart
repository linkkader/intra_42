// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scale_team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Scale _$$_ScaleFromJson(Map<String, dynamic> json) => _$_Scale(
      id: json['id'] as int?,
      scaleId: json['scale_id'] as int?,
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
      correcteds: json['correcteds'],
      corrector: json['corrector'] == null
          ? null
          : Corrector.fromJson(json['corrector'] as Map<String, dynamic>),
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
      feedbacks: (json['feedbacks'] as List<dynamic>?)
          ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScaleToJson(_$_Scale instance) => <String, dynamic>{
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

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
      id: json['id'] as int?,
      user: json['user'] == null
          ? null
          : Corrector.fromJson(json['user'] as Map<String, dynamic>),
      feedbackableType: json['feedbackable_type'] as String?,
      feedbackableId: json['feedbackable_id'] as int?,
      comment: json['comment'] as String?,
      rating: json['rating'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'feedbackable_type': instance.feedbackableType,
      'feedbackable_id': instance.feedbackableId,
      'comment': instance.comment,
      'rating': instance.rating,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$_Corrector _$$_CorrectorFromJson(Map<String, dynamic> json) => _$_Corrector(
      id: json['id'] as int?,
      login: json['login'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_CorrectorToJson(_$_Corrector instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'url': instance.url,
    };

_$_Flag _$$_FlagFromJson(Map<String, dynamic> json) => _$_Flag(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_FlagToJson(_$_Flag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'positive': instance.positive,
      'icon': instance.icon,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$_ScaleClass _$$_ScaleClassFromJson(Map<String, dynamic> json) =>
    _$_ScaleClass(
      id: json['id'] as int?,
      evaluationId: json['evaluation_id'] as int?,
      name: json['name'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      comment: json['comment'] as String?,
      introductionMd: json['introduction_md'] as String?,
      disclaimerMd: json['disclaimer_md'] as String?,
      guidelinesMd: json['guidelines_md'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      correctionNumber: json['correction_number'] as int?,
      duration: json['duration'] as int?,
      manualSubscription: json['manual_subscription'] as bool?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      flags: (json['flags'] as List<dynamic>?)
          ?.map((e) => Flag.fromJson(e as Map<String, dynamic>))
          .toList(),
      free: json['free'] as bool?,
    );

Map<String, dynamic> _$$_ScaleClassToJson(_$_ScaleClass instance) =>
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

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: json['id'] as int?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      finalMark: json['final_mark'],
      projectId: json['project_id'] as int?,
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
      projectSessionId: json['project_session_id'] as int?,
      projectGitlabPath: json['project_gitlab_path'] as String?,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
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

_$_ScaleUser _$$_ScaleUserFromJson(Map<String, dynamic> json) => _$_ScaleUser(
      id: json['id'] as int?,
      login: json['login'] as String?,
      url: json['url'] as String?,
      leader: json['leader'] as bool?,
      occurrence: json['occurrence'] as int?,
      validated: json['validated'] as bool?,
      projectsUserId: json['projects_user_id'] as int?,
    );

Map<String, dynamic> _$$_ScaleUserToJson(_$_ScaleUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'url': instance.url,
      'leader': instance.leader,
      'occurrence': instance.occurrence,
      'validated': instance.validated,
      'projects_user_id': instance.projectsUserId,
    };

_$_Truant _$$_TruantFromJson(Map<String, dynamic> json) => _$_Truant();

Map<String, dynamic> _$$_TruantToJson(_$_Truant instance) =>
    <String, dynamic>{};
