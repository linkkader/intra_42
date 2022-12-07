// Created by linkkader on 18/11/2022

import 'dart:async';

import 'package:isar/isar.dart';
import '../models_izar/black_hole.dart';
import '../models_izar/user_isar.dart';
import 'locale_storage.dart';

class StorageStream{
  static final StorageStream _instance = StorageStream._();
  StorageStream._();

  factory StorageStream() {
    return _instance;
  }

}