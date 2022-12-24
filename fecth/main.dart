
import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:dart_brotli/dart_brotli.dart';

import '../convert_freeze_to_izar/ext/string.dart';
import 'core/params/constants.dart';
import 'data/api/client.dart';
import 'data/locale_storage/locale_storage.dart';
import 'data/manager/black_hole_manager.dart';
import 'data/models/user.dart';
import 'data/models/user_2.dart';
import 'data/models_izar/pref_isar.dart';
import 'data/models_izar/user_isar.dart';
import 'data/repositories/user_repository.dart';



void main() async {


  var cookie = "";

  var read = stdin.readLineSync()!;
  currentApiKey = int.tryParse(read) ?? 0;
  updateCurrent();

  var code = "1";

  await LocaleStorage().init();

  Client().initApi(cookie);
  if (read.toLowerCase() == "blackhole")
  {
    var data = await LocaleStorage().img("cookie");
    if(data == null)
    {
      print("cookie: $cookie");
      cookie = stdin.readLineSync()!;
      Client().initApi(cookie);
      LocaleStorage().saveImg("cookie", utf8.encode(cookie));
    }
    else
    {
      cookie = utf8.decode(data.data);
      Client().initApi(cookie);
    }
    var completer = Completer();
    LocaleStorage().saveImg("cookie", utf8.encode(cookie));

    BlackHoleManager().fetchAllBlackHole();
    return completer.future;
  }

  if (read.toLowerCase() == "cookie")
  {
    cookie = stdin.readLineSync()!;
    Client().initApi(cookie);
    LocaleStorage().saveImg("cookie", utf8.encode(cookie));
    return;
  }
  if (read.toLowerCase() == "all")
  {
    var all = LocaleStorage().allUsers();
    print(all.length);
    return;
  }
  if (read.toLowerCase() == "json")
  {
    var all = LocaleStorage().allUsers();
    var now = DateTime.now();
    List<User2> users = [];
    var i = 0;
    for (var value in all) {
      if (value.login?.contains("3b3-") == true) continue;
      var blackhole =  LocaleStorage().blackHoleIsar(value.id!);
      if (blackhole != null && value.displayname != null && value.login != null && value.image?.versions?.small != null && value.campusName != null)
      {
        if (blackhole.bhDate == null && blackhole.isAlumni == true){
          users.add(User2(name: value.displayname!, login: value.login!, img: value.image!.versions!.small!, bhDate: now.add(const Duration(days: 300)), campusName: value.campusName!));
          i++;
          print(i);
        }
        else if (blackhole.bhDate != null){
          users.add(User2(name: value.displayname!, login: value.login!, img: value.image!.versions!.small!, bhDate: blackhole.bhDate!, campusName: value.campusName!));
        }
        // users.add(User(blackHole: blackhole!.toFreezed(), firstName: value.firstName, lastName: value.lastName, login: value.login, id: value.id, updatedAt: value.updatedAt, image: Image(versions: Versions(medium: value.image?.versions?.medium)), campusName: value.campusName,));
      }
    }
    Map<String, int> campusName = {};
    for (var element in users) {
      campusName[element.campusName] ??= campusName.length;
    }
    print(campusName);
    var data = {"update" : now.toIso8601String()};
    var file2 = File("last_update.json");
    file2.writeAsStringSync(jsonEncode(data));
    var file = File("users.json");
    file.writeAsStringSync(jsonEncode(users));
    var file3 = File("users.json.br");
    await Brotli().init();
    var compressed = await Brotli().compress(jsonEncode(users));
    // for (var element in users) {
    //   data2.add({"0" : element.name, "1" : element.login, "2" : element.img.substringAfter("https://cdn.intra.42.fr/users/").substringBefore("/"), "3" : element.bhDate.toIso8601String(), "4" : campusName[element.campusName]});
    // }

    // file3.writeAsStringSync(jsonEncode({"campus" : campusName, "users" : data2}));
    file3.writeAsBytesSync(compressed);
    return;
  }
  if (read.toLowerCase() == "clear")
  {
    print("clear");
    print(LocaleStorage.isar.intIsars.countSync());
    await LocaleStorage.isar.writeTxn(() async {
      await LocaleStorage.isar.dateTimeIsars.clear();
      await LocaleStorage.isar.intIsars.clear();
    });
    return;
  }
  if (read.toLowerCase() == "clearuser")
  {
    print("clear");
    print(LocaleStorage.isar.intIsars.countSync());
    await LocaleStorage.isar.writeTxn(() async {
      await LocaleStorage.isar.userIsars.clear();
    });
    return;
  }
  if (read.toLowerCase() == "campus")
  {
    print("campus");
    print(LocaleStorage.isar.campusIsarCollections.countSync());
    UserRepository().allCampus();
    var completer = Completer();
    await Completer().future;
    return;
  }
  if (read.toLowerCase() == "refresh")
  {
    code = stdin.readLineSync()!;
    currentApiKey = int.tryParse(stdin.readLineSync()!) ?? 0;
    updateCurrent();
    Client().initApi(cookie);
    var a = await UserRepository().refreshToken(code, force: true);

    return;
  }
  var a = await UserRepository().refreshToken(code);

  print(a);

  var completer = Completer();
  BlackHoleManager().fetchCampusAllUser(onFinish: () {
    // completer.complete();
  },);
  var all = LocaleStorage().allUsers();
  await completer.future;
}