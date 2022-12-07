// Created by linkkader on 11/9/22


import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:linkkader/blachhole/core/extensions/date_time_ext.dart';
import 'package:linkkader/blachhole/core/extensions/int_ext.dart';
import 'package:linkkader/blachhole/data/locale_storage/locale_storage.dart';
import 'package:linkkader/blachhole/data/models/user_2.dart';

import '../../core/params/constants.dart';
import '../api/api.dart';
import '../models/user.dart';
import '../../core/extensions/string_ext.dart';

///todo: too many functions, split into smaller classes
class UserRepository {
  late Api _api;
  bool _isInit = false;

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
    return _api.me().then((value) {
      // LocaleStorage().updateMe(value);
      return value;
    });
  }


  Map<String, String> _tokenBody(String code, {authorizationCode = "authorization_code"}) {
    return {
      'grant_type': authorizationCode,
      'client_id': kClientId,
      'client_secret': kSecret,
      if (authorizationCode == "authorization_code") 'code': code
      else 'refresh_token': code,
      'redirect_uri': kRedirectUrl,
    };
  }


  @override
  Future<List<User>> usersCampus(int campusId, {int? page, int? perPage = 100}) {
    assert(_isInit, "AuthRepository not initialized");
    return _api.usersCampus(campusId, page: page);
  }

  Future<Map<int, List<User2>>> allBlackHoles({required Function(List<String> lst) onImages, Function(List<String> lst)? onFinish}) async {
    var now = DateTime.now();
    List<String> imgs = [];
    var users = await this.users(
      onFinish: (lst) {
        onFinish?.call(lst);
      },
    );
    Map<int, List<User2>> lst = {};
    for (var user in users) {
      var date = user.bhDate;
      if (date.difference(now).inDays < 0) {
        continue;
      }
      var weeks = date.difference(now).inDays ~/ 7;
      if (weeks < 0) {
        continue;
      }
      while (lst.length < weeks + 1) {
        lst[lst.length] = [];
      }
      imgs.add(user.img);
      lst[weeks]!.add(user);
      // var user = users.firstWhere((element) => element?.id == blackHole.id, orElse: () => null);
    }
    onImages(imgs);
    return lst;
  }

  Future<List<User2>> users({Function(List<String>)? onFinish}) async {
    var dio = Dio();
    var data = json.decode((await dio.get("https://raw.githubusercontent.com/linkkader/Intra_42/main/last_update.json")).data);
    var update = DateTime.parse(data["update"]);
    var lastUpdate = LocaleStorage.dateTime("last");
    if (lastUpdate != null && !(update.isAfter(lastUpdate))) {
      print("data from locale");
      data = json.decode(String.fromCharCodes((await LocaleStorage().img("linkkader"))!));
    }
    else{
      print("data fecth");
      var h = (await dio.get("https://raw.githubusercontent.com/linkkader/Intra_42/main/users.json")).data;
      LocaleStorage().saveImg("linkkader", h.toString().codeUnits);
      LocaleStorage.setDateTime("last", update);
      data = json.decode(h);
      print("data fethed");
    }

    Map<String, bool> lst = {};
    List<User2> users = [];
    for (var d in data) {
      try{
        var user = User2.fromJson(d);
        lst[user.campusName] = true;
        // lst[user.na] = true;
        users.add(user);
      }catch(_){}
      // users.add(User.fromJson(user));
    }
    // await 10.sleep();
    onFinish?.call(lst.keys.toList());
    return users;
  }


}