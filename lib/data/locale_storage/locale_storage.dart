// Created by linkkader on 7/10/2022

import 'package:intra_42/data/models/black_hole_data.dart';
import 'package:intra_42/data/models/expertise.dart';
import 'package:intra_42/data/models/scale_team.dart';
import 'package:intra_42/data/models/token_body.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/models/user_2.dart';
import 'package:intra_42/data/models_izar/expertise_izar.dart';
import 'package:intra_42/data/models_izar/img.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/data/models_izar/pref_isar.dart';
import 'package:intra_42/data/models_izar/scale_team_isar.dart';
import 'package:intra_42/data/models_izar/user2_isar.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/main.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/params/constants.dart';
import '../models/user.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/token_body_isar.dart';

class LocaleStorage{
  static const debug = "LocaleStorage:";
  bool _isInit = false;
  LocaleStorage._internal();
  static final instance = LocaleStorage._internal();

  factory LocaleStorage() => instance;
  static late final Isar _isar;

  static isInit() => instance._isInit;

  Future<void> init() async {
    assert(!_isInit, "LocalStorage already initialized");
    _isar = await Isar.open([TokenBodyIsarSchema, UserIsarSchema, ImgSchema, BlackHoleIsarSchema, DateTimeIsarSchema, ExpertiseIsarSchema, IntIsarSchema, StringIsarSchema, NotificationIsarSchema, ScaleTeamIsarSchema, User2IsarSchema, ProjectsUserIsarCollectionSchema],);
    _isInit = true;

    try{
      var endpoint = LocaleStorage.getString("endpoint");
      var redirectUrl = LocaleStorage.getString("redirectUrl");
      var clientId =  LocaleStorage.getString("clientId");
      var clientSecret = LocaleStorage.getString("clientSecret");
      if (endpoint != null && redirectUrl != null && clientId != null && clientSecret != null) {
        kSignInEndpoint = endpoint;
        kRedirectUrl = redirectUrl;
        kClientId = clientId;
        kSecret = clientSecret;
        App.log.d("$debug Custom endpoint loaded");
      }
    }catch(_){
      App.log.i("$debug error ${_.toString()}");
    }
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

  Future updateMe(User value) async{
    App.log.i("$debug updateMe: $value");
    await _isar.writeTxn(() async{
      var v = UserIsar.fromFreezed(value);
      v = v.copyWith(isarId: 0);
      var id = await _isar.userIsars.put(v);
      App.log.i("$debug me updateUser success $id vid ${v.isarId}");
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
      var id = await _isar.userIsars.put(UserIsar.fromFreezed(value));
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
  static User? getUser(int id) => _isar.userIsars.where().idEqualTo(id).findFirstSync()?.toFreezed();
  static User? getUserByLogin(String login) {
    return _isar.userIsars.where().loginEqualTo(login).findFirstSync()?.toFreezed();
  }


  static Future setUser(User user){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.writeTxn(() async{
      _isar.userIsars.put(UserIsar.fromFreezed(user));
    }).catchError((error, stackTrace) {
      App.log.e("$debug setUser error: $error $stackTrace");
    });
  }

  static Future updateUserLocation(int id, String? location) async {
    assert(instance._isInit, "LocalStorage not initialized");
    var user = getUser(id);
    if (user != null){
      return _isar.writeTxn(() async{
        _isar.userIsars.put(UserIsar.fromFreezed(user.copyWith(location: location)));
        App.log.i("$debug updateUserLocation success");
      }).catchError((error, stackTrace) {
        App.log.e("$debug updateUserLocation error: $error $stackTrace");
      });
    }
  }

  ///update user cursus
  Future updateUserCursus(int id, List<CursusUser> cursusUsers) async{
    var user = _isar.userIsars.getSync(id);
    var me = getMe;
    if (user?.login == me?.login || cursusUsers.isEmpty) return;
    if (user != null){
      user = user.copyWith(cursusUsers: cursusUsers.map((e) => CursusUserIsar.fromFreezed(e)).toList());
      await _isar.writeTxn(() async{
        await _isar.userIsars.put(user!);
      }).onError((error, stackTrace) {
        App.log.e("$debug updateUser error: $error $stackTrace");
      });
    }
  }

  ///update user cursus
  Future updateUserExpertises(int id, List<ExpertisesUser> userExpertises) async{
    var user = _isar.userIsars.getSync(id);
    var me = getMe;
    if (user?.login == me?.login || userExpertises.isEmpty) return;
    if (user != null){
      user = user.copyWith(expertisesUsers: userExpertises.map((e) => ExpertisesUserIsar.fromFreezed(e)).toList());
      await _isar.writeTxn(() async{
        await _isar.userIsars.put(user!);
      }).onError((error, stackTrace) {
        App.log.e("$debug updateUser error: $error $stackTrace");
      });
    }
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

  static Future<bool> deleteString(String s) {
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.stringIsars.where().keyEqualTo(s).deleteFirst();
  }

  static Future setNotification(NotificationIsar value) async {
    assert(instance._isInit, "LocalStorage not initialized");
    await _isar.writeTxn(() async{
      _isar.notificationIsars.put(value);
    });
  }

  static NotificationIsar? getNotification(int value) {
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.notificationIsars.where().scaleTeamIdEqualTo(value).findFirstSync();
  }

  static List<NotificationIsar> getAllNotification() {
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.notificationIsars.where().findAllSync();
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


  static Future setUser2(User2 user){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.writeTxn(() async{
      _isar.user2Isars.put(User2Isar.fromFreezed(user));
    });
  }

  static User2? getUser2(int id){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.user2Isars.getSync(id)?.toFreezed();
  }

  static User2? getUser2ByLogin(String login){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.user2Isars.where().loginEqualTo(login).findFirstSync()?.toFreezed();
  }

  static List<User2> allUser2(){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.user2Isars.where().findAllSync().map((e) => e.toFreezed()).toList();
  }

  static List<User2> allUser2ByCampus(String campus){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.user2Isars.where().campusNameEqualTo(campus).findAllSync().map((e) => e.toFreezed()).toList();
  }

  static ProjectsUser? getProjectsUser(int id){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.projectsUserIsarCollections.getSync(id)?.toProjectUserIsar().toFreezed();
  }

  static Future setProjectsUser(ProjectsUser user){
    assert(instance._isInit, "LocalStorage not initialized");
    return _isar.writeTxn(() async{
      _isar.projectsUserIsarCollections.put(ProjectsUserIsarCollection.projectUserIsar(ProjectsUserIsar.fromFreezed(user)));
    });
  }

  static Future clearTokenIsar() async {
    await _isar.writeTxn(() async{
      await _isar.tokenBodyIsars.clear();
    });
  }
}