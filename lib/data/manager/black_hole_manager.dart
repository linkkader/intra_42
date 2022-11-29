// Created by linkkader on 17/11/2022

import 'package:intra_42/core/utils/task_runner.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/data/repositories/black_hole_repository.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import 'package:isar/isar.dart';

import '../models_izar/black_hole.dart';

class BlackHoleManager{
  final int _userFetchCount = 30;
  TaskRunner<int>? runner;
  static final BlackHoleManager _instance = BlackHoleManager._();

  BlackHoleManager._();

  factory BlackHoleManager() {
    return _instance;
  }

  void fetchAllBlackHole({Function? onFinish})
  {
    App.log.i("Fetching all black holes");
    var now = DateTime.now();
    TaskRunner<UserIsar> blackHoleTask = TaskRunner(maxConcurrentTasks: 100, (item, runner) async{
      //only update one time a day
      if (runner.isEmpty)
      {
        //App.log.i("All black holes updated");
        onFinish?.call();
      }
      //      BlackHoleIsar? blackHole = LocaleStorage.isar.blackHoleIsars.getSync(item.id!);
      BlackHoleIsar? blackHole = LocaleStorage().blackHoleIsar(item.id!);
      if (blackHole != null && now.isBefore(blackHole.updatedAt!.add(const Duration(days: 1)))){
        return;
      }
      try{
        var data = await BlackHoleRepository().blackHoleLogin(item.login!);
        blackHole = BlackHoleIsar.fromFreezed(data).copyWith(id : item.id, updatedAt: now);
        LocaleStorage().updateBlackHole(blackHole);
      }catch(_){
        App.log.e("error78 $_}");
      }
      if (runner.isEmpty)
      {
        onFinish?.call();
      }
    });
    var all = LocaleStorage.isar.userIsars.where().findAllSync();
    blackHoleTask.addAll(all);
  }

  void fetchCampusAllUser(int campusId, {Function()? onFinish}) async {
    if(runner?.isRunning == true){
      App.log.i("BlackHoleManager: fetchUser: already running");
      return;
    }
    var last = LocaleStorage.dateTime("fetchCampusAllUser");
    var now = DateTime.now();
    if (last != null && now.isBefore(last.add(const Duration(days: 1)))){
      App.log.i("BlackHoleManager: fetchUser: already updated");
      onFinish?.call();
      return;
    }
    int page = 0;
    //maxConcurrentTasks 1 api limit
    runner = TaskRunner(maxConcurrentTasks: 1,(item, runner) async {
      List<User> lst = [];
      try{
        lst = await UserRepository().usersCampus(campusId, page: item);
        for (var element in lst) {
          LocaleStorage().updateUser(element);
        }
      }catch(_){
        App.log.i("BlackHoleManager: error $_})");
      }
      if (lst.length == _userFetchCount) {
        runner.add(page++);
      }
      else{
        onFinish?.call();
        LocaleStorage.setDateTime("fetchCampusAllUser", DateTime.now());
      }},
    );
    runner?.add(page++);
  }

  BlackHoleManager init() {
    return this;
  }


}