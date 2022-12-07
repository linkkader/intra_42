// Created by linkkader on 11/9/22

import 'package:intra_42/data/models/event.dart';
import 'package:intra_42/data/models/expertise.dart';
import 'package:intra_42/data/models/user.dart';
import '../../data/models/logtime.dart';
import '../../data/models/project_data.dart';
import '../../data/models/scale_team.dart';

abstract class UserInterface {
  Future<User> me();
  Future<List<ScaleTeam>> scales();
  Future<List<Event>> events(String id);
  Future<Map<DateTime, LogTime>> locationStats(String login);
  Future<List<Expertise>> allExpertises();
  Future<List<ProjectData>> projectData(int cursusId, int campusId, String login);
  Future<List<User>> usersCampus(int campusId,{int? page, int? perPage = 100});
  Future<User> user(int id);
  Future<User> userByLogin(String login);
  Future<List<CursusUser>> userCursus(int userId);
}