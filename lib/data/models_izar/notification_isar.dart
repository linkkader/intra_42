// Created by linkkader on 6/12/2022

import 'package:isar/isar.dart';

part 'notification_isar.g.dart';

@Collection()
class NotificationIsar{
  final Id? id;
  final String? data;
  const NotificationIsar({this.data, this.id = Isar.autoIncrement});
}