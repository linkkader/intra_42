// Created by linkkader on 19/12/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/main.dart';

class WorkMangerSettings extends StatefulWidget {
  const WorkMangerSettings({Key? key}) : super(key: key);

  @override
  State<WorkMangerSettings> createState() => _WorkMangerSettingsState();
}

class _WorkMangerSettingsState extends State<WorkMangerSettings> {

  List<Pair<String, Duration>> lst = [];
  late Duration duration;

  @override
  void initState() {

    lst.add(const Pair("16 minutes Default", Duration(minutes: 16)));
    lst.add(const Pair("30 minutes", Duration(minutes: 30)));
    lst.add(const Pair("1 hour", Duration(hours: 1)));
    lst.add(const Pair("2 hours", Duration(hours: 2)));
    lst.add(const Pair("4 hours", Duration(hours: 3)));
    lst.add(const Pair("6 hours", Duration(hours: 6)));
    lst.add(const Pair("12 hours", Duration(hours: 12)));
    lst.add(const Pair("24 hours", Duration(hours: 24)));
    lst.add(const Pair("1 year", Duration(days: 365)));
    duration = LocaleStorage.getDuration("work_manager") ?? lst.first.second;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text("Notification Sync", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount: lst.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lst[index].first, style: GoogleFonts.ptSans(fontWeight: FontWeight.bold, color: App.colorScheme.secondary)),
            leading: Radio(
              value: lst[index].second,
              groupValue: duration,
              fillColor: MaterialStateProperty.all(App.colorScheme.secondary),
              onChanged: (Duration? value) {
                setState(() {
                  duration = value!;
                  LocaleStorage.setDuration("work_manager", duration);
                });
              },
            ),
            onTap: () {
              setState(() {
                duration = lst[index].second;
                LocaleStorage.setDuration("work_manager", duration);
              });
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Need a restart to apply changes")));
            },
          );
        },
      ),
    );
  }
}
