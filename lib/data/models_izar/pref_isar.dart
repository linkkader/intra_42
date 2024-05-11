// Created by linkkader on 5/12/2022


import 'package:isar/isar.dart';

part 'pref_isar.g.dart';

@Collection()
class DateTimeIsar{
  final Id id = Isar.autoIncrement;
  final DateTime value;
  @Index(unique: true, replace: true)
  final String key;
  const DateTimeIsar(this.key, this.value);
}

@Collection()
class IntIsar{
  final Id id = Isar.autoIncrement;
  final int value;
  @Index(unique: true, replace: true)
  final String key;
  const IntIsar(this.key, this.value);
}

@Collection()
class StringIsar{
  final Id id = Isar.autoIncrement;
  final String value;
  @Index(unique: true, replace: true)
  final String key;
  const StringIsar(this.key, this.value);
}

