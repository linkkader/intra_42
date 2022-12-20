
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
        var str = "";
        try{
          str = App.s.evaluation_phrase_project;
        }catch(_){
          str = "You will evaluate %s on %s at %s";
        }
        return sprintf(str, [scale.team?.repoUrl?.substringAfterLast("-"), scale.team?.projectGitlabPath?.substringAfterLast("/") ?? "",scale.beginAt!.toIso8601String()]);
      }
      var str = "";
      try{
        str = App.s.evaluation_phrase;
      }catch(_){
        str = "You will evaluate someone at %s";
      }
      return sprintf(str, [scale.beginAt!.toIso8601String()]);
    }
    else{
      if (scale.team?.projectSessionId != null){
        var str = "";
        try{
          str = App.s.correction_phrase_project;
        }catch(_){
          str = "%s will evaluate you on %s at %s";
        }
        return sprintf(str, ["linkkader", scale.team?.projectGitlabPath?.substringAfterLast("/") ?? "",scale.beginAt!.toIso8601String()]);
      }
      var str = "";
      try{
        str = App.s.correction_phrase;
      }catch(_){
        str = "Someone will evaluate you at %s";
      }
      return sprintf(str, [scale.beginAt!.toIso8601String()]);
    }
  }
}