// Created by linkkader on 4/12/2022


import 'package:intra_42/data/models/scale_team.dart';

abstract class ScaleInterface {
  Future<List<ScaleTeam>> projectScale(int id);
}