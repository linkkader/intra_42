// Created by linkkader on 7/10/2022

import 'dart:core';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:isar/isar.dart';
import 'package:linkkader/blachhole/core/extensions/string_ext.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/params/constants.dart';
import '../models/token_body.dart';
import '../models/user.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/img.dart';
import '../models_izar/pref_isar.dart';
import '../models_izar/user_isar.dart';
import '../save/Saveimage.dart';

class LocaleStorage {
  static const debug = "LocaleStorage:";
  bool _isInit = false;
  static late SharedPreferences _prefs;
  LocaleStorage._internal();
  late Box<SaveImg> imgBox;
  static final instance = LocaleStorage._internal();

  factory LocaleStorage() => instance;

  Future<void> init() async {
    assert(!_isInit, "LocalStorage already initialized");
    print("locale storage init");
    await Hive.initFlutter();
    Hive.registerAdapter(SaveImgAdapter());
    _prefs = await SharedPreferences.getInstance();
    imgBox = await Hive.openBox<SaveImg>("saveImg");
    //init shared preferences
    _isInit = true;

  }

  Future<List<int>?> img(String url) async {
    return imgBox.get(safeId(url))?.img;
  }
  Future saveImg(String url, List<int> data) async{
    await imgBox.put(safeId(url), SaveImg(data));
  }



  static DateTime? dateTime(String key) {
    var str = _prefs.getString(key);
    return str == null ? null : DateTime.parse(str);
  }
  static void setDateTime(String key, DateTime value){
    _prefs.setString(key, value.toIso8601String());
  }

  static int? getInt(String key) => _prefs.getInt(key);
  static void setInt(String key, int value) => _prefs.setInt(key, value);

}