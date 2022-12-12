// Created by linkkader on 17/11/2022

import 'dart:io';

import 'package:isar/isar.dart';
import '../../core/extensions/string_ext.dart';
import '../../core/params/constants.dart';
import '../../core/utils/task_runner.dart';
import '../locale_storage/locale_storage.dart';
import '../models/user.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/user_isar.dart';
import '../repositories/black_hole_repository.dart';
import '../repositories/user_repository.dart';


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
    var i = 0;
    var now = DateTime.now();
    TaskRunner<UserIsar> blackHoleTask = TaskRunner(maxConcurrentTasks: 500, (item, runner) async{
      i++;
      //only update one time a day
      // if (runner.isEmpty)
      // {
      //   App.log.i("All black holes updated");
      //   onFinish?.call();
      // }
      //      BlackHoleIsar? blackHole = LocaleStorage.isar.blackHoleIsars.getSync(item.id!);
      print(item.login.toString() + " " + i.toString());
      BlackHoleIsar? blackHole = LocaleStorage().blackHoleIsar(item.id!);
      if (blackHole != null && now.isBefore(blackHole.updatedAt!.add(const Duration(days: 1)))){
        return;
      }
      if (item.login?.contains("3b3") == true){
        blackHole = BlackHoleIsar(id : item.id, updatedAt: now,);
        // print("blachole ${runner.runningTasksCount}");
        await LocaleStorage().updateBlackHole(blackHole);
        return;
      }
      try{
        var data = await BlackHoleRepository().blackHoleLogin(item.login!);
        blackHole = BlackHoleIsar.fromFreezed(data).copyWith(id : item.id, updatedAt: now);
        // print("blachole ${runner.runningTasksCount}");
        await LocaleStorage().updateBlackHole(blackHole);
      }catch(_){
        if (!_.toString().contains("subtype of typ")) print("blachole $_");
      }
    });
    var all = LocaleStorage.isar.userIsars.where().findAllSync();
    print(all.length);
    // exit(0);
    blackHoleTask.addAll(all);
  }

  void fetchCampusAllUser({Function()? onFinish}) async {
    // if(runner?.isRunning == true){
      // App.log.i("BlackHoleManager: fetchUser: already running");
      // return;
    // }
    print("fetchCampusAllUser ");
    var last = LocaleStorage.dateTime("fetchCampusAllUser$currentApiKey");
    var now = DateTime.now();
    print("last $last");
    if (last != null && now.isBefore(last.add(const Duration(days: 1)))){
      print("BlackHoleManager: fetchUser: already updated");
      onFinish?.call();
      return;
    }
    var allCampus = LocaleStorage.getCampus();
    var currentCampus = LocaleStorage.getInt("currentCampus") ?? 0;
    int page = LocaleStorage.getInt("page") ?? 0;
    int start = 0;
    print("page $page $currentCampus");
    // switch(currentApiKey){
    //   case 0:
    //     start = 0;
    //     break;
    //   case 1:
    //     start = 1000;
    //     break;
    //   case 2:
    //     start = 2000;
    //     break;
    //   case 3:
    //     start = 3000;
    //     break;
    // }
    List<User> all = [];
    print("start ${start}");
    //maxConcurrentTasks 1 api limit
    runner = TaskRunner(maxConcurrentTasks: 1,(item, runner) async {
      print("start ${item + start}");
      print("start1 ${item}");
      List<User> lst = [];
      try{
        print("start request");
        lst = await UserRepository().users(page: start + item, allCampus[currentCampus].id!);
        print("end request");
        print(lst);
        for (var element in lst) {
          LocaleStorage().updateUser(element.copyWith(campusName: "${allCampus[currentCampus].website?.urlName} ${allCampus[currentCampus].name}/${allCampus[currentCampus].country}"));
        }
      }catch(_){
        print(_);
        await Future.delayed(const Duration(milliseconds: 50));
        runner.add(page);
        return;
      }
      // print(lst.last.login);

      // await Future.delayed(const Duration(milliseconds: 50));
      print("end ${item + start}");
      print("count ${LocaleStorage.isar.userIsars.countSync()}");
      await LocaleStorage.setInt("page", page);
      if (lst.length == _userFetchCount) {
        print(all.length);
        runner.add(page++);
      }
      else{
        print("endAll $currentCampus ${item + start}");
        //onFinish?.call();
        await LocaleStorage.setInt("page", 0);
        currentCampus++;
        await LocaleStorage.setInt("currentCampus", currentCampus);
        fetchCampusAllUser();
        if(currentCampus == allCampus.length){
          LocaleStorage.setDateTime("fetchCampusAllUser", DateTime.now());
          exit(0);
        }
      }},
    );
    runner?.add(page++);
  }

  BlackHoleManager init() {
    return this;
  }

}