// Created by linkkader on 7/10/2022

import 'package:intra_42/data/models/black_hole_data.dart';
import 'package:intra_42/data/models/expertise.dart';
import 'package:intra_42/data/models/token_body.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/models_izar/expertise_izar.dart';
import 'package:intra_42/data/models_izar/img.dart';
import 'package:intra_42/data/models_izar/pref_isar.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/main.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/token_body_isar.dart';

class LocaleStorage implements SharedPreferences{
  static const debug = "LocaleStorage:";
  late final SharedPreferences _prefs;
  bool _isInit = false;
  LocaleStorage._internal();
  static final instance = LocaleStorage._internal();

  factory LocaleStorage() => instance;
  static late final Isar _isar;

  Future<void> init() async {
    assert(!_isInit, "LocalStorage already initialized");

    _isar = await Isar.open([TokenBodyIsarSchema, UserIsarSchema, ImgSchema, BlackHoleIsarSchema, DateTimeIsarSchema, ExpertiseIsarSchema], maxSizeMiB: 10000,);
    //init shared preferences
    _prefs = await SharedPreferences.getInstance();
    _isInit = true;
    App.log.i("Locale Storage initialized");

  }


  @override
  Future<bool> clear() {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.clear();
  }

  @override
  Future<bool> commit() {
    throw UnimplementedError();
  }

  @override
  bool containsKey(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.containsKey(key);
  }

  @override
  Object? get(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.get(key);
  }

  @override
  bool? getBool(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.getBool(key);
  }

  @override
  double? getDouble(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.getDouble(key);
  }

  @override
  int? getInt(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.getInt(key);
  }

  @override
  Set<String> getKeys() {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.getKeys();
  }

  @override
  String? getString(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.getString(key);
  }

  @override
  List<String>? getStringList(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.getStringList(key);
  }

  @override
  Future<void> reload() {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.reload();
  }

  @override
  Future<bool> remove(String key) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.remove(key);
  }

  @override
  Future<bool> setBool(String key, bool value) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.setBool(key, value);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.setDouble(key, value);
  }

  @override
  Future<bool> setInt(String key, int value) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.setInt(key, value);
  }

  @override
  Future<bool> setString(String key, String value) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.setString(key, value);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) {
    assert(_isInit, "LocalStorage not initialized");
    return _prefs.setStringList(key, value);
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

  static DateTime? dateTime(String key) => _isar.dateTimeIsars.where().keyEqualTo(key).findFirstSync()?.value;
  static void setDateTime(String key, DateTime value) => _isar.writeTxn(() async{
    _isar.dateTimeIsars.put(DateTimeIsar(key, value));
  });

}