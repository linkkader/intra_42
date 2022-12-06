// Created by linkkader on 7/10/2022

import 'package:intra_42/data/models/black_hole_data.dart';
import 'package:intra_42/data/models/expertise.dart';
import 'package:intra_42/data/models/scale_team.dart';
import 'package:intra_42/data/models/token_body.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/models_izar/expertise_izar.dart';
import 'package:intra_42/data/models_izar/img.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/data/models_izar/pref_isar.dart';
import 'package:intra_42/data/models_izar/scale_team_isar.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/main.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/token_body_isar.dart';

class LocaleStorage{
  static const debug = "LocaleStorage:";
  late final SharedPreferences _prefs;
  bool _isInit = false;
  LocaleStorage._internal();
  static final instance = LocaleStorage._internal();

  factory LocaleStorage() => instance;
  static late final Isar _isar;

  Future<void> init() async {
    assert(!_isInit, "LocalStorage already initialized");
    _isar = await Isar.open([TokenBodyIsarSchema, UserIsarSchema, ImgSchema, BlackHoleIsarSchema, DateTimeIsarSchema, ExpertiseIsarSchema, IntIsarSchema, StringIsarSchema, NotificationIsarSchema, ScaleTeamIsarSchema], maxSizeMiB: 10000,);
    _isInit = true;
    App.log.i("Locale Storage initialized");

  }

  String? get cookie => getString("cookie");
  void updateCookie(String value) => setString("cookie", value);

  TokenBody? get tokenBody => _isar.tokenBodyIsars.getSync(0)?.toFreezed();
  Future updateTokenBody(TokenBody value) async{
    _isar.writeTxn(() async{
      var check = await _isar.tokenBodyIsars.put(TokenBodyIsar.fromFreezed(value));
      App.log.i("$debug updateTokenBody success: $check");
    }).onError((error, stackTrace) {
      App.log.e("$debug updateTokenBody error: $error");
    });
  }

  void updateMe(User value) async{
    App.log.i("$debug updateMe: $value");
    await _isar.writeTxn(() async{
      var v = UserIsar.fromFreezed(value);
      await _isar.userIsars.put(v.copyWith(isarId: 0));
      App.log.i("$debug updateUser success");
    }).onError((error, stackTrace) {
      App.log.e("$debug updateUser error: $error $stackTrace");
    });
  }


  // void updateUser(User value, {bool force = false}) async{
  //   var user = getUser(value.id!);
  //   var me = _isar.userIsars.getSync(0);
  //   await _isar.writeTxn(() async{
  //     await _isar.userIsars.put(UserIsar.fromFreezed(value));
  //   }).onError((error, stackTrace) {
  //     print("$debug updateUser error: $error $stackTrace");
  //   });
  //   print(_isar.userIsars.countSync());
  // }

  //todo: need check
  void updateUser(User value, {bool force = false}) async{
    var user = getUser(value.id!);
    var me = _isar.userIsars.getSync(0);
    await _isar.writeTxn(() async{
      if (force){
        if (value.id == me?.id){
          await _isar.userIsars.put(me!.copyWith(location: value.location ?? me.location));
        }
        else if (user != null)
        {
          value = value.copyWith(location: value.location ?? user.location, cursusUsers: value.cursusUsers ?? user.cursusUsers, campus: value.campus ?? user.campus);
          await _isar.userIsars.put(UserIsar.fromFreezed(value));
        }
      }else{
        await _isar.userIsars.put(UserIsar.fromFreezed(value));
      }
    }).onError((error, stackTrace) {
      App.log.e("$debug updateUser error: $error $stackTrace");
    });
  }


  void updateBlackHole(BlackHoleIsar blackHoleIsar) async{
    await _isar.writeTxn(() async{
      await _isar.blackHoleIsars.put(blackHoleIsar);

      var user = await _isar.userIsars.where().isarIdEqualTo(blackHoleIsar.id!).findFirst();
      if (user != null){
        if (user.cursusUsers == null){
          user = user.copyWith(cursusUsers: [CursusUserIsar(blackholedAt: blackHoleIsar.bhDate, updatedAt: blackHoleIsar.updatedAt)]);
        }
        else{
          user = user.copyWith(cursusUsers: user.cursusUsers!.map((e) => e.copyWith(blackholedAt: blackHoleIsar.bhDate, updatedAt: blackHoleIsar.updatedAt)).toList());
        }
        await _isar.userIsars.put(user);
      }
    }).onError((error, stackTrace) {
      App.log.e("$debug updateUser error: $error $stackTrace");
    });
  }


  BlackHoleIsar? blackHoleIsar(int id){
    return _isar.blackHoleIsars.getSync(id);
  }

  ///all users
  List<User> allUsers(){
    return _isar.userIsars.where().findAllSync().map((e) => e.toFreezed()).toList();
  }
  User? getUser(int id) => _isar.userIsars.where().idEqualTo(id).findFirstSync()?.toFreezed();
  User? getUserByLogin(String login) {
    return _isar.userIsars.where().loginEqualTo(login).findFirstSync()?.toFreezed();
  }

  ///all notifications
  List<NotificationIsar> getAllNotifications(){
    return _isar.notificationIsars.where().findAllSync();
  }

  List<Expertise> allExpertises(){
    return _isar.expertiseIsars.where().findAllSync().map((e) => e.toFreezed()).toList();
  }

  Future saveAllExpertises(List<Expertise> all) async{
    for (var value in all) {
      await _isar.writeTxn(() async {
        await _isar.expertiseIsars.put(ExpertiseIsar.fromFreezed(value));
      });
    }
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

  static DateTime? dateTime(String key) {
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.dateTimeIsars.where().keyEqualTo(key).findFirstSync()?.value;
  }

  static void setDateTime(String key, DateTime value) async {
    assert(instance._isInit, "LocalStorage not initialized");
    await _isar.writeTxn(() async{
      _isar.dateTimeIsars.put(DateTimeIsar(key, value));
    });
  }

  static int? getInt(String key) {
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.intIsars.where().keyEqualTo(key).findFirstSync()?.value;
  }

  static Future setInt(String key, int value) async {
    assert(instance._isInit, "LocalStorage not initialized");
    await _isar.writeTxn(() async{
      _isar.intIsars.put(IntIsar(key, value));
    });
  }

  static Future setString(String key, String value) async {
   assert(instance._isInit, "LocalStorage not initialized");
   await _isar.writeTxn(() async{
     _isar.stringIsars.put(StringIsar(key, value));
   });
  }

  static String? getString(String s) {
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.stringIsars.where().keyEqualTo(s).findFirstSync()?.value;
  }

  static Future setNotification(NotificationIsar value) async {
    assert(instance._isInit, "LocalStorage not initialized");
    await _isar.writeTxn(() async{
      _isar.notificationIsars.put(value);
    });
  }

  static Future setScaleTeam(ScaleTeam scale){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.writeTxn(() async{
      _isar.scaleTeamIsars.put(ScaleTeamIsar.fromFreezed(scale));
    });
  }

  static ScaleTeam? getScaleTeam(int id){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.scaleTeamIsars.getSync(id)?.toFreezed();
  }
}