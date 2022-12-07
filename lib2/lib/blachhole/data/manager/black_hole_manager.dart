// Created by linkkader on 17/11/2022

import 'package:isar/isar.dart';
import '../../core/extensions/int_ext.dart';
import '../../core/params/constants.dart';
import '../../core/utils/task_runner.dart';
import '../locale_storage/locale_storage.dart';
import '../models/user.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/user_isar.dart';
import '../repositories/black_hole_repository.dart';
import '../repositories/user_repository.dart';

class BlackHoleManager{
  final int _userFetchCount = 30;
  TaskRunner<int>? runner;
  static final BlackHoleManager _instance = BlackHoleManager._();

  BlackHoleManager._();

  factory BlackHoleManager() {
    return _instance;
  }


  BlackHoleManager init() {
    return this;
  }

}