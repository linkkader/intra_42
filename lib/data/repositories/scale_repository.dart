// Created by linkkader on 4/12/2022

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

}