// Created by linkkader on 4/12/2022

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
  Future<List<ScaleTeam>> projectScale(int id) async {
    assert(_isInit, "ScaleRepository is not initialized");
    return await _api.scalesByTeamId(id);
  }

}