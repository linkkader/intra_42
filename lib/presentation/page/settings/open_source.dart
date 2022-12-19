// Created by linkkader on 19/12/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../core/utils/pair.dart';

class OpenSources extends StatefulWidget {
  const OpenSources({Key? key}) : super(key: key);

  @override
  State<OpenSources> createState() => _OpenSourcesState();
}

class _OpenSourcesState extends State<OpenSources> {
  List<Pair<String, String>> lst = [];

  @override
  void initState() {
    lst.add(const Pair('flutter_launcher_icons', ''));
    lst.add(const Pair('loading_animation_widget', ''));
    lst.add(const Pair('flutter_brotli', ''));
    lst.add(const Pair('flutter_local_notifications', ''));
    lst.add(const Pair('workmanager', ''));
    lst.add(const Pair('url_launcher', ''));
    lst.add(const Pair('image', ''));
    lst.add(const Pair('web_socket_channel', ''));
    lst.add(const Pair('html', ''));
    lst.add(const Pair('touchable', ''));
    lst.add(const Pair('flutter_inappwebview', ''));
    lst.add(const Pair('path_provider', ''));
    lst.add(const Pair('connectivity_plus', ''));
    lst.add(const Pair('google_fonts', ''));
    lst.add(const Pair('intl', ''));
    lst.add(const Pair('extended_image', ''));
    lst.add(const Pair('flutter_svg', ''));
    lst.add(const Pair('logger', ''));
    lst.add(const Pair('dio', ''));
    lst.add(const Pair('retrofit', ''));
    lst.add(const Pair('isar', ''));
    lst.add(const Pair('isar_flutter_libs', ''));
    lst.add(const Pair('shared_preferences', ''));
    lst.add(const Pair('flutter_riverpod', ''));
    lst.add(const Pair('sprintf', ''));
    lst.add(const Pair('timeago', ''));
    lst.add(const Pair('syncfusion_flutter_calendar', ''));
    lst.add(const Pair('cupertino_icons', ''));
    lst.add(const Pair('json_annotation', ''));
    lst.add(const Pair('freezed', ''));
    lst.add(const Pair('freezed_annotation', ''));
    lst.add(const Pair('retrofit_generator', ''));
    lst.add(const Pair('build_runner', ''));
    lst.add(const Pair('isar_generator', ''));
    lst.add(const Pair('json_serializable', ''));
    lst.add(const Pair('flutter_lints', ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Open Sources Licenses",
          style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context, index) {
          return TextButton(
              onPressed: () {
                if (lst[index].second.isNotEmpty) {
                  launchUrlString(lst[index].second, mode: LaunchMode.externalApplication);
                }else{
                  launchUrlString('https://pub.dev/packages/${lst[index].first}', mode: LaunchMode.externalApplication);
                }
              },
              child: Row(
                children: [
                  Text(lst[index].first, style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: App.colorScheme.secondary), textAlign: TextAlign.start,)
                ],
              )
          );
        }),
    );
  }
}
