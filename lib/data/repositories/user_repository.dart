// Created by linkkader on 11/9/22


import 'dart:async';

import 'package:intra_42/core/extensions/int_ext.dart';

import '../../core/params/constants.dart';
import '../../core/utils/task_runner.dart';
import '../../domain/util_interface/provider_interface.dart';
import '../api/api.dart';
import '../api/client.dart';
import '../locale_storage/locale_storage.dart';
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

  void allCampus() {
    var runner = TaskRunner<int>(
          (item, p1) async {
            var lst = await _api.allCampus(item);
            for (var element in lst) {
              try{
                LocaleStorage.setCampus(element);
              }catch(_){}
            }
            if (lst.length == 100) {
              p1.add(item + 1);
            }
            else {
              var all = LocaleStorage.getCampus();
              print(all.length);
            }
        },maxConcurrentTasks: 1);
    runner.add(0);
  }

  Future<bool> validateCode(String code) async {
    return _api.token(_tokenBody(code)).then((value) async {
      print("renewToken: $value");
      await LocaleStorage().updateTokenBody(value);
      Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
      return true;
    }
    ).catchError((e) {
      return false;
    });
  }

  Future<bool> refreshToken(String code, {bool force = false}) {
    var body = LocaleStorage().tokenBody;
    if (body == null || force){
      print("refreshToken: body is null");
      return validateCode(code);
    }
    return _api.token(_tokenBody(body.refreshToken!, authorizationCode: "refresh_token")).then((value)async{
      print("renewToken: $value");
      await LocaleStorage().updateTokenBody(value);
      Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
      return true;
    }
    ).catchError((e){
      return false;
    });
  }


  @override
  Future<List<User>> usersCampus(int campusId, {int? page, int? perPage = 100}) {
    assert(_isInit, "AuthRepository not initialized");
    return _api.usersCampus(campusId, page: page);
  }

  Future<List<User>> users(int campusId, {int? page, int? perPage = 100}) {
    assert(_isInit, "AuthRepository not initialized");
    var completer = Completer<List<User>>();
    ()async{
      await Future.delayed(const Duration(seconds: 5));
      if (!completer.isCompleted){
        completer.completeError("timeout");
      }
    }();
    _api.users(page: page, campusId: campusId)
        .then((value) {
          if (completer.isCompleted) return;
          completer.complete(value);
        }).catchError((e){
          if (completer.isCompleted) return;
          completer.completeError(e);
        });
    return completer.future;
  }

  @override
  Future<User> user(int id) {
    assert(_isInit, "AuthRepository not initialized");
    return _api.user(id).then((value) {
      LocaleStorage().updateUser(value);
      return value;
    });
  }
}