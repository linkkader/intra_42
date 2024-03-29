// Created by linkkader on 18/11/2022

import 'dart:async';

import 'package:isar/isar.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/token_body_isar.dart';
import '../models_izar/user_isar.dart';
import 'locale_storage.dart';

class StorageStream{
  static final StorageStream _instance = StorageStream._();
  StorageStream._();

  factory StorageStream() {
    return _instance;
  }

  Stream<List<BlackHoleIsar>> get allBlackHole {
    return LocaleStorage.isar.blackHoleIsars.filter().bhDateIsNotNull().idIsNotNull().sortByBhDate().findAll().asStream();
  }

  Stream<List<UserIsar?>> allBlackHoleUsers(List<BlackHoleIsar> blackHoles) {
    return LocaleStorage.isar.userIsars.getAll(blackHoles.map((e) => e.id!).toList()).asStream();
  }

  Stream<UserIsar?> me(){
    return LocaleStorage.isar.userIsars.watchObject(0, fireImmediately: true);
  }

  Stream<TokenBodyIsar?> token(){
    return LocaleStorage.isar.tokenBodyIsars.watchObject(0, fireImmediately: true);
  }

  ///all user
  Stream<List<UserIsar?>> allUser() => LocaleStorage.isar.userIsars.filter().idIsNotNull().findAll().asStream();
}