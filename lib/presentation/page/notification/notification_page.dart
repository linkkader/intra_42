// Created by linkkader on 6/12/2022

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/date_time_ext.dart';
import 'package:intra_42/data/locale_storage/storage_stream.dart';
import 'package:intra_42/data/models/scale_team.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/main.dart';
import 'package:sprintf/sprintf.dart';

import '../../../data/locale_storage/locale_storage.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {

  late StreamSubscription subscription;
  StateProvider<List<NotificationIsar>> lstProvider = StateProvider((ref) => LocaleStorage().getAllNotifications());

  @override
  void initState() {
    for(var i in ref.read(lstProvider)){
      App.log.d("NotificationPage initState ${i.id}");
    }
    subscription = StorageStream().allNotifications().listen((event) {
      ref.read(lstProvider.notifier).state = event;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lst = ref.watch(lstProvider);
    return Scaffold(
      backgroundColor: App.colorScheme.background,
      appBar: AppBar(
        title: Text(App.s.notification, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
        backgroundColor: App.colorScheme.background,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context, index) {
          index = lst.length - 1 - index;
          if (lst[index].notifData == null && lst[index].scaleTeamId == null) return const SizedBox.shrink();
          return _Item(lst[index]);
        },),
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}

class _Item extends StatefulWidget {
  final NotificationIsar notification;
  const _Item(this.notification, {Key? key}) : super(key: key);

  @override
  State<_Item> createState() => _ItemState();
}

//todo: add check null value and default value
class _ItemState extends State<_Item> {
  late final ScaleTeam? scaleTeam;

  @override
  void initState() {
    if (widget.notification.scaleTeamId != null){
      scaleTeam = LocaleStorage.getScaleTeam(widget.notification.scaleTeamId!);
    }
    super.initState();
  }

  String _text(NotificationIsar notification){
    var scale = scaleTeam!;
    var projectUser = LocaleStorage.getProjectsUser(scale.team!.users!.first.projectsUserId!);
    if (notification.type != NotificationType.corrector){
      return sprintf(App.s.evaluation_phrase, [projectUser!.project!.name, scale.beginAt!.toIso8601String()]);
    }
    else{
      return sprintf(App.s.correction_phrase2, [scale.corrector!.login, projectUser!.project!.name, scale.beginAt!.toIso8601String()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.notification.type == NotificationType.corrector || widget.notification.type == NotificationType.corrected){
      return Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(App.s.evaluation, style: GoogleFonts.ptSans(color: App.colorScheme.primary, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  Text(scaleTeam?.createdAt?.timeAgo ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),
                ],
              ),
              Text(_text(widget.notification), style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      );
    }else{
      return Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(widget.notification.notifData?.title ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.primary, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  Text(widget.notification.notifData?.createdAt?.timeAgo ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),
                ],
              ),
              Text(widget.notification.notifData?.text ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      );
    }
  }
}

