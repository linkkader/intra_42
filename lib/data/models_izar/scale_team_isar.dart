
import 'package:isar/isar.dart';
import '../models/scale_team.dart';

part 'scale_team_isar.g.dart';

@collection
class ScaleTeamIsar {
  final Id? id;
  final int? scaleId;
  @ignore
  final dynamic comment;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @ignore
  final dynamic feedback;
  @ignore
  final dynamic finalMark;
  final FlagIsar? flag;
  final DateTime? beginAt;
  final List<CorrectorIsar>? correcteds;
  final CorrectorIsar? corrector;
  @ignore
  final dynamic filledAt;
  @ignore
  final List<dynamic>? questionsWithAnswers;
  final ScaleClassIsar? scale;
  final TeamIsar? team;
  final List<FeedbackIsar>? feedbacks;

  const ScaleTeamIsar({this.id = Isar.autoIncrement, this.scaleId, this.comment, this.createdAt, this.updatedAt, this.feedback, this.finalMark, this.flag, this.beginAt, this.correcteds, this.corrector, this.filledAt, this.questionsWithAnswers, this.scale, this.team, this.feedbacks, });

  factory ScaleTeamIsar.fromFreezed(ScaleTeam? objet) => ScaleTeamIsar (
    id: objet?.id,
    scaleId: objet?.scaleId,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
    flag: FlagIsar.fromFreezed(objet?.flag),
    beginAt: objet?.beginAt,
    // correcteds: objet?.correcteds?.map((e) => CorrectorIsar.fromFreezed(e)).toList(),
    corrector: CorrectorIsar.fromFreezed(objet?.corrector),
    scale: ScaleClassIsar.fromFreezed(objet?.scale),
    team: TeamIsar.fromFreezed(objet?.team),
    feedbacks: objet?.feedbacks?.map((e) => FeedbackIsar.fromFreezed(e)).toList(),
  );

  ScaleTeam toFreezed() => ScaleTeam(
    id: id,
    scaleId: scaleId,
    comment: comment,
    createdAt: createdAt,
    updatedAt: updatedAt,
    feedback: feedback,
    finalMark: finalMark,
    flag: flag?.toFreezed(),
    beginAt: beginAt,
    correcteds: null, //correcteds?.map((e) => e.toFreezed()).toList(),
    corrector: corrector?.toFreezed(),
    filledAt: filledAt,
    questionsWithAnswers: questionsWithAnswers?.map((e) => e).toList(),
    scale: scale?.toFreezed(),
    team: team?.toFreezed(),
    feedbacks: feedbacks?.map((e) => e.toFreezed()).toList(),
  );

}

@embedded
class FeedbackIsar {
  final int? id;
  final CorrectorIsar? user;
  final String? feedbackableType;
  final int? feedbackableId;
  final String? comment;
  final int? rating;
  final DateTime? createdAt;

  const FeedbackIsar({this.id, this.user, this.feedbackableType, this.feedbackableId, this.comment, this.rating, this.createdAt, });

  factory FeedbackIsar.fromFreezed(Feedback? objet) => FeedbackIsar (
    id: objet?.id,
    user: CorrectorIsar.fromFreezed(objet?.user),
    feedbackableType: objet?.feedbackableType,
    feedbackableId: objet?.feedbackableId,
    comment: objet?.comment,
    rating: objet?.rating,
    createdAt: objet?.createdAt,
  );

  Feedback toFreezed() => Feedback(
    id: id,
    user: user?.toFreezed(),
    feedbackableType: feedbackableType,
    feedbackableId: feedbackableId,
    comment: comment,
    rating: rating,
    createdAt: createdAt,
  );

}

@embedded
class CorrectorIsar {
  final int? id;
  final String? login;
  final String? url;

  const CorrectorIsar({this.id, this.login, this.url, });

  factory CorrectorIsar.fromFreezed(Corrector? objet) => CorrectorIsar (
    id: objet?.id,
    login: objet?.login,
    url: objet?.url,
  );

  Corrector toFreezed() => Corrector(
    id: id,
    login: login,
    url: url,
  );

}

@embedded
class FlagIsar {
  final int? id;
  final String? name;
  final bool? positive;
  final String? icon;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const FlagIsar({this.id, this.name, this.positive, this.icon, this.createdAt, this.updatedAt, });

  factory FlagIsar.fromFreezed(Flag? objet) => FlagIsar (
    id: objet?.id,
    name: objet?.name,
    positive: objet?.positive,
    icon: objet?.icon,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
  );

  Flag toFreezed() => Flag(
    id: id,
    name: name,
    positive: positive,
    icon: icon,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );

}

@embedded
class ScaleClassIsar {
  final int? id;
  final int? evaluationId;
  final String? name;
  final bool? isPrimary;
  final String? comment;
  final String? introductionMd;
  final String? disclaimerMd;
  final String? guidelinesMd;
  final DateTime? createdAt;
  final int? correctionNumber;
  final int? duration;
  final bool? manualSubscription;
  final List<FlagIsar>? flags;
  final bool? free;

  const ScaleClassIsar({this.id, this.evaluationId, this.name, this.isPrimary, this.comment, this.introductionMd, this.disclaimerMd, this.guidelinesMd, this.createdAt, this.correctionNumber, this.duration, this.manualSubscription, this.flags, this.free, });

  factory ScaleClassIsar.fromFreezed(ScaleClass? objet) => ScaleClassIsar (
    id: objet?.id,
    evaluationId: objet?.evaluationId,
    name: objet?.name,
    isPrimary: objet?.isPrimary,
    comment: objet?.comment,
    introductionMd: objet?.introductionMd,
    disclaimerMd: objet?.disclaimerMd,
    guidelinesMd: objet?.guidelinesMd,
    createdAt: objet?.createdAt,
    correctionNumber: objet?.correctionNumber,
    duration: objet?.duration,
    manualSubscription: objet?.manualSubscription,
    flags: objet?.flags?.map((e) => FlagIsar.fromFreezed(e)).toList(),
    free: objet?.free,
  );

  ScaleClass toFreezed() => ScaleClass(
    id: id,
    evaluationId: evaluationId,
    name: name,
    isPrimary: isPrimary,
    comment: comment,
    introductionMd: introductionMd,
    disclaimerMd: disclaimerMd,
    guidelinesMd: guidelinesMd,
    createdAt: createdAt,
    correctionNumber: correctionNumber,
    duration: duration,
    manualSubscription: manualSubscription,
    flags: flags?.map((e) => e.toFreezed()).toList(),
    free: free,
  );

}

@embedded
class TeamIsar {
  final int? id;
  final String? name;
  final String? url;
  @ignore
  final dynamic finalMark;
  final int? projectId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? status;
  @ignore
  final dynamic terminatingAt;
  final List<ScaleUserIsar>? users;
  final bool? locked;
  @ignore
  final dynamic validated;
  final bool? closed;
  final String? repoUrl;
  final String? repoUuid;
  final DateTime? lockedAt;
  final DateTime? closedAt;
  final int? projectSessionId;
  final String? projectGitlabPath;

  const TeamIsar({this.id, this.name, this.url, this.finalMark, this.projectId, this.createdAt, this.updatedAt, this.status, this.terminatingAt, this.users, this.locked, this.validated, this.closed, this.repoUrl, this.repoUuid, this.lockedAt, this.closedAt, this.projectSessionId, this.projectGitlabPath, });

  factory TeamIsar.fromFreezed(Team? objet) => TeamIsar (
    id: objet?.id,
    name: objet?.name,
    url: objet?.url,
    projectId: objet?.projectId,
    createdAt: objet?.createdAt,
    updatedAt: objet?.updatedAt,
    status: objet?.status,
    users: objet?.users?.map((e) => ScaleUserIsar.fromFreezed(e)).toList(),
    locked: objet?.locked,
    closed: objet?.closed,
    repoUrl: objet?.repoUrl,
    repoUuid: objet?.repoUuid,
    lockedAt: objet?.lockedAt,
    closedAt: objet?.closedAt,
    projectSessionId: objet?.projectSessionId,
    projectGitlabPath: objet?.projectGitlabPath,
  );

  Team toFreezed() => Team(
    id: id,
    name: name,
    url: url,
    finalMark: finalMark,
    projectId: projectId,
    createdAt: createdAt,
    updatedAt: updatedAt,
    status: status,
    terminatingAt: terminatingAt,
    users: users?.map((e) => e.toFreezed()).toList(),
    locked: locked,
    validated: validated,
    closed: closed,
    repoUrl: repoUrl,
    repoUuid: repoUuid,
    lockedAt: lockedAt,
    closedAt: closedAt,
    projectSessionId: projectSessionId,
    projectGitlabPath: projectGitlabPath,
  );

}

@embedded
class ScaleUserIsar {
  final int? id;
  final String? login;
  final String? url;
  final bool? leader;
  final int? occurrence;
  final bool? validated;
  final int? projectsUserId;

  const ScaleUserIsar({this.id, this.login, this.url, this.leader, this.occurrence, this.validated, this.projectsUserId, });

  factory ScaleUserIsar.fromFreezed(ScaleUser? objet) => ScaleUserIsar (
    id: objet?.id,
    login: objet?.login,
    url: objet?.url,
    leader: objet?.leader,
    occurrence: objet?.occurrence,
    validated: objet?.validated,
    projectsUserId: objet?.projectsUserId,
  );

  ScaleUser toFreezed() => ScaleUser(
    id: id,
    login: login,
    url: url,
    leader: leader,
    occurrence: occurrence,
    validated: validated,
    projectsUserId: projectsUserId,
  );

}