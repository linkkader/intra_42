// Created by linkkader on 8/12/2022

import 'package:intra_42/data/models_izar/notification_isar.dart';

abstract class NotificationInterface{
  Future<List<NotificationIsar>> notifications();
  Future<bool> allRead();
}