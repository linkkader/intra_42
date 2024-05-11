
import 'package:isar/isar.dart';

import '../models/user_2.dart';

part 'user2_isar.g.dart';

@collection
class User2Isar {
  final Id id = Isar.autoIncrement;
  final String? name;
  @Index(replace: true, unique: true)
  final String? login;
  final String? img;
  final DateTime? bhDate;
  @Index()
  final String? campusName;

  const User2Isar({this.name, this.login, this.img, this.bhDate, this.campusName, });

  factory User2Isar.fromFreezed(User2? objet) => User2Isar (
    name: objet?.name,
    login: objet?.login,
    img: objet?.img,
    bhDate: objet?.bhDate,
    campusName: objet?.campusName,
  );

  User2 toFreezed() => User2(
    name: name,
    login: login,
    img: img,
    bhDate: bhDate,
    campusName: campusName,
  );

}

