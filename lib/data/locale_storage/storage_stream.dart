// Created by linkkader on 18/11/2022

import 'dart:async';

import 'package:intra_42/data/models/token_body.dart';
import 'package:intra_42/data/models_izar/black_hole.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/data/models_izar/token_body_isar.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/main.dart';
import 'package:isar/isar.dart';
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

  Stream<UserIsar?>? user(int id){
    var isarId = LocaleStorage.isar.userIsars.where().idEqualTo(id).findFirstSync()?.isarId;

    App.log.i("StorageStream: user: $id $isarId");
    if (isarId == null){
      return LocaleStorage.isar.userIsars.watchObject(isarId!);
    }
    return null;
  }

  Stream<TokenBodyIsar?> token(){
    return LocaleStorage.isar.tokenBodyIsars.watchObject(0, fireImmediately: true);
  }

  ///all user
  Stream<List<UserIsar?>> allUser() => LocaleStorage.isar.userIsars.filter().idIsNotNull().watch();

  ///all user
  Stream<List<NotificationIsar>> allNotifications() => LocaleStorage.isar.notificationIsars.filter().dataIsNotNull().watch();

}