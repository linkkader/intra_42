
import 'package:isar/isar.dart';

@collection
class User2Isar {
  final String name;
  final String login;
  final String img;
  final DateTime bhDate;
  final String campusName;

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

