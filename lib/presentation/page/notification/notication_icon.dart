// Created by linkkader on 6/12/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/extensions/widget_ext.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/notification/notification_page.dart';

class NotificationIcon extends ConsumerStatefulWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  ConsumerState<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends ConsumerState<NotificationIcon> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Icon(Icons.notifications, color: App.colorScheme.secondary),
      onPressed: () {
        const NotificationPage().navigate(context : context);
        },
    );
  }
}
