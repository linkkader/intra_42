// Created by linkkader on 4/12/2022

import 'dart:convert';

import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models_izar/scale_team_isar.dart';
import 'package:intra_42/main.dart';

import '../../domain/api_interface/scale_interface.dart';
import '../api/api.dart';
import '../models/scale_team.dart';

class ScaleRepository extends ScaleInterface {
  late Api _api;
  bool _isInit = false;

  static final instance = ScaleRepository._();
  ScaleRepository._();
  factory ScaleRepository() => instance;

  void init(Api api) {
    assert(!_isInit, "ScaleRepository is already initialized");
    _api = api;
    _isInit = true;
  }

  @override
  Future<Map<int, List<ScaleTeam>>> projectScale(List<int> id) async {
    var map = <int, List<ScaleTeam>>{};
    assert(_isInit, "ScaleRepository is not initialized");
    var data = "";
    for (var value in id) {
      map[value] = await _api.scalesByTeamId("filter[team_id]=$value");
    }
    App.log.i(data);
    return map;
  }

  @override
  Future<List<ScaleTeam>> scalesAsCorrected() async{
    assert(_isInit, "ScaleRepository is not initialized");
    var lst = await _api.scalesAsCorrected();
    for (var element in lst) {
      LocaleStorage.setScaleTeam(element);
    }
    return lst;
  }

  @override
  Future<List<ScaleTeam>> scalesAsCorrector() async {
    assert(_isInit, "ScaleRepository is not initialized");
    // var str = r"""[{"id":4891206,"scale_id":15134,"comment":null,"created_at":"2022-12-07T08:48:47.860Z","updated_at":"2022-12-07T08:48:47.860Z","feedback":null,"final_mark":null,"flag":{"id":1,"name":"Ok","positive":true,"icon":"check-4","created_at":"2015-09-14T23:06:52.000Z","updated_at":"2015-09-14T23:06:52.000Z"},"begin_at":"2022-12-07T11:00:00.000Z","correcteds":[{"id":116289,"login":"khammadi","url":"https://api.intra.42.fr/v2/users/khammadi"}],"corrector":{"id":95264,"login":"acouliba","url":"https://api.intra.42.fr/v2/users/acouliba"},"truant":{},"filled_at":null,"questions_with_answers":[],"scale":{"id":15134,"evaluation_id":1592,"name":"scale 7","is_primary":true,"comment":"","introduction_md":"Please comply with the following rules:\n\n- Remain polite, courteous, respectful and constructive throughout the \n  evaluation process. The well-being of the community depends on it.\n\n- Identify with the student or group whose work is evaluated the possible \n  dysfunctions in their project. Take the time to discuss and debate the \n  problems that may have been identified.\n\n- You must consider that there might be some differences in how your peers \n  might have understood the project's instructions and the scope of its \n  functionalities. Always keep an open mind and grade them as honestly as \n  possible. The pedagogy is useful only and only if the peer-evaluation is \n  done seriously.\n","disclaimer_md":"","guidelines_md":"- Only grade the work that was turned in the Git repository of the evaluated \n  student or group.\n\n- Double-check that the Git repository belongs to the student(s). Ensure that \n  the project is the one expected. Also, check that 'git clone' is used in an \n  empty folder.\n\n- Check carefully that no malicious aliases was used to fool you and make you \n  evaluate something that is not the content of the official repository.\n\n- To avoid any surprises and if applicable, review together any scripts used \n  to facilitate the grading (scripts for testing or automation).\n\n- If you have not completed the assignment you are going to evaluate, you have \n  to read the entire subject prior to starting the evaluation process.\n\n- Use the available flags to report an empty repository, a non-functioning \n  program, a Norm error, cheating, and so forth. \n  In these cases, the evaluation process ends and the final grade is 0, \n  or -42 in case of cheating. However, except for cheating, student are \n  strongly encouraged to review together the work that was turned in, in order \n  to identify any mistakes that shouldn't be repeated in the future.\n\n- Remember that for the duration of the defence, no segfault, no other \n  unexpected, premature, uncontrolled or unexpected termination of the \n  program, else the final grade is 0. Use the appropriate flag. \n  You should never have to edit any file except the configuration file if it \n  exists. If you want to edit a file, take the time to explicit the reasons \n  with the evaluated student and make sure both of you are okay with this.\n\n- You must also verify the absence of memory leaks. Any memory allocated on \n  the heap must be properly freed before the end of execution. \n  You are allowed to use any of the different tools available on the computer, \n  such as leaks, valgrind, or e_fence. In case of memory leaks, tick the \n  appropriate flag.\n","created_at":"2022-07-11T09:29:50.159Z","correction_number":3,"duration":1800,"manual_subscription":true,"languages":[{"id":2,"name":"English","identifier":"en","created_at":"2015-04-14T16:07:38.122Z","updated_at":"2022-12-07T10:43:22.814Z"},{"id":1,"name":"Français","identifier":"fr","created_at":"2014-11-02T16:43:38.466Z","updated_at":"2022-12-07T10:38:41.224Z"},{"id":11,"name":"Spanish","identifier":"es","created_at":"2019-08-09T15:14:32.544Z","updated_at":"2022-12-07T08:44:12.770Z"},{"id":15,"name":"Armenian","identifier":"hy","created_at":"2020-03-12T09:15:12.038Z","updated_at":"2022-12-07T08:43:42.322Z"}],"flags":[{"id":1,"name":"Ok","positive":true,"icon":"check-4","created_at":"2015-09-14T23:06:52.000Z","updated_at":"2015-09-14T23:06:52.000Z"},{"id":2,"name":"Empty work","positive":false,"icon":"file-1","created_at":"2015-09-14T23:06:52.000Z","updated_at":"2015-09-14T23:06:52.000Z"},{"id":3,"name":"Incomplete work","positive":false,"icon":"file-attention","created_at":"2015-09-14T23:06:52.000Z","updated_at":"2015-09-14T23:06:52.000Z"},{"id":6,"name":"Norme","positive":false,"icon":"receipt-1","created_at":"2015-09-14T23:06:52.000Z","updated_at":"2015-09-14T23:06:52.000Z"},{"id":7,"name":"Cheat","positive":false,"icon":"layers","created_at":"2015-09-14T23:06:52.000Z","updated_at":"2015-09-14T23:06:52.000Z"},{"id":8,"name":"Crash","positive":false,"icon":"bomb","created_at":"2015-09-14T23:06:52.000Z","updated_at":"2015-09-14T23:06:52.000Z"},{"id":9,"name":"Outstanding project","positive":true,"icon":"star-1","created_at":"2017-05-18T14:07:37.380Z","updated_at":"2017-05-18T14:12:07.415Z"},{"id":11,"name":"Concerning situation","positive":false,"icon":"alert-2","created_at":"2017-11-03T12:27:44.876Z","updated_at":"2017-11-03T12:27:44.876Z"},{"id":12,"name":"Leaks","positive":false,"icon":"blood","created_at":"2018-02-09T15:50:28.558Z","updated_at":"2018-02-09T15:50:28.558Z"},{"id":13,"name":"Forbidden Function","positive":false,"icon":"delete-2","created_at":"2018-05-15T12:44:59.600Z","updated_at":"2018-05-15T12:44:59.600Z"}],"free":false},"team":{"id":4585830,"name":"khammadi's group-1","url":"https://api.intra.42.fr/v2/teams/4585830","final_mark":null,"project_id":1316,"created_at":"2022-12-06T21:03:34.091Z","updated_at":"2022-12-07T10:37:01.586Z","status":"waiting_for_correction","terminating_at":null,"users":[{"id":116289,"login":"khammadi","url":"https://api.intra.42.fr/v2/users/khammadi","leader":true,"occurrence":1,"validated":true,"projects_user_id":2878345}],"locked?":true,"validated?":null,"closed?":true,"repo_url":"git@vogsphere-v2-bg.1337.ma:vogsphere/intra-uuid-5d397d9b-88ea-4087-a929-a39dc84066b5-4585830-khammadi","repo_uuid":"intra-uuid-5d397d9b-88ea-4087-a929-a39dc84066b5-4585830-khammadi","locked_at":"2022-12-06T21:03:34.158Z","closed_at":"2022-12-06T23:04:32.086Z","project_session_id":3302,"project_gitlab_path":"pedago_world/42-cursus/inner-circle/ft_printf"},"feedbacks":[]}]""";
    // var data = json.decode(str);
    // List<ScaleTeam> lst = [];
    // App.log.i(data.length);
    // for(var value in data)
    // {
    //   lst.add(ScaleTeam.fromJson(value));
    //   LocaleStorage.setScaleTeam(ScaleTeam.fromJson(value));
    // }
    // return lst;
    var lst = await _api.scalesAsCorrector();
    for (var element in lst) {
      LocaleStorage.setScaleTeam(element);
    }
    return lst;
  }

}