// Created by linkkader on 6/12/2022

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/data/repositories/notification_repository.dart';
import 'package:intra_42/data/repositories/project_repository.dart';
import 'package:intra_42/main.dart';
import 'package:sprintf/sprintf.dart';
import 'package:workmanager/workmanager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


void _callBackDispatcher() async{
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case "notification":{
        try{
          await notificationExecution(null);
        }catch(_){}
      }
      break;
    }
    return Future.value(true);
  });
}

/**
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

 */


Future notificationExecution(void data) async {
  await LocaleStorage().init();
  Client().initApi();
  await NotificationRepository().notifications();
  await NotificationManager.showNotification();

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

  static start() {
    var androidSettings = const AndroidInitializationSettings("waifu");
    final initializationSettingsIOS =
    DarwinInitializationSettings(
      onDidReceiveLocalNotification: (id, title, body, payload) {

      },);
    var notificationPlugin = FlutterLocalNotificationsPlugin();
    var initSettings = InitializationSettings(android: androidSettings, iOS: initializationSettingsIOS);
    notificationPlugin.initialize(initSettings);
    Workmanager().initialize(
        _callBackDispatcher,
        isInDebugMode: true
    );
    Workmanager().registerPeriodicTask(
      "notification", "notification",
      frequency: const Duration(minutes: 16),
    );
  }


  static Future showNotification() async {
    var androidDetail = const AndroidNotificationDetails("Notification",
        "Notification",priority: Priority.max,playSound: true,enableVibration: true,indeterminate: true,
        importance: Importance.max,
        fullScreenIntent: true,);
    var iOSDetail = const DarwinNotificationDetails();
    var channelSpecific = NotificationDetails(android: androidDetail, iOS: iOSDetail);
    final notificationPlugin = FlutterLocalNotificationsPlugin();
    var allNotifications = LocaleStorage.getAllNotification();
    for (var element in allNotifications) {
      App.log.i(element.type);
      switch(element.type){
          case NotificationType.corrector: _correctorNotification(element, notificationPlugin, channelSpecific);break;
          case NotificationType.corrected: _correctEdNotification(element, notificationPlugin, channelSpecific);break;
          // case NotificationType.nullType:break;
          default: await _defaultNotification(element, notificationPlugin, channelSpecific); break;
        }
    }
  }

  static Future<void> _correctorNotification(NotificationIsar notificationIsar, FlutterLocalNotificationsPlugin plugin, NotificationDetails details) async {
    var now = DateTime.now();
    var scale = LocaleStorage.getScaleTeam(notificationIsar.scaleTeamId!)!;
    if (scale.beginAt!.isBefore(now)) {
      if (scale.beginAt!.subtract(const Duration(minutes: 15)).isBefore(now)) {
        var projectUser = await ProjectRepository().projectUserById(scale.team!.users!.first.id!, scale.team!.users!.first.projectsUserId!);
        await plugin.show(notificationIsar.scaleTeamId!, App.s.evaluation, sprintf(App.s.evaluation_phrase, [projectUser!.project!.name, scale.beginAt!.toIso8601String()]), details);
      }else{
        //todo : need add more details
        var projectUser = await ProjectRepository().projectUserById(scale.team!.users!.first.id!, scale.team!.users!.first.projectsUserId!);
        await plugin.show(notificationIsar.scaleTeamId!, App.s.evaluation, sprintf(App.s.evaluation_phrase2, [scale.corrector!.login, projectUser!.project!.name, scale.beginAt!.toIso8601String()]), details);
      }
    }
  }

  static Future<void> _defaultNotification(NotificationIsar notificationIsar, FlutterLocalNotificationsPlugin plugin, NotificationDetails details) async {
    if (notificationIsar.notifData == null || notificationIsar.id == null) return;
    await plugin.show(notificationIsar.id!, notificationIsar.notifData!.title, notificationIsar.notifData!.text , details);
    await LocaleStorage.setNotification(notificationIsar.copyWith(read: true));

  }

  static Future<void> _correctEdNotification(NotificationIsar notificationIsar, FlutterLocalNotificationsPlugin plugin, NotificationDetails details) async {
    var now = DateTime.now();
    var scale = LocaleStorage.getScaleTeam(notificationIsar.scaleTeamId!)!;
    if (scale.beginAt!.isBefore(now)) {
      if (scale.beginAt!.subtract(const Duration(minutes: 15)).isBefore(now)) {
        var projectUser = await ProjectRepository().projectUserById(scale.team!.users!.first.id!, scale.team!.users!.first.projectsUserId!);
        await plugin.show(notificationIsar.scaleTeamId!, App.s.evaluation, sprintf(App.s.correction_phrase, [projectUser!.project!.name, scale.beginAt!.toIso8601String()]), details);
      }else{
        //todo : need add more details
        var projectUser = await ProjectRepository().projectUserById(scale.team!.users!.first.id!, scale.team!.users!.first.projectsUserId!);
        await plugin.show(notificationIsar.scaleTeamId!, App.s.evaluation, sprintf(App.s.correction_phrase2, [scale.corrector!.login, projectUser!.project!.name, scale.beginAt!.toIso8601String()]), details);
      }
    }
  }

  void test() async {
    await compute(notificationExecution, null);
    App.log.i("test finished");
  }

}