// Created by linkkader on 4/12/2022


import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/models/user.dart';

abstract class ProjectInterface {
  Future<Project> project(int projectId);
  Future<ProjectsUser> projectUser(int userId, int projectId);
  Future<Pair<Project, ProjectsUser>> projectFull(int userId, int projectId);
}