// Created by linkkader on 17/11/2022

import 'dart:async';

import '../../core/utils/pair.dart';
import '../api/api.dart';
import '../locale_storage/storage_stream.dart';
import '../models/black_hole_data.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/user_isar.dart';

class BlackHoleRepository {

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

  Future<BlackHoleData?> blackHoleLogin(String login) {
    assert(_isInit, "BlackHoleRepository not initialized");
    return _api.blackHoleLogin(login).then((value){
      return value;
    });
  }


}