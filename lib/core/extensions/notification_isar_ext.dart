
import 'package:intra_42/data/models/scale_team.dart';
import 'package:sprintf/sprintf.dart';
import '../../data/models_izar/notification_isar.dart';
import '../../main.dart';
import 'string_ext.dart';

extension NotificationIsarExt on NotificationIsar {
  String text(ScaleTeam scale)
  {
    if (type == NotificationType.corrector){
      if (scale.team?.projectSessionId != null){
        return sprintf(App.s.evaluation_phrase_project, [scale.team?.repoUrl?.substringAfterLast("-"), scale.team?.projectGitlabPath?.substringAfterLast("/") ?? "",scale.beginAt!.toIso8601String()]);
      }
      return sprintf(App.s.evaluation_phrase, [scale.beginAt!.toIso8601String()]);
    }
    else{
      if (scale.team?.projectSessionId != null){
        return sprintf(App.s.correction_phrase_project, ["linkkader", scale.team?.projectGitlabPath?.substringAfterLast("/") ?? "",scale.beginAt!.toIso8601String()]);
      }
      return sprintf(App.s.correction_phrase, [scale.beginAt!.toIso8601String()]);
    }
  }
}