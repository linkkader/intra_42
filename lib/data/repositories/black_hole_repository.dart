// Created by linkkader on 17/11/2022

import 'dart:async';

import 'package:intra_42/data/api/api.dart';
import 'package:intra_42/data/models/black_hole_data.dart';
import 'package:intra_42/data/models/user_2.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import '../../core/utils/pair.dart';
import '../../domain/api_interface/black_hole_repository.dart';
import '../locale_storage/storage_stream.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/user_isar.dart';

class BlackHoleRepository extends BlackHoleInterface{

  late Api _api;
  bool _isInit = false;
  static final BlackHoleRepository _instance = BlackHoleRepository._();
  BlackHoleRepository._();


  StreamSubscription<List<BlackHoleIsar>>? _subscriptionBlackHole;
  StreamSubscription<List<UserIsar?>>? _subscriptionBlackHoleUsers;


  factory BlackHoleRepository() {
    return _instance;
  }

  BlackHoleRepository init(Api api) {
    assert(!_isInit, "BlackHoleRepository already initialized");
    _api = api;
    _isInit = true;
    return this;
  }

  @override
  Future<BlackHoleData?> blackHoleLogin(String login) {
    assert(_isInit, "BlackHoleRepository not initialized");
    return _api.blackHoleLogin(login).then((value){
      return value;
    });
  }



  @override
  Future<List<Pair<int, List<User2>>>> allBlackHoles(String campusName, {Function(List<String> lst)? onImages, Function(List<String> lst)? onCampusName}) async{
    assert(_isInit, "BlackHoleRepository not initialized");
    App.log.d("allBlackHoles");
    Set<String> campusNames = {};
    var now = DateTime.now();
    var imagesUrls = <String>[];
    var allUser2s = await UserRepository().blackHoleUsers();
    List<Pair<int, List<User2>>> lst = [];
    for (var user in allUser2s) {
      campusNames.add(user.campusName!);
      if (campusName != user.campusName!) continue;
      var weeks = user.bhDate!.difference(now).inDays ~/ 7;
      var a = now.difference(user.bhDate!);
      if (weeks < 0) {
        continue;
      }
      if (a.inDays > 0) {
        weeks = 1;
      }
      while (lst.length < weeks + 1) {
        lst.add(Pair(weeks, []));
      }
      lst[weeks].second.add(user);
        if (user.img != null)imagesUrls.add(user.img!);
      lst[weeks].second.add(user);
    }
    var cn = campusNames.toList();
    cn.sort((a, b) => a.compareTo(b),);
    onCampusName?.call(cn);
    onImages?.call(imagesUrls);
    return lst;
  }

}