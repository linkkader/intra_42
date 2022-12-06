// Created by linkkader on 6/12/2022

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/data/locale_storage/storage_stream.dart';
import 'package:intra_42/data/models_izar/notification_isar.dart';
import 'package:intra_42/main.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {

  late StreamSubscription subscription;
  StateProvider<List<NotificationIsar>> lstProvider = StateProvider((ref) => []);

  @override
  void initState() {
    subscription = StorageStream().allNotifications().listen((event) {
      ref.read(lstProvider.notifier).state = event;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App.colorScheme.background,
      body: ListView.builder(
        itemCount: ref.watch(lstProvider).length,
        itemBuilder: (context, index) {
          return Text("${ref.read(lstProvider)[index].id} ${ref.read(lstProvider)[index].data}", style: GoogleFonts.ptSans(fontWeight: FontWeight.bold, fontSize: 16, color: App.colorScheme.secondary),);
        },),
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}
