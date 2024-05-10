// Created by linkkader on 11/9/22

import '../../data/models/project_data.dart';
import '../../data/models/scale_team.dart';
import '../../data/models/user.dart';

abstract class UserInterface {
  Future<User> me();
  Future<List<ScaleTeam>> scales();
  Future<List<ProjectData>> projectData(int cursusId, int campusId, String login);
  Future<List<User>> usersCampus(int campusId,{int? page, int? perPage = 100});
  Future<User> user(int id);
}