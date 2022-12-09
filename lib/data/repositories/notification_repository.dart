// Created by linkkader on 8/12/2022

import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models/notif_data.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/data/repositories/scale_repository.dart';
import '../../domain/api_interface/notification.dart';
import '../api/api.dart';

class NotificationRepository extends NotificationInterface{
  bool _isInit = false;
  late final Api _api;
  static final NotificationRepository _instance = NotificationRepository._();
  NotificationRepository._();
  factory NotificationRepository() {
    return _instance;
  }


  void init(Api api) {
    assert(!_isInit, 'NotificationRepository is already initialized');
    _isInit = true;
    _api = api;
  }

  @override
  Future<bool> allRead() {
    assert(_isInit, 'NotificationRepository is not initialized');
    return _api.readAll();
  }

  @override
  Future<List<NotificationIsar>> notifications() async{
    assert(_isInit, 'NotificationRepository is not initialized');
    var data = await _api.allNotif();
    for(var value in data["read"]) {
      var notif = NotifData.fromJson(value);
      var notifIsar = NotificationIsar(notifData: NotifDataIsar.fromFreezed(notif), id: notif.id, read: true);
      await LocaleStorage.setNotification(notifIsar);
    }
    for(var value in data["unread"]) {
      var notif = NotifData.fromJson(value);
      var notifIsar = NotificationIsar(notifData: NotifDataIsar.fromFreezed(notif), id: notif.id, read: true);
      await LocaleStorage.setNotification(notifIsar);
    }
    var correctors = await ScaleRepository().scalesAsCorrector();
    for (var value in correctors) {
      var notification = NotificationIsar(scaleTeamId: value.id, type: NotificationType.corrector);
      await LocaleStorage.setNotification(notification);
    }
    var corrected = await ScaleRepository().scalesAsCorrected();
    for (var value in corrected) {
      var notification = NotificationIsar(scaleTeamId: value.id, type: NotificationType.corrected);
      await LocaleStorage.setNotification(notification);
    }

    return LocaleStorage.getAllNotification();
  }
}