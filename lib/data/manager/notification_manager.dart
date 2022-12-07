// Created by linkkader on 6/12/2022

import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:intra_42/core/extensions/int_ext.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/api/web_socket/web_manager.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models/scale_team.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/data/repositories/project_repository.dart';
import 'package:intra_42/data/repositories/scale_repository.dart';
import 'package:intra_42/main.dart';
import 'package:sprintf/sprintf.dart';
import 'package:workmanager/workmanager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


void _callBackDispatcher() async{
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case "notification":{
        await notificationExecution(null);
      }
      break;
    }
    return Future.value(true);
  });
}

Future notificationExecution(void data) async {
  var completer = Completer();
  //await NotificationManager.notificationInit();
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
  ScaleRepository().scalesAsCorrector().then((correctors) {
    for (var value in correctors) {
      var notification = NotificationIsar(scaleTeamId: value.id, type: NotificationType.corrector);
      LocaleStorage.setNotification(notification);
    }
  });
  ScaleRepository().scalesAsCorrected().then((corrected) {
    for (var value in corrected) {
      var notification = NotificationIsar(scaleTeamId: value.id, type: NotificationType.corrected);
      LocaleStorage.setNotification(notification);
    }
  });
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


  void showNotification() {
    var androidDetail = const AndroidNotificationDetails("Notification",
        "Notification",priority: Priority.max,playSound: true,enableVibration: true,indeterminate: true,
        importance: Importance.max,
        fullScreenIntent: true,);
    var iOSDetail = const DarwinNotificationDetails();
    var channelSpecific = NotificationDetails(android: androidDetail, iOS: iOSDetail);
    final notificationPlugin = FlutterLocalNotificationsPlugin();
    var allNotifications = LocaleStorage.getAllNotification();
    for (var element in allNotifications) {
      switch(element.type){
        case NotificationType.corrector:
          _correctorNotification(element, notificationPlugin, channelSpecific);
          break;
        case NotificationType.corrected:
          _correctEdNotification(element, notificationPlugin, channelSpecific);
          break;
        case NotificationType.nullType:
          break;
      }
    }
  }

  Future<void> _correctorNotification(NotificationIsar notificationIsar, FlutterLocalNotificationsPlugin plugin, NotificationDetails details) async {
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

  Future<void> _correctEdNotification(NotificationIsar notificationIsar, FlutterLocalNotificationsPlugin plugin, NotificationDetails details) async {
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