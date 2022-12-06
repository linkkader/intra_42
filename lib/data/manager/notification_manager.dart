// Created by linkkader on 6/12/2022

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:intra_42/core/extensions/int_ext.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/api/web_socket/web_manager.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/main.dart';
import 'package:workmanager/workmanager.dart';

void _callBackDispatcher() async{
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case "notification":{
        await _notificationExecution(null);
      }
      break;
    }
    return Future.value(true);
  });
}

Future _notificationExecution(void data) async {
  var completer = Completer();
  await NotificationManager.notificationInit();
  var me = LocaleStorage().getMe;
  if (me != null) {
    var d = {"command":"subscribe","identifier":"{\"channel\":\"LocationChannel\",\"user_id\":${me.id}}"};
    // WebSocketManager().addListener(
    //     type: "LocationChannel",
    //     data: json.encode(d),
    //     listener: (message) async {
    //       LocaleStorage.setNotification(NotificationIsar(data: message.toString()));
    //       print(message);
    //     }
    // );

    d = {"command":"subscribe","identifier":"{\"channel\":\"NotificationChannel\",\"user_id\":${me.id}}"};
    WebSocketManager().addListener(
        type: "NotificationChannel",
        data: json.encode(d),
        listener: (message) async {
          LocaleStorage.setNotification(NotificationIsar(data: message.toString()));
          print(message);
        }
    );

    d = {"command":"subscribe","identifier":"{\"channel\":\"FlashChannel\",\"user_id\":${me.id}}"};
    WebSocketManager().addListener(
        type: "FlashChannel",
        data: json.encode(d),
        listener: (message) async {
          LocaleStorage.setNotification(NotificationIsar(data: message.toString()));
          print(message);
        }
    );
  }
  return completer.future;
}

class NotificationManager {
  static final NotificationManager _instance = NotificationManager._();
  NotificationManager._();

  factory NotificationManager() {
    return _instance;
  }

  static Future notificationInit() async {
    await LocaleStorage().init();
    Client().initApi();
  }

  void start() {
    Workmanager().initialize(
        _callBackDispatcher,
        isInDebugMode: true
    );
    Workmanager().registerPeriodicTask(
      "notification", "notification",
      frequency: const Duration(minutes: 30),
    );
  }


  void test() async {
    await compute(_notificationExecution, null);
    App.log.i("test finished");
  }

}