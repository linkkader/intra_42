// Created by linkkader on 11/9/22

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_brotli/flutter_brotli.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/parser.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models/cluster_item.dart';
import 'package:intra_42/data/models/empty_cluster.dart';
import 'package:intra_42/data/models/event.dart';
import 'package:intra_42/data/models/expertise.dart';
import 'package:intra_42/data/models/project_data.dart';
import 'package:intra_42/data/models/scale_team.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/models_izar/user2_isar.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/domain/api_interface/user_interface.dart';
import 'package:intra_42/main.dart';
import '../../core/utils/task_runner.dart';
import '../../domain/util_interface/provider_interface.dart';
import '../api/api.dart';
import '../models/logtime.dart';
import 'package:intra_42/core/extensions/element_ext.dart';

import '../models/user_2.dart';

///todo: too many functions, split into smaller classes
class UserRepository extends UserInterface with ProviderInterface {
  late Api _api;
  bool _isInit = false;
  Provider<UserRepository>? _pr;

  static final UserRepository _instance = UserRepository._internal();
  UserRepository._internal();
  factory UserRepository() => _instance;

  UserRepository init(Api api) {
    assert(!_isInit, "UserRepository already initialized");
    _api = api;
    _isInit = true;
    return this;
  }

  @override
  Future<User> me() {
    assert(_isInit, "UserRepository not initialized");
    return _api.me().then((value) async {
      await LocaleStorage().updateMe(value);
      return value;
    });
  }


  @override
  Future<List<ScaleTeam>> scales() {
     assert(_isInit, "UserRepository not initialized");
     return _api.scales();
  }


  @override
  Provider get provider => _pr ??= Provider((ref) => this);

  @override
  Future<List<Event>> events(String id) {
    assert(_isInit, "UserRepository not initialized");
    return _api.events(id);
  }


  @override
  Future<Map<DateTime, LogTime>> locationStats(String login) {
    assert(_isInit, "AuthRepository not initialized");
    return _api.locationsStats(login).then((value) => logTimeFromJson(value));
  }

  @override
  Future<List<Expertise>> allExpertises() async {
    var now = DateTime.now();
    var lastUpdate = LocaleStorage.dateTime("allExpertises");
    if (lastUpdate != null && now.difference(lastUpdate).inDays < 2){
      return LocaleStorage().allExpertises();
    }

    var completer = Completer<List<Expertise>>();
    var expertises = <Expertise>[];
    var taskRunner = TaskRunner<int>((item, runner) async{
      var lst = await _api.expertises(item);
      expertises.addAll(lst);
      if (lst.length == 100) {
        runner.add(item + 1);
      } else {
        await LocaleStorage().saveAllExpertises(expertises);
        LocaleStorage.setDateTime("allExpertises", now);
        completer.complete(expertises);
      }
      },
    );
    taskRunner.add(0);
    return completer.future;
  }

  @override
  Future<List<ProjectData>> projectData(int cursusId, int campusId, String login) {
    assert(_isInit, "AuthRepository not initialized");
    return _api.projectData(cursusId, campusId);
  }


  @override
  Future<List<User>> usersCampus(int campusId, {int? page, int? perPage = 100}) {
    assert(_isInit, "AuthRepository not initialized");
    var dio = Dio();
    // dio.options.headers.addAll(Client.headers());
    //
    // dio.options.headers.addAll({
    //   'kader', 'projects.intra.42.fr'
    // } as Map<String, dynamic>);
    var api = Api(dio);
    App.log.d("headers78", dio.options.headers);
    return api.usersCampus(campusId, page: page);
  }

  @override
  Future<User> user(int id) {
    assert(_isInit, "AuthRepository not initialized");
    return _api.user(id).then((value) {
      LocaleStorage().updateUser(value);
      return value;
    });
  }

  @override
  Future<User> userByLogin(String login) async {
    assert(_isInit, "AuthRepository not initialized");
    var users = await _api.userByLogin(login);
    assert(users.isNotEmpty, "User not found");
    return user(users.first.id!);
  }

  @override
  Future<List<CursusUser>> userCursus(int userId) async {
    assert(_isInit, "AuthRepository not initialized");
    var cursusUser = await _api.userCursus(userId);
    await LocaleStorage().updateUserCursus(userId, cursusUser);
    return cursusUser;
  }

  @override
  Future<List<ExpertisesUser>> userExpertises(int userId) async {
    assert(_isInit, "AuthRepository not initialized");
    var cursusUser = await _api.userExpertises(userId);
    await LocaleStorage().updateUserExpertises(userId, cursusUser);
    return cursusUser;
  }

  @override
  Future<List<User2>> blackHoleUsers() async {
    var dio = Dio();
    var data = json.decode((await dio.get("https://raw.githubusercontent.com/linkkader/Intra_42/main/last_update.json")).data);
    var update = DateTime.parse(data["update"]);
    var lastUpdate = LocaleStorage.dateTime("last");
    App.log.i("Updating black hole users $lastUpdate $update");
    if (lastUpdate != null && !(update.isAfter(lastUpdate))) {

    }
    else {
      App.log.i("Updating black hole users");
      try{
        var h = (await dio.get<List<int>>(
            "https://raw.githubusercontent.com/linkkader/Intra_42/main/users.json.br",
            options: Options(responseType: ResponseType.bytes))).data;
        try {
          FlutterBrotli.init();
        } catch (_) {
          App.log.d("FlutterBrotli.init() failed");
        }
        data = json.decode(await FlutterBrotli.decompress(Uint8List.fromList(h!)));
      }catch(_){
        var h = (await dio.get<List<int>>(
            "https://raw.githubusercontent.com/linkkader/Intra_42/main/users.json",
            options: Options(responseType: ResponseType.bytes))).data;
        data = json.decode(utf8.decode(h!));
      }
      var users = <User2>[];
      for (var d in data) {
        try {
          users.add(User2.fromJson(d));
        } catch (_) {}
      }
      try{
        await LocaleStorage.setListUser2(users);
        App.log.d("users saved ${users.length}");
      }catch(_){
        App.log.d("failed to save users");
      }
      LocaleStorage.setDateTime("last", update);
    }
    // return LocaleStorage.allUser2ByCampus(campusName);
    return LocaleStorage.allUser2();
  }

  @override
  Future<List<User>> searchUser(String search) {
    assert(_isInit, "AuthRepository not initialized");
    return _api.usersSearch(search);
  }
}