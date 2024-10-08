// Created by linkkader on 17/11/2022

import 'dart:async';

import '../../core/utils/pair.dart';
import '../../domain/api_interface/black_hole_repository.dart';
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



  @override
  Future<List<Pair<int, Map<UserIsar, BlackHoleIsar>>>> allBlackHoles({Function(List<String> lst)? onImages}) async{
    assert(_isInit, "BlackHoleRepository not initialized");
    var now = DateTime.now();
    var imagesUrls = <String>[];
    Completer<List<Pair<int, Map<UserIsar, BlackHoleIsar>>>> completer = Completer();
    // _subscriptionBlackHole?.cancel();
    // _subscriptionBlackHoleUsers?.cancel();
    var _subscriptionBlackHole = StorageStream().allBlackHole.listen((event) {
      var _subscriptionBlackHoleUsers = StorageStream().allBlackHoleUsers(event).listen((users) {
        List<Pair<int, Map<UserIsar, BlackHoleIsar>>> lst = [];
        int i = 0;
        for (var blackHole in event) {
          var weeks = blackHole.bhDate!.difference(now).inDays ~/ 7;
          var a = now.difference(blackHole.bhDate!);
          if (weeks < 0) {
            continue;
          }
          if (a.inDays > 0) {
            weeks = 1;
          }
          while (lst.length < weeks + 1) {
            lst.add(Pair(weeks, {}));
          }
          // var user = users.firstWhere((element) => element?.id == blackHole.id, orElse: () => null);
          // if (user != null){
          //   lst[weeks].second[user] = blackHole;
          //   if (user.image?.versions?.small != null)imagesUrls.add(user.image!.versions!.small!);
          // }
          i++;
        }
        onImages?.call(imagesUrls);
        completer.complete(lst);
      });
    });
    return completer.future;
  }

}