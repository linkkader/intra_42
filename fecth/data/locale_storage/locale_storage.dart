// Created by linkkader on 7/10/2022

import 'dart:core';
import 'dart:io';

import 'package:isar/isar.dart';

import '../../core/params/constants.dart';
import '../models/token_body.dart';
import '../models/user.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/img.dart';
import '../models_izar/pref_isar.dart';
import '../models_izar/token_body_isar.dart';
import '../models_izar/user_isar.dart';

class LocaleStorage {
  static const debug = "LocaleStorage:";
  bool _isInit = false;
  LocaleStorage._internal();
  static final instance = LocaleStorage._internal();

  factory LocaleStorage() => instance;
  static late final Isar _isar;

  Future<void> init() async {
    assert(!_isInit, "LocalStorage already initialized");
    print("locale storage init");
    await Isar.initializeIsarCore(download: true);
    _isar = await Isar.open([TokenBodyIsarSchema, UserIsarSchema, ImgSchema, BlackHoleIsarSchema, DateTimeIsarSchema, IntIsarSchema, CampusIsarCollectionSchema], name: "isar", directory: "/Users/linkkader/Documents/GitHub/intra_42");
    //init shared preferences
    _isInit = true;
  }


  TokenBody? get tokenBody {
    print("get token body $currentApiKey ${_isar.tokenBodyIsars.getSync(currentApiKey)}");
    return _isar.tokenBodyIsars.getSync(currentApiKey)?.toFreezed();
  }
  Future updateTokenBody(TokenBody value) async{
    await _isar.writeTxn(() async{
      var check = await _isar.tokenBodyIsars.put(TokenBodyIsar.fromFreezed(value, currentApiKey));
      print("$debug token body updated $check");
    }).onError((error, stackTrace) {
      print("$debug updateTokenBody error: $error");
    });
  }


  //todo: need check
  void updateUser(User value, {bool force = false}) async{
    var user = getUser(value.id!);
    var me = _isar.userIsars.getSync(0);
    await _isar.writeTxn(() async{
      await _isar.userIsars.put(UserIsar.fromFreezed(value));
    }).onError((error, stackTrace) {
      print("$debug updateUser error: $error $stackTrace");
    });
    print(_isar.userIsars.countSync());
  }


  Future updateBlackHole(BlackHoleIsar blackHoleIsar) async{
    await _isar.writeTxn(() async{
      await _isar.blackHoleIsars.put(blackHoleIsar);
      // var user = await _isar.userIsars.where().isarIdEqualTo(blackHoleIsar.id!).findFirst();
      // if (user != null){
      //   if (user.cursusUsers == null){
      //     user = user.copyWith(cursusUsers: [CursusUserIsar(blackholedAt: blackHoleIsar.bhDate, updatedAt: blackHoleIsar.updatedAt)]);
      //   }
      //   else{
      //     user = user.copyWith(cursusUsers: user.cursusUsers!.map((e) => e.copyWith(blackholedAt: blackHoleIsar.bhDate, updatedAt: blackHoleIsar.updatedAt)).toList());
      //   }
      //   await _isar.userIsars.put(user);
      // }
    }).onError((error, stackTrace) {
      print("$debug updateBlackHole error: $error $stackTrace");
    });
  }


  BlackHoleIsar? blackHoleIsar(int id){
    return _isar.blackHoleIsars.getSync(id);
  }

  ///all users
  List<User> allUsers(){
    return _isar.userIsars.where().idIsNotNull().findAllSync().map((e) => e.toFreezed()).toList();
  }
  User? getUser(int id) => _isar.userIsars.where().idEqualTo(id).findFirstSync()?.toFreezed();
  User? getUserByLogin(String login) {
    return _isar.userIsars.where().loginEqualTo(login).findFirstSync()?.toFreezed();
  }

  User? get getMe => _isar.userIsars.getSync(0)?.toFreezed();



  Future<Img?> img(String url) async {
    return await isar.imgs.where().urlEqualTo(url).findFirst();
  }
  void saveImg(String url, List<int> data) {
    _isar.writeTxn(() async{
      _isar.imgs.put(Img(url: url, data: data));
    });
  }


  static Isar get isar {
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar;
  }

  static DateTime? dateTime(String key) => _isar.dateTimeIsars.where().keyEqualTo(key).findFirstSync()?.value;
  static void setDateTime(String key, DateTime value) => _isar.writeTxn(() async{
    _isar.dateTimeIsars.put(DateTimeIsar(key, value));
  });

  static int? getInt(String key) => _isar.intIsars.where().keyEqualTo(key).findFirstSync()?.value;
  static Future setInt(String key, int value) => _isar.writeTxn(() async{
    _isar.intIsars.put(IntIsar(key, value));
  });

  static void setCampus(Campus campus) => _isar.writeTxn(() async{
    _isar.campusIsarCollections.put(CampusIsarCollection.fromFreezed(campus));
  });

  static List<Campus> getCampus() => _isar.campusIsarCollections.where().findAllSync().map((e) => e.toFreezed()).toList();


}