// Created by linkkader on 17/11/2022

import '../../core/utils/pair.dart';
import '../../data/models/black_hole_data.dart';
import '../../data/models_izar/black_hole.dart';
import '../../data/models_izar/user_isar.dart';

abstract class BlackHoleInterface {
  Future<BlackHoleData?> blackHoleLogin(String login);
  Future<List<Pair<int, Map<UserIsar, BlackHoleIsar>>>> allBlackHoles({Function(List<String> lst)? onImages});
}