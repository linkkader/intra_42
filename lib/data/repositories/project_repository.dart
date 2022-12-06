// Created by linkkader on 4/12/2022

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/main.dart';
import '../../domain/api_interface/project_interface.dart';
import '../../domain/util_interface/provider_interface.dart';
import '../api/api.dart';
import '../models/user.dart';

class ProjectRepository extends ProjectInterface with ProviderInterface {
  late Api _api;
  bool _isInit = false;
  Provider<ProjectRepository>? _pr;

  static final instance = ProjectRepository._();
  ProjectRepository._();
  factory ProjectRepository() => instance;

  void init(Api api) {
    assert(!_isInit, "ProjectRepository is already initialized");
    _api = api;
    _isInit = true;
  }

  @override
  Future<Project> project(int projectId) async {
    assert(_isInit, "ProjectRepository is not initialized");
    var projects = await _api.projectsById(projectId);
    assert(projects.length == 1, "ProjectRepository: length of projects is not 1");
    return projects.first;
  }

  @override
  Future<ProjectsUser?> projectUser(int userId, int projectId) async {
    assert(_isInit, "ProjectRepository is not initialized");
    var projects = await _api.projectsUser(userId, projectId);
    if (projects.isEmpty) return null;
    return projects.first;
  }

  @override
  Future<Pair<Project, ProjectsUser?>> projectFull(int userId, int projectId) async {
    assert(_isInit, "ProjectRepository is not initialized");
    var project = await this.project(projectId);
    var projectUser = await this.projectUser(userId, projectId);
    return Pair(project, projectUser);
  }

  @override
  Provider get provider => _pr ??= Provider((ref) => this);


}