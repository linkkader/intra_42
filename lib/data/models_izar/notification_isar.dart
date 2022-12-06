// Created by linkkader on 6/12/2022

import 'package:isar/isar.dart';

part 'notification_isar.g.dart';

@Collection()
class NotificationIsar{
  final Id id = Isar.autoIncrement;
  final String? data;
  const NotificationIsar({this.data});
}